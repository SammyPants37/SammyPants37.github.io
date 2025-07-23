extends StaticBody2D

class_name Island

# amount of padding to provide between islands
var padding = 65

# island true data
var connectedBridges = []
var numBridges = 0
var gridPos = ""

# island user data
var userConnectedBridges = {}
var numUserBridges = 0

# signal to emit when the node is clicked
signal clicked

## function to initialize the island to the correct positoin
func initialize(pos: String):
	# set the position
	gridPos = pos
	position = Vector2(int(pos.split(",")[0])*padding+padding, int(pos.split(",")[1])*padding+padding)
	
	# set the text to the number of bridges that should be connected to it
	$number.text = str(numBridges)
	$number.add_theme_color_override("font_color", Color.BLACK)
	$number.add_theme_font_size_override("font_size", 30)
	
	# allow the node to be clicked
	input_pickable = true
	
	# node is not complete, so hide the green overlay
	$complete.hide()


## function used in initializeing a premade map where all bridges are already known
func setUp(numberBridges: int, bridges: Array):
	connectedBridges = bridges
	numBridges = numberBridges


## connect annother node to this node with given number of bridges
func connectIsland(cords: String, bridges: int):
	connectedBridges.append(cords)
	numBridges += bridges


## remove another node from the list of connected nodes
func removeIsland(cords: String, removeBridges):
	connectedBridges.erase(cords)
	numBridges -= removeBridges


## change the list of connected bridges
func setConnectedBridges(bridges: Array):
	connectedBridges = bridges


## get the list of connected bridges
func getConnectedBridges() -> Array:
	return connectedBridges


## function to allow for checking if an item in the map is a node
func contains(search: String):
	return search.contains("node") or search.contains("island")


## set the number of bridges that should be connected
func setNumBridges(bridges: int):
	numBridges = bridges


## get the number of bridges that should be connected
func getNumBridges() -> int:
	return numBridges


## change a connection (add, remove, or modify) to another bridge specified by the user
func modifyUserBridge(cords: String, bridges: int):
	userConnectedBridges[cords] = bridges
	numUserBridges = 0
	for item in userConnectedBridges:
		numUserBridges += userConnectedBridges[item]
	if numUserBridges == numBridges:
		$complete.show()
	else:
		$complete.hide()

## function to emit the clicked event when the node is clicked
func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_type() and event.is_pressed():
		clicked.emit(gridPos)
		
