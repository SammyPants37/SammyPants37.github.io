extends Node

# starting map for the generator to use
var baseMap =  [
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","o","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","░"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","4","░"],
	["░","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","1","0","P"],
	["░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░","░"]]
