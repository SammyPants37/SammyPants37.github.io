extends Node
## class that handles all things to do with the map


class_name Maps

# island scene to be used
var island: PackedScene = preload("res://island.tscn")

# the following are premade maps to be selected in the level select screen
# only one has been included in the print out to save on paper

func map7x7_1() -> Dictionary:
	var map = {
				  "0,0" : island.instantiate(),
				  "0,1" : "bridge 2",
				  "0,2" : "bridge 2",
				  "0,3" : "bridge 2",
				  "0,4" : island.instantiate(),
				  "0,5" : "bridge 1",
				  "0,6" : island.instantiate(),
				  "1,0" : island.instantiate(),
				  "1,1" : "bridge 1",
				  "1,2" : "bridge 1",
				  "1,3" : island.instantiate(),
				  "1,4" : "bridge 2",
				  "1,5" : "none",
				  "1,6" : "bridge 2",
				  "2,0" : "bridge 1",
				  "2,1" : "none",
				  "2,2" : "none",
				  "2,3" : "bridge 2",
				  "2,4" : "bridge 2",
				  "2,5" : "none",
				  "2,6" : "bridge 2",
				  "3,0" : "bridge 1",
				  "3,1" : island.instantiate(),
				  "3,2" : "bridge 1",
				  "3,3" : island.instantiate(),
				  "3,4" : "bridge 2",
				  "3,5" : "none",
				  "3,6" : "bridge 2",
				  "4,0" : island.instantiate(),
				  "4,1" : "bridge 2",
				  "4,2" : "bridge 2",
				  "4,3" : "bridge 2",
				  "4,4" : island.instantiate(),
				  "4,5" : "bridge 2",
				  "4,6" : island.instantiate(),
				  "5,0" : "bridge 1",
				  "5,1" : "none",
				  "5,2" : "none",
				  "5,3" : "none",
				  "5,4" : "bridge 2",
				  "5,5" : "none",
				  "5,6" : "bridge 1",
				  "6,0" : island.instantiate(),
				  "6,1" : "bridge 2",
				  "6,2" : "bridge 2",
				  "6,3" : island.instantiate(),
				  "6,4" : island.instantiate(),
				  "6,5" : "bridge 1",
				  "6,6" : island.instantiate()}
	map['0,0'].setUp(2, ["0,4"])
	map['0,4'].setUp( 5, ["4,4", "0,6", "0,0"])
	map['0,6'].setUp(3, ["0,4", "4,6"])
	map['1,0'].setUp(2, ["4,0", "1,3"])
	map['1,3'].setUp(3, ["1,0", "3,3"])
	map['3,1'].setUp(1, ["3,3"])
	map['3,3'].setUp(3, ["1,3", "3,1"])
	map['4,0'].setUp(4, ["4,4", "1,0", "6,0"])
	map['4,4'].setUp(8, ["4,0", "0,4", "4,6", "6,4"])
	map['4,6'].setUp(5, ["4,4", "0,6", "6,6"])
	map['6,0'].setUp(3, ["4,0", "6,3"])
	map['6,3'].setUp(2, ["6,0"])
	map['6,4'].setUp(3, ["4,4", "6,6"])
	map['6,6'].setUp(2, ["6,4", "4,6"])
	return map

## function to translate number coordinates into a string to be used in the map dictionary
##
## takes a two integer coordinates and an offset from those cords
func cords(x: int, y: int, offset: int = 0, offsetdir: Array = [0, 0]) -> String:
	return "{x},{y}".format({"x":int(x) + int(offset)*int(offsetdir[0]), "y":int(y) + int(offset)*int(offsetdir[1])})

## function to translate number coordinates into a string to be used in the map dictionary
##
## takes a vector and an offset from that vector
func cords2(pos: Vector2i, offset: int = 0, offsetdir: Array = [0, 0]) -> String:
	return "{x},{y}".format({"x":int(pos.x) + int(offset)*int(offsetdir[0]), "y":int(pos.y)+int(offset)*int(offsetdir[1])})

## function to follow a bridge to the node at the end
##
## takes the map to use, the position to start at, and the direction to go in
func followBridge(map: Dictionary, posStart: String, dir: Array) -> String:
	var isNode = false
	var dist = 1
	var posList = posStart.split(",")
	# all bridges should have a node at the end so there is no need to check for the edge of the map
	while not isNode:
		if map[cords(int(posList[0]), int(posList[1]), dist, dir)].contains("node"):
			isNode = true
			return cords(int(posList[0]), int(posList[1]), dist, dir)
		else:
			dist += 1
	return ""

