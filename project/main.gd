extends Node

# define the external scenes that the script needs to access
var island: PackedScene = preload("res://island.tscn")
@export var displayBridge: PackedScene
@export var bridge: PackedScene

# the master map and user controlled map
var map: Dictionary = {}
var userMap: Dictionary = {}

var width: int = 13
var height: int = 13

# variable that will contain the maps of the selected size
var mapList: Array

# lists of potential and real bridges on the map
var displayBridgeList: Array = []
var bridgeList: Dictionary = {}
var previouslySelected: String = "-1,-1"

## class that contains all the functions relating to map access and manipulation
var maps = Maps.new()

## function that handles node clicks
func on_node_clicked(pos: String):
	# find the nodes that can connect a bridge to the selected node
	var toConnect = maps.findNode(userMap, pos)
	
	# if the same node is being clicked twice in a row, deselect it
	if previouslySelected == pos:
		previouslySelected = "-1,-1"
		toConnect = []
	# if the previously clicked node is not in the list of nodes that can be connected to the currently clicked nodes, change which node is selected
	elif toConnect.find(previouslySelected) == -1:
		previouslySelected = pos
	# otherwise, connect the previously selected node and the currently selected node
	else:
		# determine whether the code needs to add a single, double, or remove a bridge
		var numBridge: int = userMap[pos].userConnectedBridges.get(previouslySelected, 0) + 1
		if numBridge == 3: numBridge = 0
		
		# create the coordinate of the bridge. Has the coordinate of the more top-left node 1st and the coordinate of the other node 2nd
		var bridgeCords: String = \
					pos + " " + previouslySelected if \
					(int(pos.split(",")[0]) > int(previouslySelected.split(",")[0])) or \
					(int(pos.split(",")[1]) > int(previouslySelected.split(",")[1])) else \
					previouslySelected + " " + pos
		
		# tell both nodes that the user has connected a bridge to it
		userMap[pos].modifyUserBridge(previouslySelected, numBridge)
		userMap[previouslySelected].modifyUserBridge(pos, numBridge)
		
		# remove, add, or modify the bridge in the bridge list to match its desired state
		if numBridge == 0:
			bridgeList[bridgeCords].queue_free()
			bridgeList.erase(bridgeCords)
		elif numBridge == 1:
			bridgeList[bridgeCords] = bridge.instantiate()
			bridgeList[bridgeCords].initialize(pos, previouslySelected, numBridge)
			add_child(bridgeList[bridgeCords])
		else:
			bridgeList[bridgeCords].initialize(pos, previouslySelected, numBridge)
		
		# get the vector position of the two nodes
		var node1Vect = Vector2((int(pos.split(",")[0])), (int(pos.split(",")[1])))
		var node2Vect = Vector2((int(previouslySelected.split(",")[0])), (int(previouslySelected.split(",")[1])))
		# get the direction the bridge is going in
		var dir = [int(node1Vect.direction_to(node2Vect)[0]), int(node1Vect.direction_to(node2Vect)[1])]
		# get the distance the bridge needs to travel
		var distance = node1Vect.distance_to(node2Vect)
		# place bridges in the direction across the distance
		for i in range(1, distance):
			userMap[maps.cords2(node1Vect, i, dir)] = "bridge " + str(numBridge) + "," + str(dir) if numBridge != 0 else "none"
		# deselect the node
		previouslySelected = "-1,-1"
		toConnect = []
	
	# remove all current display bridges (the green highlighting)
	for item in displayBridgeList:
		item.queue_free()
	displayBridgeList = []
	# add the new display bridges (if any)
	for node in toConnect:
		var display = displayBridge.instantiate()
		display.initialize(pos, node)
		displayBridgeList.append(display)
		add_child(display)

## open the 7x7 map selection screen
func _on_7x7_pressed() -> void:
	width = 7
	height = 7
	mapList = maps.maps_7x7
	$"level-select/selectors/Label".text = "7x7"
	openLevelSelect()

## open the 9x9 map selection screen
func _on_9x9_pressed() -> void:
	width = 9
	height = 9
	mapList = maps.maps_9x9
	$"level-select/selectors/Label".text = "9x9"
	openLevelSelect()

## open the 11x11 map selection screen
func _on_11x11_pressed() -> void:
	width = 11
	height = 11
	mapList = maps.maps_11x11
	$"level-select/selectors/Label".text = "11x11"
	openLevelSelect()

## open the 13x13 map selection screen
func _on_13x13_pressed() -> void:
	width = 13
	height = 13
	mapList = maps.maps_13x13
	$"level-select/selectors/Label".text = "13x13"
	openLevelSelect()

