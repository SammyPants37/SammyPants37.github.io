extends Node2D

# padding that the nodes use
const padding = 65
# distance between the two lines of a double bridge
const doubleDist = 5

## function to initialize where the bridge is going to and from
func initialize(start: String, end: String, numBridges: int) -> void:
	var startPos = Vector2((int(start.split(",")[0])+1)*padding, (int(start.split(",")[1])+1)*padding)
	var endPos = Vector2((int(end.split(",")[0])+1)*padding, (int(end.split(",")[1])+1)*padding)
	$Line2D.clear_points()
	# add points to draw the single bridge line from the start to the end
	if numBridges == 1:
		$Line2D.add_point(startPos)
		$Line2D.add_point(endPos)
	# draw two lines to make a double bridge
	else:
		# bridge is going horizontal
		if startPos.direction_to(endPos).x != 0:
			$Line2D.add_point(Vector2(startPos.x, startPos.y+doubleDist))
			$Line2D.add_point(Vector2(endPos.x, endPos.y+doubleDist))
			
			$Line2D.add_point(Vector2(endPos.x, endPos.y-doubleDist))
			$Line2D.add_point(Vector2(startPos.x, startPos.y-doubleDist))
		# bridge is going vertical
		else:
			$Line2D.add_point(Vector2(startPos.x+doubleDist, startPos.y))
			$Line2D.add_point(Vector2(endPos.x+doubleDist, endPos.y))
			
			$Line2D.add_point(Vector2(endPos.x-doubleDist, endPos.y))
			$Line2D.add_point(Vector2(startPos.x-doubleDist, startPos.y))