## function to find islands that can be connected by bridges
##
## takes the map, and the position to check from
func findNode(map: Dictionary, posStart: String) -> Array:
	# find the map size
	var width = sqrt(len(map))
	var height = sqrt(len(map))

	# get the number coorindates from the cord string
	var xStart = int(posStart.split(",")[0])
	var yStart = int(posStart.split(",")[1])

	# list of islands that  can connect
	var islands = []
	var dirs = [[-1, 0], [1, 0], [0, -1], [0, 1]]

	# iterate in each of the 4 directions
	for dir in dirs:
		var fineBridge = false
		# check that the position is not hitting the side of the map
		if xStart+dir[0] < 0 or xStart+dir[0] > width-1:
			pass
			# check that the position is not hitting the top of the map
		elif yStart+dir[1] < 0 or yStart+dir[1] > height-1:
			pass
		# if there is a bridge in the direction being checked, ignore it
		elif map[cords(xStart, yStart, 1, dir)].contains("bridge") and \
		(map[cords(xStart, yStart, 1, dir)].contains(str(dir)) or \
		map[cords(xStart, yStart, 1, dir)].contains("[" + str(dir[0]*-1) + ", " + str(dir[1]*-1) + "]")):
			fineBridge = true
		# check each position towards the edge of the map
		for dist in range(1, width):
			# check that the position is not hitting the side of the map
			if xStart+dir[0]*dist < 0 or xStart+dir[0]*dist > width-1:
				break
				# check that the position is not hitting the top of the map
			elif yStart+dir[1]*dist < 0 or yStart+dir[1]*dist > height-1:
				break
			# cannot connect to a node that is directly next to the origin node
			elif dist == 1 and map[cords(xStart, yStart, dist, dir)].contains("node"):
				break
			# cannot pass a bridge through another bridge
			if map[cords(xStart, yStart, dist, dir)].contains("bridge") and not fineBridge:
				break
				# if there is a node, and all other checks passed, that node can be connected to
			elif map[cords(xStart, yStart, dist, dir)].contains("node"):
				islands.append(cords(xStart, yStart, dist, dir))
				break
	return islands