## funciton to open the level select screen
func openLevelSelect() -> void:
	$"start-menu".hide()
	$"ingame-menu".hide()
	$"level-select".show()

## function to handle the back button being pressed"res://back.png"
func _on_level_back_pressed() -> void:
	$"start-menu".show()
	$"ingame-menu".hide()
	$"level-select".hide()

## function to handle the start button being pressed
##
## the physical button is hidden in the final version but the function of start is still used
func _on_start_pressed() -> void:
	# change what menu is being shown
	$"start-menu".hide()
	$"ingame-menu".show()
	$"level-select".hide()
	
	# desktop only: change the window size to be 80% of the screen size
	var startingSize = min(DisplayServer.screen_get_size().x, DisplayServer.screen_get_size().y)*0.8
	DisplayServer.window_set_size(Vector2i(startingSize, startingSize))
	
	# set the scale factor to show the entire map in the given window size
	var screenWidth = 400
	var screenHeight = 400 
	var idealWidth: float = (width+1)*65
	var idealHeight: float = (height+1)*65
	var scaleFactor: float = min(screenHeight/idealHeight, screenWidth/idealWidth)
	get_window().content_scale_factor = scaleFactor
	
	# if the real start button is pressed, the map will be empty. Thus generate a new map
	if map.is_empty():
		map = maps.generateMap(750, width, height)
	
	# initialize all the nodes on the map
	for item in map:
		if map[item].contains("node"):
			add_child(map[item])
			map[item].initialize(item)
			# connect the node click handler to the actual node click event
			map[item].clicked.connect(on_node_clicked)
	
	# copy the nodes over to the user-controllable map
	for row in range(width):
		for col in range(height):
			if map[maps.cords(row, col)].contains("node"):
				userMap[maps.cords(row, col)] = map[maps.cords(row, col)]
			else:
				userMap[maps.cords(row, col)] = "none"

## function to handle the back button being pressed
func _on_back_pressed() -> void:
	# back button needs to do the same things as the restart button and more
	_on_restart_pressed()
	
	# remove all nodes
	for x in range(width):
		for y in range(height):
			if userMap[maps.cords(x, y)].contains("node"):
				userMap[maps.cords(x, y)].queue_free()
	userMap.clear()
	map.clear()
	
	# show the main menu
	$"start-menu".show()
	$"ingame-menu".hide()
	$"level-select".hide()

## function to handle the restart button being pressed
##
## restart button clears all bridges and display bridges
func _on_restart_pressed() -> void:
	# remove all the current display bridges
	for item in displayBridgeList:
		item.queue_free()
	displayBridgeList.clear()
	
	# remove all bridges
	for item in bridgeList:
		# get the nodes on each end of the bridge
		var node1 = item.split(" ")[0]
		var node2 = item.split(" ")[1]
		
		# create vector positions of the nodes
		var pos1Vect = Vector2((int(node1.split(",")[0])), (int(node1.split(",")[1])))
		var pos2Vect = Vector2((int(node2.split(",")[0])), (int(node2.split(",")[1])))
		
		# find the direction the bridge is traveling
		var dir = [int(pos1Vect.direction_to(pos2Vect)[0]), int(pos1Vect.direction_to(pos2Vect)[1])]
		# find the distance of the bridge
		var distance = pos1Vect.distance_to(pos2Vect)
		# remove the bridge markers from the user controllable map
		for i in range(1, distance):
			userMap[maps.cords2(pos1Vect, i, dir)] = "none"
		
		# tell the nodes that they are no longer connected
		userMap[node1].modifyUserBridge(node2, 0)
		userMap[node2].modifyUserBridge(node1, 0)
		
		# remove the bridge from memory
		bridgeList[item].queue_free()
	# clear the list of bridges
	bridgeList.clear()


## open level 1 of the selected size
func _on_level_1_pressed() -> void:
	map = mapList[0].call()
	_on_start_pressed()


## open level 2 of the selected size
func _on_level_2_pressed() -> void:
	map = mapList[1].call()
	_on_start_pressed()


## open level 3 of the selected size
func _on_level_3_pressed() -> void:
	map = mapList[2].call()
	_on_start_pressed()


## open level 4 of the selected size
func _on_level_4_pressed() -> void:
	map = mapList[3].call()
	_on_start_pressed()


## open level 5 of the selected size
func _on_level_5_pressed() -> void:
	map = mapList[4].call()
	_on_start_pressed()


## open level 6 of the selected size
func _on_level_6_pressed() -> void:
	map = mapList[5].call()
	_on_start_pressed()
