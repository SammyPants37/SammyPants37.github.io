extends Node2D

# padding that the nodes use
const padding = 65

## function to initialize where the bridge is going to and from
func initialize(start: String, end: String) -> void:
	var startArray = Vector2((int(start.split(",")[0])+1)*padding, (int(start.split(",")[1])+1)*padding)
	var endArray = Vector2((int(end.split(",")[0])+1)*padding, (int(end.split(",")[1])+1)*padding)
	$Line2D.clear_points()
	$Line2D.add_point(startArray)
	$Line2D.add_point(endArray)