## generate a map given a width, height, and number of points
##
## algorithim taken from
## https://liacs.leidenuniv.nl/assets/Bachelorscripties/2009-11TimoMorsink.pdf
func generateMap(numPoints, width, height):
	var map: Dictionary = {}

	# set up the map dictionary
	for row in range(width):
		for col in range(height):
			map[cords(row, col)] = "none"

	# choose a random position to make a node
	var startPos = cords(randi_range(0, width-1), randi_range(0, height-1))
	map[startPos] = island.instantiate()
	var numIslands = 1

	var attempts = 0
	# loop untill the desired number of points have been placed or it has tried more than 15 times for each point
	while numIslands < numPoints and attempts < numPoints*15:
		attempts += 1
		var node = Vector2i()
		var nodeIsValid = false
		var dir = ""

		# find a node to extend a bridge from
		while not nodeIsValid:
			# choose a random position
			node = Vector2i(randi_range(0, width-1), randi_range(0, height-1))
			# if the random position is a node, check to see if it has a valid direction to send a new bridge from
			if map[cords(node[0],node[1])].contains("node"):
				# remove directions that aren't valid
				var directions = ["u", "d", "r", "l"]
				if node[1] < 2 or map[cords(node[0], node[1]-1)].contains("bridge") or map[cords(node[0], node[1]-1)].contains("node"):
					directions.erase("u")
				if (node[1] > height-3) or map[cords(node[0], node[1]+1)].contains("bridge") or map[cords(node[0], node[1]+1)].contains("node"):
					directions.erase("d")
				if node[0] < 2 or map[cords(node[0]-1, node[1])].contains("bridge") or map[cords(node[0]-1, node[1])].contains("node"):
					directions.erase("l")
				if (node[0] > width-3) or map[cords(node[0]+1, node[1])].contains("bridge") or map[cords(node[0]+1, node[1])].contains("node"):
					directions.erase("r")
				# if there is a valid direction, use this node and a random valid direction to make a new bridge
				if not directions.is_empty():
					dir = directions.pick_random()
					nodeIsValid = true

		# randomly choose whether or not to make a double or single bridge
		var single = randi_range(0, 5) > 2
		var distance = 2
		var continuing = true

		# change the string direction into a useful direction array
		match dir:
			"u":
				dir = [0, -1]
			"d":
				dir = [0, 1]
			"l":
				dir = [-1, 0]
			"r":
				dir = [1, 0]

		# check that the bridge can continue further than 2 units
		continuing = map[cords2(node, distance, dir)].contains("none")

		# while it is still possible to continue make a 50/50 choice on whether or not to continue the bridge
		while continuing:
			match dir:
				[0, -1]: # up
					if node[1]-distance > 0 and map[cords2(node, distance, dir)].contains("none"):
						distance += 1
						continuing = randi_range(0, 100) < 50
					else:
						continuing = false
				[0, 1]: # down
					if node[1]+distance < height-1 and map[cords2(node, distance, dir)].contains("none"):
						distance += 1
						continuing = randi_range(0, 100) < 50
					else:
						continuing = false
				[-1, 0]: # left
					if node[0]-distance > 0 and map[cords2(node, distance, dir)].contains("none"):
						distance += 1
						continuing = randi_range(0, 100) < 50
					else:
						continuing = false
				[1, 0]: # right
					if node[0]+distance < width-1 and map[cords2(node, distance, dir)].contains("none"):
						distance += 1
						continuing = randi_range(0, 100) < 50
					else:
						continuing = false

		# if the end point contains nothing, place a new island
		if map[cords2(node, distance, dir)].contains("none"):
			map[cords2(node, distance, dir)] = island.instantiate()
			numIslands += 1
			# if the end point contains a bridge, replace the end point with an island and connect the island to the ends of the severed bridge
		elif map[cords2(node, distance, dir)].contains("bridge"):
			# if there is a node right next to the end point on the bridge, either back up one or do not place a node
			if map[cords(node[0]+dir[1], node[1]+dir[0], distance, dir)].contains("node") or map[cords(node[0]-dir[1], node[1]-dir[0], distance, dir)].contains("node"):
				if distance == 2:
					distance = 0
				else:
					distance -= 1
					map[cords2(node, distance, dir)] = island.instantiate()
					numIslands += 1
				# if there is not a node right next to the end point on the bridge, place a node and connect it to the ends of the severed bridge
			else:
				map[cords2(node, distance, dir)] = island.instantiate()
				numIslands += 1
				# find the node on either end of the bridge
				var nodeLeft = followBridge(map, cords2(node, distance, dir), [dir[1], dir[0]])
				var nodeRight = followBridge(map, cords2(node, distance, dir), [-dir[1], -dir[0]])
				# remove each end from the other end's connected island list
				map[nodeLeft].removeIsland(nodeRight, 0)
				map[nodeRight].removeIsland(nodeLeft, 0)
				# add each end to the new island
				map[nodeLeft].connectIsland(cords2(node, distance, dir), 0)
				map[nodeRight].connectIsland(cords2(node, distance, dir), 0)
				# connect the new island to each end
				map[cords2(node, distance, dir)].connectIsland(nodeLeft, int(map[cords(node[0]+dir[1], node[1]+dir[0], distance, dir)].split(" ")[1]))
				map[cords2(node, distance, dir)].connectIsland(nodeRight, int(map[cords(node[0]+dir[1], node[1]+dir[0], distance, dir)].split(" ")[1]))

		# if the distance isn't 0, connect the starting point, to the chosen point and add bridges between the 2 on the map
		if distance > 0:
			map[cords(node[0],node[1])].connectIsland(cords2(node, distance, dir), 1 if single else 2)
			map[cords2(node, distance, dir)].connectIsland(cords2(node), 1 if single else 2)
			for point in range(1, distance):
				map[cords2(node, point, dir)] = "bridge" + (" 1" if single else " 2")

	return map

# lists of the functions to be run to get all 6 maps of each size
var maps_7x7: Array = [map7x7_1, map7x7_2, map7x7_3, map7x7_4, map7x7_5, map7x7_6]
var maps_9x9: Array = [map9x9_1, map9x9_2, map9x9_3, map9x9_4, map9x9_5, map9x9_6]
var maps_11x11: Array = [map11x11_1, map11x11_2, map11x11_3, map11x11_4, map11x11_5, map11x11_6]
var maps_13x13: Array = [map13x13_1, map13x13_2, map13x13_3, map13x13_4, map13x13_5, map13x13_6]
