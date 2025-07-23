extends Node
## class that handles all things to do with the map


class_name Maps

# island scene to be used
var island: PackedScene = preload("res://island.tscn")

# the following are premade maps to be selected in the level select screen

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


func map7x7_2() -> Dictionary:
	var map = {
		"0,0" : "none",
		"0,1" : island.instantiate(),
		"0,2" : "bridge 1",
		"0,3" : "bridge 1",
		"0,4" : island.instantiate(),
		"0,5" : "bridge 1",
		"0,6" : island.instantiate(),
		"1,0" : island.instantiate(),
		"1,1" : "bridge 2",
		"1,2" : "bridge 2",
		"1,3" : island.instantiate(),
		"1,4" : "bridge 2",
		"1,5" : "none",
		"1,6" : "bridge 2",
		"2,0" : "bridge 1",
		"2,1" : "none",
		"2,2" : "none",
		"2,3" : "bridge 2",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 2",
		"2,6" : island.instantiate(),
		"3,0" : "bridge 1",
		"3,1" : "none",
		"3,2" : "none",
		"3,3" : "bridge 2",
		"3,4" : "bridge 2",
		"3,5" : "none",
		"3,6" : island.instantiate(),
		"4,0" : island.instantiate(),
		"4,1" : "bridge 1",
		"4,2" : "bridge 1",
		"4,3" : island.instantiate(),
		"4,4" : "bridge 2",
		"4,5" : "none",
		"4,6" : "bridge 1",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "none",
		"5,4" : "bridge 2",
		"5,5" : "none",
		"5,6" : "bridge 1",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 2",
		"6,2" : "bridge 2",
		"6,3" : "bridge 2",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 1",
		"6,6" : island.instantiate()}
	map['0,1'].setUp(1, ["0,4"])
	map['0,4'].setUp(4, ["2,4", "0,1", "0,6"])
	map['0,6'].setUp(3, ["0,4", "2,6"])
	map['1,0'].setUp(3, ["4,0", "1,3"])
	map['1,3'].setUp(4, ["4,3", "1,0"])
	map['2,4'].setUp(6, ["6,4", "2,6", "0,4"])
	map['2,6'].setUp(4, ["2,4", "0,6"])
	map['3,6'].setUp(1, ["6,6"])
	map['4,0'].setUp(4, ["6,0", "4,3", "1,0"])
	map['4,3'].setUp(3, ["4,0", "1,3"])
	map['6,0'].setUp(4, ["4,0", "6,4"])
	map['6,4'].setUp(5, ["6,0", "6,6", "2,4"])
	map['6,6'].setUp(2, ["6,4", "3,6"])
	return map


func map7x7_3() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : island.instantiate(),
		"0,4" : island.instantiate(),
		"0,5" : "bridge 1",
		"0,6" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "bridge 1",
		"1,4" : "bridge 1",
		"1,5" : "none",
		"1,6" : "bridge 1",
		"2,0" : "bridge 1",
		"2,1" : island.instantiate(),
		"2,2" : "bridge 1",
		"2,3" : island.instantiate(),
		"2,4" : "bridge 1",
		"2,5" : "none",
		"2,6" : "bridge 1",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 2",
		"3,2" : "bridge 2",
		"3,3" : "bridge 2",
		"3,4" : island.instantiate(),
		"3,5" : "bridge 1",
		"3,6" : island.instantiate(),
		"4,0" : "bridge 2",
		"4,1" : "none",
		"4,2" : "none",
		"4,3" : "none",
		"4,4" : "bridge 2",
		"4,5" : "none",
		"4,6" : "bridge 2",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "none",
		"5,4" : "bridge 2",
		"5,5" : "none",
		"5,6" : "bridge 2",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 1",
		"6,2" : "bridge 1",
		"6,3" : "bridge 1",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 2",
		"6,6" : island.instantiate()}
	map['0,0'].setUp(3, ["3,0", "0,3"])
	map['0,3'].setUp(3, ["0,0", "2,3"])
	map['0,4'].setUp(2, ["3,4", "0,6"])
	map['0,6'].setUp(2, ["3,6", "0,4"])
	map['2,1'].setUp(1, ["2,3"])
	map['2,3'].setUp(2, ["0,3", "2,1"])
	map['3,0'].setUp(5, ["3,4", "6,0", "0,0"])
	map['3,4'].setUp(6, ["3,0", "6,4", "3,6", "0,4"])
	map['3,6'].setUp(4, ["3,4", "0,6", "6,6"])
	map['6,0'].setUp(3, ["6,4", "3,0"])
	map['6,4'].setUp(5, ["3,4", "6,0", "6,6"])
	map['6,6'].setUp(4, ["3,6", "6,4"])
	return map


func map7x7_4() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 2",
		"0,4" : "bridge 2",
		"0,5" : island.instantiate(),
		"0,6" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "none",
		"1,4" : "none",
		"1,5" : "bridge 2",
		"1,6" : "bridge 2",
		"2,0" : "bridge 2",
		"2,1" : island.instantiate(),
		"2,2" : "bridge 1",
		"2,3" : "bridge 1",
		"2,4" : "bridge 1",
		"2,5" : island.instantiate(),
		"2,6" : "bridge 2",
		"3,0" : "bridge 2",
		"3,1" : "bridge 2",
		"3,2" : island.instantiate(),
		"3,3" : "bridge 1",
		"3,4" : island.instantiate(),
		"3,5" : "bridge 2",
		"3,6" : island.instantiate(),
		"4,0" : island.instantiate(),
		"4,1" : "bridge 2",
		"4,2" : "bridge 1",
		"4,3" : "none",
		"4,4" : "none",
		"4,5" : "bridge 2",
		"4,6" : "bridge 1",
		"5,0" : "bridge 1",
		"5,1" : island.instantiate(),
		"5,2" : island.instantiate(),
		"5,3" : "bridge 2",
		"5,4" : "bridge 2",
		"5,5" : island.instantiate(),
		"5,6" : "bridge 1",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 1",
		"6,2" : "bridge 1",
		"6,3" : "bridge 1",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 2",
		"6,6" : island.instantiate()}
	map['0,0'].setUp(4, ["0,2", "4,0"])
	map['0,2'].setUp(4, ["0,5", "0,0"])
	map['0,5'].setUp(4, ["2,5", "0,2"])
	map['0,6'].setUp(2, ["3,6"])
	map['2,1'].setUp(3, ["2,5", "5,1"])
	map['2,5'].setUp(5, ["2,1", "0,5", "5,5"])
	map['3,2'].setUp(2, ["5,2", "3,4"])
	map['3,4'].setUp(1, ["3,2"])
	map['3,6'].setUp(3, ["6,6", "0,6"])
	map['4,0'].setUp(3, ["0,0", "6,0"])
	map['5,1'].setUp(2, ["2,1"])
	map['5,2'].setUp(3, ["5,5", "3,2"])
	map['5,5'].setUp(4, ["2,5", "5,2"])
	map['6,0'].setUp(2, ["4,0", "6,4"])
	map['6,4'].setUp(3, ["6,0", "6,6"])
	map['6,6'].setUp(3, ["6,4", "3,6"])
	return map


func map7x7_5() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : island.instantiate(),
		"0,4" : "bridge 2",
		"0,5" : "bridge 2",
		"0,6" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "bridge 2",
		"1,4" : "none",
		"1,5" : "none",
		"1,6" : "bridge 1",
		"2,0" : "bridge 1",
		"2,1" : "none",
		"2,2" : "none",
		"2,3" : "bridge 2",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 2",
		"2,6" : island.instantiate(),
		"3,0" : island.instantiate(),
		"3,1" : "bridge 2",
		"3,2" : "bridge 2",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 2",
		"3,5" : island.instantiate(),
		"3,6" : "bridge 2",
		"4,0" : "bridge 2",
		"4,1" : "none",
		"4,2" : "none",
		"4,3" : "bridge 1",
		"4,4" : "none",
		"4,5" : "bridge 2",
		"4,6" : "bridge 2",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "bridge 1",
		"5,4" : "none",
		"5,5" : island.instantiate(),
		"5,6" : "bridge 2",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 1",
		"6,2" : "bridge 1",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 1",
		"6,5" : "bridge 1",
		"6,6" : island.instantiate()}
	map['0,0'].setUp(3, ["0,3", "3,0"])
	map['0,3'].setUp(6, ["0,6", "0,0", "3,3"])
	map['0,6'].setUp(3, ["2,6", "0,3"])
	map['2,4'].setUp(2, ["2,6"])
	map['2,6'].setUp(5, ["6,6", "0,6", "2,4"])
	map['3,0'].setUp(5, ["3,3", "0,0", "6,0"])
	map['3,3'].setUp(7, ["6,3", "3,0", "0,3", "3,5"])
	map['3,5'].setUp(4, ["3,3", "5,5"])
	map['5,5'].setUp(2, ["3,5"])
	map['6,0'].setUp(3, ["6,3", "3,0"])
	map['6,3'].setUp(3, ["6,6", "3,3", "6,0"])
	map['6,6'].setUp(3, ["6,3", "2,6"])
	return map


func map7x7_6() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 1",
		"0,4" : "bridge 1",
		"0,5" : "bridge 1",
		"0,6" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : "none",
		"1,2" : "bridge 2",
		"1,3" : island.instantiate(),
		"1,4" : "bridge 1",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 1",
		"2,0" : "bridge 2",
		"2,1" : "none",
		"2,2" : "bridge 2",
		"2,3" : "bridge 2",
		"2,4" : "none",
		"2,5" : "bridge 1",
		"2,6" : "bridge 1",
		"3,0" : "bridge 2",
		"3,1" : "none",
		"3,2" : "bridge 2",
		"3,3" : island.instantiate(),
		"3,4" : "none",
		"3,5" : "bridge 1",
		"3,6" : island.instantiate(),
		"4,0" : "bridge 2",
		"4,1" : "none",
		"4,2" : island.instantiate(),
		"4,3" : "bridge 1",
		"4,4" : "bridge 1",
		"4,5" : island.instantiate(),
		"4,6" : "bridge 1",
		"5,0" : island.instantiate(),
		"5,1" : "none",
		"5,2" : "bridge 2",
		"5,3" : "none",
		"5,4" : "none",
		"5,5" : "bridge 1",
		"5,6" : "bridge 1",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 2",
		"6,2" : island.instantiate(),
		"6,3" : "bridge 2",
		"6,4" : "bridge 2",
		"6,5" : island.instantiate(),
		"6,6" : island.instantiate(),
		}
	map['0,0'].setUp(4, ["0,2", "5,0"])
	map['0,2'].setUp(5, ["4,2", "0,0", "0,6"])
	map['0,6'].setUp(2, ["0,2", "3,6"])
	map['1,3'].setUp(3, ["1,5", "3,3"])
	map['1,5'].setUp(2, ["4,5", "1,3"])
	map['3,3'].setUp(2, ["1,3"])
	map['3,6'].setUp(2, ["0,6", "6,6"])
	map['4,2'].setUp(5, ["4,5", "0,2", "6,2"])
	map['4,5'].setUp(3, ["1,5", "4,2", "6,5"])
	map['5,0'].setUp(2, ["0,0"])
	map['6,0'].setUp(2, ["6,2"])
	map['6,2'].setUp(6, ["6,5", "4,2", "6,0"])
	map['6,5'].setUp(3, ["4,5", "6,2"])
	map['6,6'].setUp(1, ["3,6"])
	return map


func map9x9_1() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : "bridge 1",
		"0,3" : island.instantiate(),
		"0,4" : "bridge 2",
		"0,5" : "bridge 2",
		"0,6" : island.instantiate(),
		"0,7" : "bridge 1",
		"0,8" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : island.instantiate(),
		"1,2" : "bridge 2",
		"1,3" : island.instantiate(),
		"1,4" : "bridge 2",
		"1,5" : "bridge 2",
		"1,6" : "bridge 2",
		"1,7" : "bridge 2",
		"1,8" : island.instantiate(),
		"2,0" : "bridge 1",
		"2,1" : "bridge 1",
		"2,2" : "none",
		"2,3" : "bridge 1",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 1",
		"2,6" : "bridge 1",
		"2,7" : island.instantiate(),
		"2,8" : "bridge 2",
		"3,0" : "bridge 1",
		"3,1" : island.instantiate(),
		"3,2" : "none",
		"3,3" : "bridge 1",
		"3,4" : "bridge 1",
		"3,5" : "none",
		"3,6" : "none",
		"3,7" : "none",
		"3,8" : "bridge 2",
		"4,0" : island.instantiate(),
		"4,1" : "bridge 1",
		"4,2" : "bridge 1",
		"4,3" : island.instantiate(),
		"4,4" : island.instantiate(),
		"4,5" : "bridge 1",
		"4,6" : "bridge 1",
		"4,7" : "bridge 1",
		"4,8" : island.instantiate(),
		"5,0" : "bridge 1",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "bridge 1",
		"5,4" : "bridge 1",
		"5,5" : island.instantiate(),
		"5,6" : "bridge 2",
		"5,7" : island.instantiate(),
		"5,8" : "bridge 1",
		"6,0" : "bridge 1",
		"6,1" : island.instantiate(),
		"6,2" : "bridge 2",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 1",
		"6,5" : "bridge 2",
		"6,6" : "none",
		"6,7" : "bridge 1",
		"6,8" : "bridge 1",
		"7,0" : island.instantiate(),
		"7,1" : "bridge 1",
		"7,2" : "bridge 1",
		"7,3" : "bridge 1",
		"7,4" : island.instantiate(),
		"7,5" : "bridge 2",
		"7,6" : "none",
		"7,7" : island.instantiate(),
		"7,8" : "bridge 1",
		"8,0" : island.instantiate(),
		"8,1" : "bridge 2",
		"8,2" : island.instantiate(),
		"8,3" : "bridge 1",
		"8,4" : "bridge 1",
		"8,5" : island.instantiate(),
		"8,6" : "bridge 1",
		"8,7" : "bridge 1",
		"8,8" : island.instantiate(),
		}
	map['0,0'].setUp(2, ["4,0", "0,3"])
	map['0,3'].setUp(3, ["0,0", "0,6"])
	map['0,6'].setUp(3, ["0,3", "0,8"])
	map['0,8'].setUp(1, ["0,6"])
	map['1,1'].setUp(3, ["1,3", "3,1"])
	map['1,3'].setUp(5, ["1,8", "1,1", "4,3"])
	map['1,8'].setUp(4, ["4,8", "1,3"])
	map['2,4'].setUp(2, ["4,4", "2,7"])
	map['2,7'].setUp(1, ["2,4"])
	map['3,1'].setUp(1, ["1,1"])
	map['4,0'].setUp(3, ["7,0", "0,0", "4,3"])
	map['4,3'].setUp(3, ["4,0", "1,3", "6,3"])
	map['4,4'].setUp(3, ["7,4", "4,8", "2,4"])
	map['4,8'].setUp(4, ["4,4", "1,8", "8,8"])
	map['5,5'].setUp(4, ["8,5", "5,7"])
	map['5,7'].setUp(3, ["5,5", "7,7"])
	map['6,1'].setUp(2, ["6,3"])
	map['6,3'].setUp(3, ["4,3", "6,1"])
	map['7,0'].setUp(2, ["4,0", "7,4"])
	map['7,4'].setUp(2, ["7,0", "4,4"])
	map['7,7'].setUp(1, ["5,7"])
	map['8,0'].setUp(2, ["8,2"])
	map['8,2'].setUp(3, ["8,5", "8,0"])
	map['8,5'].setUp(4, ["8,8", "5,5", "8,2"])
	map['8,8'].setUp(2, ["4,8", "8,5"])
	return map


func map9x9_2() -> Dictionary:
	var map = {
		"0,0" : "none",
		"0,1" : island.instantiate(),
		"0,2" : "bridge 2",
		"0,3" : "bridge 2",
		"0,4" : island.instantiate(),
		"0,5" : "bridge 1",
		"0,6" : "bridge 1",
		"0,7" : "bridge 1",
		"0,8" : island.instantiate(),
		"1,0" : island.instantiate(),
		"1,1" : "bridge 1",
		"1,2" : "none",
		"1,3" : island.instantiate(),
		"1,4" : "bridge 2",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 1",
		"1,7" : island.instantiate(),
		"1,8" : "bridge 2",
		"2,0" : "bridge 1",
		"2,1" : "bridge 1",
		"2,2" : "none",
		"2,3" : "bridge 2",
		"2,4" : "bridge 2",
		"2,5" : "bridge 2",
		"2,6" : "none",
		"2,7" : "none",
		"2,8" : "bridge 2",
		"3,0" : "bridge 1",
		"3,1" : island.instantiate(),
		"3,2" : "bridge 2",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 2",
		"3,5" : island.instantiate(),
		"3,6" : "bridge 2",
		"3,7" : "bridge 2",
		"3,8" : island.instantiate(),
		"4,0" : "bridge 1",
		"4,1" : "bridge 1",
		"4,2" : "none",
		"4,3" : "bridge 2",
		"4,4" : island.instantiate(),
		"4,5" : "bridge 2",
		"4,6" : "bridge 2",
		"4,7" : island.instantiate(),
		"4,8" : "bridge 2",
		"5,0" : "bridge 1",
		"5,1" : "bridge 1",
		"5,2" : "none",
		"5,3" : "bridge 2",
		"5,4" : "bridge 1",
		"5,5" : "none",
		"5,6" : "none",
		"5,7" : "bridge 2",
		"5,8" : "bridge 2",
		"6,0" : "bridge 1",
		"6,1" : island.instantiate(),
		"6,2" : "bridge 1",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 1",
		"6,5" : "none",
		"6,6" : "none",
		"6,7" : "bridge 2",
		"6,8" : "bridge 2",
		"7,0" : island.instantiate(),
		"7,1" : "bridge 2",
		"7,2" : "bridge 2",
		"7,3" : "bridge 2",
		"7,4" : island.instantiate(),
		"7,5" : "bridge 1",
		"7,6" : "bridge 1",
		"7,7" : island.instantiate(),
		"7,8" : island.instantiate(),
		"8,0" : "none",
		"8,1" : "none",
		"8,2" : "none",
		"8,3" : "none",
		"8,4" : "none",
		"8,5" : "none",
		"8,6" : "none",
		"8,7" : "none",
		"8,8" : "none",
		}
	map['0,1'].setUp(3, ["0,4", "3,1"])
	map['0,4'].setUp(5, ["4,4", "0,1", "0,8"])
	map['0,8'].setUp(3, ["0,4", "3,8"])
	map['1,0'].setUp(1, ["7,0"])
	map['1,3'].setUp(2, ["3,3"])
	map['1,5'].setUp(3, ["3,5", "1,7"])
	map['1,7'].setUp(1, ["1,5"])
	map['3,1'].setUp(4, ["0,1", "3,3", "6,1"])
	map['3,3'].setUp(6, ["3,1", "1,3", "6,3"])
	map['3,5'].setUp(4, ["3,8", "1,5"])
	map['3,8'].setUp(6, ["0,8", "3,5", "7,8"])
	map['4,4'].setUp(5, ["7,4", "0,4", "4,7"])
	map['4,7'].setUp(4, ["4,4", "7,7"])
	map['6,1'].setUp(2, ["6,3", "3,1"])
	map['6,3'].setUp(3, ["3,3", "6,1"])
	map['7,0'].setUp(3, ["7,4", "1,0"])
	map['7,4'].setUp(4, ["4,4", "7,7", "7,0"])
	map['7,7'].setUp(3, ["7,4", "4,7"])
	map['7,8'].setUp(2, ["3,8"])
	return map


func map9x9_3() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : "bridge 1",
		"0,3" : "bridge 1",
		"0,4" : "bridge 1",
		"0,5" : "bridge 1",
		"0,6" : island.instantiate(),
		"0,7" : "bridge 2",
		"0,8" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : island.instantiate(),
		"1,3" : "bridge 1",
		"1,4" : "bridge 1",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 1",
		"1,7" : "none",
		"1,8" : "bridge 1",
		"2,0" : "bridge 1",
		"2,1" : island.instantiate(),
		"2,2" : "bridge 1",
		"2,3" : "none",
		"2,4" : "none",
		"2,5" : "bridge 1",
		"2,6" : "bridge 1",
		"2,7" : "none",
		"2,8" : "bridge 1",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 1",
		"3,2" : "bridge 1",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 1",
		"3,5" : island.instantiate(),
		"3,6" : "bridge 1",
		"3,7" : "none",
		"3,8" : island.instantiate(),
		"4,0" : "bridge 2",
		"4,1" : "bridge 1",
		"4,2" : island.instantiate(),
		"4,3" : "bridge 2",
		"4,4" : "bridge 2",
		"4,5" : "bridge 2",
		"4,6" : island.instantiate(),
		"4,7" : "bridge 1",
		"4,8" : island.instantiate(),
		"5,0" : "bridge 2",
		"5,1" : island.instantiate(),
		"5,2" : "bridge 1",
		"5,3" : "bridge 1",
		"5,4" : "bridge 1",
		"5,5" : island.instantiate(),
		"5,6" : "bridge 1",
		"5,7" : "none",
		"5,8" : "bridge 1",
		"6,0" : "bridge 2",
		"6,1" : "bridge 2",
		"6,2" : island.instantiate(),
		"6,3" : "bridge 1",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 2",
		"6,6" : "bridge 1",
		"6,7" : "none",
		"6,8" : "bridge 1",
		"7,0" : "bridge 2",
		"7,1" : island.instantiate(),
		"7,2" : "bridge 1",
		"7,3" : "none",
		"7,4" : "none",
		"7,5" : "bridge 2",
		"7,6" : island.instantiate(),
		"7,7" : "none",
		"7,8" : "bridge 1",
		"8,0" : island.instantiate(),
		"8,1" : "bridge 2",
		"8,2" : island.instantiate(),
		"8,3" : "bridge 1",
		"8,4" : "bridge 1",
		"8,5" : island.instantiate(),
		"8,6" : "bridge 1",
		"8,7" : "bridge 1",
		"8,8" : island.instantiate(),
		}
	map['0,0'].setUp(2, ["0,6", "3,0"])
	map['0,6'].setUp(4, ["4,6", "0,0", "0,8"])
	map['0,8'].setUp(3, ["0,6", "3,8"])
	map['1,2'].setUp(2, ["4,2", "1,5"])
	map['1,5'].setUp(2, ["1,2", "3,5"])
	map['2,1'].setUp(1, ["5,1"])
	map['3,0'].setUp(3, ["0,0", "8,0"])
	map['3,3'].setUp(1, ["3,5"])
	map['3,5'].setUp(2, ["1,5", "3,3"])
	map['3,8'].setUp(1, ["0,8"])
	map['4,2'].setUp(3, ["4,6", "1,2"])
	map['4,6'].setUp(5, ["4,8", "0,6", "7,6", "4,2"])
	map['4,8'].setUp(2, ["4,6", "8,8"])
	map['5,1'].setUp(4, ["5,5", "7,1", "2,1"])
	map['5,5'].setUp(3, ["8,5", "5,1"])
	map['6,2'].setUp(2, ["8,2", "6,4"])
	map['6,4'].setUp(1, ["6,2"])
	map['7,1'].setUp(2, ["5,1"])
	map['7,6'].setUp(1, ["4,6"])
	map['8,0'].setUp(4, ["8,2", "3,0"])
	map['8,2'].setUp(4, ["8,5", "6,2", "8,0"])
	map['8,5'].setUp(4, ["8,8", "5,5", "8,2"])
	map['8,8'].setUp(2, ["4,8", "8,5"])
	return map


func map9x9_4() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 2",
		"0,4" : "bridge 2",
		"0,5" : island.instantiate(),
		"0,6" : "bridge 1",
		"0,7" : "bridge 1",
		"0,8" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : island.instantiate(),
		"1,2" : "bridge 1",
		"1,3" : "none",
		"1,4" : island.instantiate(),
		"1,5" : "bridge 1",
		"1,6" : island.instantiate(),
		"1,7" : "bridge 2",
		"1,8" : island.instantiate(),
		"2,0" : "bridge 1",
		"2,1" : "bridge 2",
		"2,2" : "bridge 1",
		"2,3" : "none",
		"2,4" : "bridge 2",
		"2,5" : "bridge 1",
		"2,6" : "bridge 1",
		"2,7" : "none",
		"2,8" : "bridge 1",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 2",
		"3,2" : island.instantiate(),
		"3,3" : "bridge 2",
		"3,4" : island.instantiate(),
		"3,5" : "bridge 1",
		"3,6" : island.instantiate(),
		"3,7" : "none",
		"3,8" : "bridge 1",
		"4,0" : "bridge 1",
		"4,1" : island.instantiate(),
		"4,2" : "bridge 1",
		"4,3" : "bridge 1",
		"4,4" : "bridge 1",
		"4,5" : island.instantiate(),
		"4,6" : "bridge 1",
		"4,7" : "bridge 1",
		"4,8" : island.instantiate(),
		"5,0" : island.instantiate(),
		"5,1" : "bridge 1",
		"5,2" : "none",
		"5,3" : island.instantiate(),
		"5,4" : "none",
		"5,5" : "bridge 2",
		"5,6" : island.instantiate(),
		"5,7" : "none",
		"5,8" : "bridge 1",
		"6,0" : "bridge 1",
		"6,1" : "bridge 1",
		"6,2" : "none",
		"6,3" : "bridge 2",
		"6,4" : "none",
		"6,5" : "bridge 2",
		"6,6" : "bridge 2",
		"6,7" : "none",
		"6,8" : "bridge 1",
		"7,0" : "bridge 1",
		"7,1" : island.instantiate(),
		"7,2" : "none",
		"7,3" : "bridge 2",
		"7,4" : "none",
		"7,5" : island.instantiate(),
		"7,6" : "bridge 2",
		"7,7" : "none",
		"7,8" : "bridge 1",
		"8,0" : island.instantiate(),
		"8,1" : "bridge 2",
		"8,2" : "bridge 2",
		"8,3" : island.instantiate(),
		"8,4" : "bridge 1",
		"8,5" : "bridge 1",
		"8,6" : island.instantiate(),
		"8,7" : "bridge 2",
		"8,8" : island.instantiate(),
		}
	map['0,0'].setUp(3, ["0,2", "3,0"])
	map['0,2'].setUp(5, ["0,5", "0,0", "3,2"])
	map['0,5'].setUp(4, ["4,5", "0,2", "0,8"])
	map['0,8'].setUp(1, ["0,5"])
	map['1,1'].setUp(2, ["4,1"])
	map['1,4'].setUp(2, ["3,4"])
	map['1,6'].setUp(3, ["1,8", "3,6"])
	map['1,8'].setUp(3, ["4,8", "1,6"])
	map['3,0'].setUp(2, ["0,0", "5,0"])
	map['3,2'].setUp(3, ["0,2", "3,4"])
	map['3,4'].setUp(4, ["3,2", "1,4"])
	map['3,6'].setUp(1, ["1,6"])
	map['4,1'].setUp(4, ["4,5", "1,1", "7,1"])
	map['4,5'].setUp(5, ["4,8", "4,1", "0,5", "7,5"])
	map['4,8'].setUp(3, ["8,8", "4,5", "1,8"])
	map['5,0'].setUp(2, ["8,0", "3,0"])
	map['5,3'].setUp(2, ["8,3"])
	map['5,6'].setUp(2, ["8,6"])
	map['7,1'].setUp(1, ["4,1"])
	map['7,5'].setUp(2, ["4,5"])
	map['8,0'].setUp(3, ["8,3", "5,0"])
	map['8,3'].setUp(5, ["8,6", "8,0", "5,3"])
	map['8,6'].setUp(5, ["8,3", "8,8", "5,6"])
	map['8,8'].setUp(3, ["8,6", "4,8"])
	return map


func map9x9_5() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : "bridge 1",
		"0,3" : island.instantiate(),
		"0,4" : island.instantiate(),
		"0,5" : "bridge 1",
		"0,6" : "bridge 1",
		"0,7" : island.instantiate(),
		"0,8" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "none",
		"1,4" : "bridge 2",
		"1,5" : "none",
		"1,6" : "none",
		"1,7" : "none",
		"1,8" : "bridge 2",
		"2,0" : island.instantiate(),
		"2,1" : "bridge 2",
		"2,2" : "bridge 2",
		"2,3" : "bridge 2",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 2",
		"2,6" : "bridge 2",
		"2,7" : "bridge 2",
		"2,8" : island.instantiate(),
		"3,0" : "bridge 2",
		"3,1" : "none",
		"3,2" : "none",
		"3,3" : "none",
		"3,4" : "bridge 1",
		"3,5" : "none",
		"3,6" : "none",
		"3,7" : "none",
		"3,8" : "bridge 2",
		"4,0" : "bridge 2",
		"4,1" : "none",
		"4,2" : "none",
		"4,3" : "none",
		"4,4" : "bridge 1",
		"4,5" : "none",
		"4,6" : "none",
		"4,7" : "none",
		"4,8" : "bridge 2",
		"5,0" : island.instantiate(),
		"5,1" : "bridge 1",
		"5,2" : "bridge 1",
		"5,3" : "bridge 1",
		"5,4" : island.instantiate(),
		"5,5" : "bridge 1",
		"5,6" : "bridge 1",
		"5,7" : "bridge 1",
		"5,8" : island.instantiate(),
		"6,0" : "bridge 2",
		"6,1" : island.instantiate(),
		"6,2" : "bridge 2",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 1",
		"6,5" : island.instantiate(),
		"6,6" : "bridge 1",
		"6,7" : island.instantiate(),
		"6,8" : "bridge 1",
		"7,0" : "bridge 2",
		"7,1" : "bridge 2",
		"7,2" : "none",
		"7,3" : "none",
		"7,4" : "bridge 1",
		"7,5" : "none",
		"7,6" : "none",
		"7,7" : "bridge 1",
		"7,8" : "bridge 1",
		"8,0" : island.instantiate(),
		"8,1" : island.instantiate(),
		"8,2" : "bridge 2",
		"8,3" : "bridge 2",
		"8,4" : island.instantiate(),
		"8,5" : "bridge 1",
		"8,6" : "bridge 1",
		"8,7" : island.instantiate(),
		"8,8" : island.instantiate(),
		}
	map['0,0'].setUp(3, ["2,0", "0,3"])
	map['0,3'].setUp(1, ["0,0"])
	map['0,4'].setUp(3, ["2,4", "0,7"])
	map['0,7'].setUp(1, ["0,4"])
	map['0,8'].setUp(2, ["2,8"])
	map['2,0'].setUp(6, ["2,4", "0,0", "5,0"])
	map['2,4'].setUp(7, ["2,0", "5,4", "0,4", "2,8"])
	map['2,8'].setUp(6, ["2,4", "5,8", "0,8"])
	map['5,0'].setUp(5, ["2,0", "8,0", "5,4"])
	map['5,4'].setUp(4, ["2,4", "5,0", "8,4", "5,8"])
	map['5,8'].setUp(4, ["5,4", "2,8", "8,8"])
	map['6,1'].setUp(4, ["8,1", "6,3"])
	map['6,3'].setUp(2, ["6,1"])
	map['6,5'].setUp(1, ["6,7"])
	map['6,7'].setUp(2, ["8,7", "6,5"])
	map['8,0'].setUp(2, ["5,0"])
	map['8,1'].setUp(4, ["8,4", "6,1"])
	map['8,4'].setUp(4, ["5,4", "8,1", "8,7"])
	map['8,7'].setUp(2, ["8,4", "6,7"])
	map['8,8'].setUp(1, ["5,8"])
	return map


func map9x9_6() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 1",
		"0,4" : "bridge 1",
		"0,5" : island.instantiate(),
		"0,6" : "bridge 1",
		"0,7" : "bridge 1",
		"0,8" : island.instantiate(),
		"1,0" : island.instantiate(),
		"1,1" : "bridge 2",
		"1,2" : "bridge 2",
		"1,3" : island.instantiate(),
		"1,4" : "bridge 2",
		"1,5" : "bridge 2",
		"1,6" : "bridge 2",
		"1,7" : island.instantiate(),
		"1,8" : "bridge 1",
		"2,0" : "bridge 2",
		"2,1" : island.instantiate(),
		"2,2" : "none",
		"2,3" : "bridge 2",
		"2,4" : "none",
		"2,5" : "none",
		"2,6" : "none",
		"2,7" : "bridge 2",
		"2,8" : "bridge 1",
		"3,0" : "bridge 2",
		"3,1" : "bridge 2",
		"3,2" : "none",
		"3,3" : "bridge 2",
		"3,4" : "none",
		"3,5" : "none",
		"3,6" : "none",
		"3,7" : "bridge 2",
		"3,8" : "bridge 1",
		"4,0" : "bridge 2",
		"4,1" : island.instantiate(),
		"4,2" : "bridge 2",
		"4,3" : island.instantiate(),
		"4,4" : "bridge 1",
		"4,5" : "bridge 1",
		"4,6" : "bridge 1",
		"4,7" : island.instantiate(),
		"4,8" : island.instantiate(),
		"5,0" : island.instantiate(),
		"5,1" : "bridge 1",
		"5,2" : island.instantiate(),
		"5,3" : "bridge 2",
		"5,4" : island.instantiate(),
		"5,5" : "bridge 1",
		"5,6" : island.instantiate(),
		"5,7" : "bridge 1",
		"5,8" : "bridge 2",
		"6,0" : "bridge 1",
		"6,1" : "none",
		"6,2" : "bridge 2",
		"6,3" : "bridge 2",
		"6,4" : "bridge 1",
		"6,5" : "none",
		"6,6" : "bridge 1",
		"6,7" : "bridge 1",
		"6,8" : "bridge 2",
		"7,0" : "bridge 1",
		"7,1" : "none",
		"7,2" : island.instantiate(),
		"7,3" : "bridge 2",
		"7,4" : island.instantiate(),
		"7,5" : "none",
		"7,6" : "bridge 1",
		"7,7" : island.instantiate(),
		"7,8" : "bridge 2",
		"8,0" : island.instantiate(),
		"8,1" : "bridge 2",
		"8,2" : "bridge 2",
		"8,3" : island.instantiate(),
		"8,4" : "bridge 1",
		"8,5" : "bridge 1",
		"8,6" : island.instantiate(),
		"8,7" : "bridge 2",
		"8,8" : island.instantiate(),
		}
	map['0,0'].setUp(1, ["0,2"])
	map['0,2'].setUp(2, ["0,5", "0,0"])
	map['0,5'].setUp(2, ["0,8", "0,2"])
	map['0,8'].setUp(2, ["4,8", "0,5"])
	map['1,0'].setUp(4, ["5,0", "1,3"])
	map['1,3'].setUp(6, ["1,0", "1,7", "4,3"])
	map['1,7'].setUp(4, ["4,7", "1,3"])
	map['2,1'].setUp(2, ["4,1"])
	map['4,1'].setUp(4, ["4,3", "2,1"])
	map['4,3'].setUp(7, ["8,3", "4,7", "1,3", "4,1"])
	map['4,7'].setUp(4, ["4,3", "1,7", "7,7"])
	map['4,8'].setUp(3, ["8,8", "0,8"])
	map['5,0'].setUp(4, ["8,0", "1,0", "5,2"])
	map['5,2'].setUp(3, ["5,0", "7,2"])
	map['5,4'].setUp(2, ["5,6", "7,4"])
	map['5,6'].setUp(2, ["8,6", "5,4"])
	map['7,2'].setUp(2, ["5,2"])
	map['7,4'].setUp(1, ["5,4"])
	map['7,7'].setUp(1, ["4,7"])
	map['8,0'].setUp(3, ["5,0", "8,3"])
	map['8,3'].setUp(5, ["8,0", "4,3", "8,6"])
	map['8,6'].setUp(4, ["8,3", "8,8", "5,6"])
	map['8,8'].setUp(4, ["8,6", "4,8"])
	return map


func map11x11_1() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : "bridge 1",
		"0,3" : island.instantiate(),
		"0,4" : "bridge 2",
		"0,5" : "bridge 2",
		"0,6" : island.instantiate(),
		"0,7" : "bridge 1",
		"0,8" : "bridge 1",
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : island.instantiate(),
		"1,2" : "none",
		"1,3" : "bridge 1",
		"1,4" : "none",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 2",
		"1,7" : island.instantiate(),
		"1,8" : "bridge 1",
		"1,9" : island.instantiate(),
		"1,10" : "bridge 2",
		"2,0" : "bridge 2",
		"2,1" : "bridge 2",
		"2,2" : "none",
		"2,3" : "bridge 1",
		"2,4" : "none",
		"2,5" : "bridge 2",
		"2,6" : "bridge 2",
		"2,7" : "bridge 2",
		"2,8" : "none",
		"2,9" : "none",
		"2,10" : "bridge 2",
		"3,0" : "bridge 2",
		"3,1" : island.instantiate(),
		"3,2" : "bridge 2",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 2",
		"3,5" : island.instantiate(),
		"3,6" : "bridge 2",
		"3,7" : island.instantiate(),
		"3,8" : "bridge 2",
		"3,9" : "bridge 2",
		"3,10" : island.instantiate(),
		"4,0" : island.instantiate(),
		"4,1" : "bridge 2",
		"4,2" : "none",
		"4,3" : "bridge 1",
		"4,4" : island.instantiate(),
		"4,5" : "bridge 1",
		"4,6" : island.instantiate(),
		"4,7" : "bridge 1",
		"4,8" : "bridge 1",
		"4,9" : island.instantiate(),
		"4,10" : "bridge 2",
		"5,0" : "bridge 2",
		"5,1" : "bridge 2",
		"5,2" : "none",
		"5,3" : "bridge 1",
		"5,4" : "bridge 1",
		"5,5" : "bridge 1",
		"5,6" : "bridge 2",
		"5,7" : "none",
		"5,8" : "none",
		"5,9" : "bridge 2",
		"5,10" : "bridge 2",
		"6,0" : "bridge 2",
		"6,1" : island.instantiate(),
		"6,2" : "none",
		"6,3" : "bridge 1",
		"6,4" : "bridge 1",
		"6,5" : island.instantiate(),
		"6,6" : "bridge 2",
		"6,7" : "none",
		"6,8" : "none",
		"6,9" : "bridge 2",
		"6,10" : island.instantiate(),
		"7,0" : "bridge 2",
		"7,1" : "bridge 2",
		"7,2" : "none",
		"7,3" : island.instantiate(),
		"7,4" : "bridge 1",
		"7,5" : "none",
		"7,6" : "bridge 2",
		"7,7" : "none",
		"7,8" : "none",
		"7,9" : "bridge 2",
		"7,10" : "bridge 1",
		"8,0" : island.instantiate(),
		"8,1" : "bridge 2",
		"8,2" : "none",
		"8,3" : "bridge 2",
		"8,4" : island.instantiate(),
		"8,5" : "bridge 2",
		"8,6" : island.instantiate(),
		"8,7" : "bridge 2",
		"8,8" : "bridge 2",
		"8,9" : island.instantiate(),
		"8,10" : "bridge 1",
		"9,0" : "bridge 2",
		"9,1" : "bridge 2",
		"9,2" : "none",
		"9,3" : "bridge 2",
		"9,4" : "none",
		"9,5" : "none",
		"9,6" : "bridge 1",
		"9,7" : "none",
		"9,8" : "none",
		"9,9" : "bridge 2",
		"9,10" : "bridge 1",
		"10,0" : island.instantiate(),
		"10,1" : island.instantiate(),
		"10,2" : "bridge 1",
		"10,3" : island.instantiate(),
		"10,4" : "bridge 2",
		"10,5" : "bridge 2",
		"10,6" : island.instantiate(),
		"10,7" : "bridge 1",
		"10,8" : "bridge 1",
		"10,9" : island.instantiate(),
		"10,10" : island.instantiate(),
		}
	map['0,0'].setUp(3, ["4,0", "0,3"])
	map['0,3'].setUp(4, ["0,0", "0,6", "3,3"])
	map['0,6'].setUp(5, ["0,3", "0,10", "4,6"])
	map['0,10'].setUp(3, ["0,6", "3,10"])
	map['1,1'].setUp(2, ["3,1"])
	map['1,5'].setUp(2, ["3,5"])
	map['1,7'].setUp(3, ["3,7", "1,9"])
	map['1,9'].setUp(1, ["1,7"])
	map['3,1'].setUp(6, ["3,3", "6,1", "1,1"])
	map['3,3'].setUp(6, ["0,3", "3,1", "7,3", "3,5"])
	map['3,5'].setUp(5, ["3,3", "1,5", "6,5"])
	map['3,7'].setUp(4, ["3,10", "1,7"])
	map['3,10'].setUp(6, ["0,10", "3,7", "6,10"])
	map['4,0'].setUp(4, ["0,0", "8,0"])
	map['4,4'].setUp(1, ["8,4"])
	map['4,6'].setUp(5, ["0,6", "8,6", "4,9"])
	map['4,9'].setUp(3, ["4,6", "8,9"])
	map['6,1'].setUp(4, ["3,1", "10,1"])
	map['6,5'].setUp(1, ["3,5"])
	map['6,10'].setUp(3, ["3,10", "10,10"])
	map['7,3'].setUp(3, ["3,3", "10,3"])
	map['8,0'].setUp(4, ["4,0", "10,0"])
	map['8,4'].setUp(3, ["8,6", "4,4"])
	map['8,6'].setUp(7, ["4,6", "10,6", "8,9", "8,4"])
	map['8,9'].setUp(6, ["4,9", "10,9", "8,6"])
	map['10,0'].setUp(2, ["8,0"])
	map['10,1'].setUp(3, ["6,1", "10,3"])
	map['10,3'].setUp(5, ["7,3", "10,6", "10,1"])
	map['10,6'].setUp(4, ["10,3", "8,6", "10,9"])
	map['10,9'].setUp(3, ["8,9", "10,6"])
	map['10,10'].setUp(1, ["6,10"])
	return map


func map11x11_2() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 2",
		"0,4" : "bridge 2",
		"0,5" : island.instantiate(),
		"0,6" : "bridge 2",
		"0,7" : "bridge 2",
		"0,8" : island.instantiate(),
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : "bridge 2",
		"1,3" : "none",
		"1,4" : "none",
		"1,5" : "bridge 2",
		"1,6" : "none",
		"1,7" : "none",
		"1,8" : "none",
		"1,9" : "none",
		"1,10" : "bridge 1",
		"2,0" : "bridge 1",
		"2,1" : "none",
		"2,2" : island.instantiate(),
		"2,3" : "bridge 2",
		"2,4" : "bridge 2",
		"2,5" : island.instantiate(),
		"2,6" : "bridge 2",
		"2,7" : island.instantiate(),
		"2,8" : "bridge 2",
		"2,9" : "bridge 2",
		"2,10" : island.instantiate(),
		"3,0" : island.instantiate(),
		"3,1" : "bridge 1",
		"3,2" : "bridge 1",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 1",
		"3,5" : "bridge 1",
		"3,6" : island.instantiate(),
		"3,7" : "bridge 2",
		"3,8" : "bridge 2",
		"3,9" : island.instantiate(),
		"3,10" : "bridge 2",
		"4,0" : "bridge 2",
		"4,1" : "none",
		"4,2" : "none",
		"4,3" : "bridge 1",
		"4,4" : "none",
		"4,5" : "none",
		"4,6" : "bridge 2",
		"4,7" : "none",
		"4,8" : "none",
		"4,9" : "bridge 1",
		"4,10" : "bridge 2",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "bridge 1",
		"5,4" : "none",
		"5,5" : "none",
		"5,6" : "bridge 2",
		"5,7" : island.instantiate(),
		"5,8" : "bridge 2",
		"5,9" : island.instantiate(),
		"5,10" : "bridge 2",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 2",
		"6,2" : "bridge 2",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 2",
		"6,5" : "bridge 2",
		"6,6" : island.instantiate(),
		"6,7" : "bridge 2",
		"6,8" : "bridge 2",
		"6,9" : "bridge 2",
		"6,10" : island.instantiate(),
		"7,0" : "bridge 2",
		"7,1" : "none",
		"7,2" : "none",
		"7,3" : "bridge 1",
		"7,4" : island.instantiate(),
		"7,5" : "none",
		"7,6" : "bridge 1",
		"7,7" : "none",
		"7,8" : "none",
		"7,9" : "none",
		"7,10" : "bridge 2",
		"8,0" : "bridge 2",
		"8,1" : "none",
		"8,2" : "none",
		"8,3" : "bridge 1",
		"8,4" : "bridge 1",
		"8,5" : "none",
		"8,6" : "bridge 1",
		"8,7" : "none",
		"8,8" : "none",
		"8,9" : "none",
		"8,10" : "bridge 2",
		"9,0" : "bridge 2",
		"9,1" : "none",
		"9,2" : "none",
		"9,3" : "bridge 1",
		"9,4" : island.instantiate(),
		"9,5" : "bridge 2",
		"9,6" : island.instantiate(),
		"9,7" : "bridge 2",
		"9,8" : "bridge 2",
		"9,9" : "bridge 2",
		"9,10" : island.instantiate(),
		"10,0" : island.instantiate(),
		"10,1" : "bridge 2",
		"10,2" : "bridge 2",
		"10,3" : island.instantiate(),
		"10,4" : "bridge 2",
		"10,5" : "bridge 2",
		"10,6" : island.instantiate(),
		"10,7" : "bridge 1",
		"10,8" : "bridge 1",
		"10,9" : island.instantiate(),
		"10,10" : "none",
		}
	map['0,0'].setUp(2, ["0,2", "3,0"])
	map['0,2'].setUp(5, ["2,2", "0,0", "0,5"])
	map['0,5'].setUp(6, ["0,2", "2,5", "0,8"])
	map['0,8'].setUp(3, ["0,5", "0,10"])
	map['0,10'].setUp(2, ["2,10", "0,8"])
	map['2,2'].setUp(4, ["0,2", "2,5"])
	map['2,5'].setUp(6, ["2,7", "2,2", "0,5"])
	map['2,7'].setUp(4, ["2,5", "2,10"])
	map['2,10'].setUp(5, ["6,10", "2,7", "0,10"])
	map['3,0'].setUp(4, ["0,0", "6,0", "3,3"])
	map['3,3'].setUp(3, ["6,3", "3,0", "3,6"])
	map['3,6'].setUp(5, ["3,3", "6,6", "3,9"])
	map['3,9'].setUp(3, ["3,6", "5,9"])
	map['5,7'].setUp(2, ["5,9"])
	map['5,9'].setUp(3, ["3,9", "5,7"])
	map['6,0'].setUp(6, ["3,0", "6,3", "10,0"])
	map['6,3'].setUp(6, ["6,0", "6,6", "3,3", "10,3"])
	map['6,6'].setUp(7, ["6,3", "6,10", "9,6", "3,6"])
	map['6,10'].setUp(6, ["6,6", "2,10", "9,10"])
	map['7,4'].setUp(1, ["9,4"])
	map['9,4'].setUp(3, ["9,6", "7,4"])
	map['9,6'].setUp(5, ["6,6", "9,10", "9,4"])
	map['9,10'].setUp(4, ["9,6", "6,10"])
	map['10,0'].setUp(4, ["6,0", "10,3"])
	map['10,3'].setUp(5, ["6,3", "10,0", "10,6"])
	map['10,6'].setUp(3, ["10,3", "10,9"])
	map['10,9'].setUp(1, ["10,6"])
	return map


func map11x11_3() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : "bridge 2",
		"0,4" : island.instantiate(),
		"0,5" : "bridge 2",
		"0,6" : island.instantiate(),
		"0,7" : "bridge 2",
		"0,8" : "bridge 2",
		"0,9" : "bridge 2",
		"0,10" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "none",
		"1,4" : "bridge 1",
		"1,5" : "none",
		"1,6" : "bridge 2",
		"1,7" : "none",
		"1,8" : "none",
		"1,9" : "none",
		"1,10" : "bridge 1",
		"2,0" : "bridge 2",
		"2,1" : "none",
		"2,2" : "none",
		"2,3" : "none",
		"2,4" : "bridge 1",
		"2,5" : "none",
		"2,6" : "bridge 2",
		"2,7" : "none",
		"2,8" : "none",
		"2,9" : "none",
		"2,10" : "bridge 1",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 1",
		"3,2" : "bridge 1",
		"3,3" : "bridge 1",
		"3,4" : island.instantiate(),
		"3,5" : "bridge 1",
		"3,6" : island.instantiate(),
		"3,7" : "bridge 2",
		"3,8" : "bridge 2",
		"3,9" : "bridge 2",
		"3,10" : island.instantiate(),
		"4,0" : "bridge 2",
		"4,1" : island.instantiate(),
		"4,2" : "bridge 1",
		"4,3" : island.instantiate(),
		"4,4" : "bridge 2",
		"4,5" : "none",
		"4,6" : "bridge 1",
		"4,7" : island.instantiate(),
		"4,8" : "bridge 1",
		"4,9" : island.instantiate(),
		"4,10" : "bridge 1",
		"5,0" : "bridge 2",
		"5,1" : "bridge 2",
		"5,2" : "none",
		"5,3" : "none",
		"5,4" : "bridge 2",
		"5,5" : "none",
		"5,6" : "bridge 1",
		"5,7" : "bridge 2",
		"5,8" : "none",
		"5,9" : "none",
		"5,10" : "bridge 1",
		"6,0" : "bridge 2",
		"6,1" : island.instantiate(),
		"6,2" : "bridge 1",
		"6,3" : "bridge 1",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 1",
		"6,6" : island.instantiate(),
		"6,7" : island.instantiate(),
		"6,8" : "bridge 1",
		"6,9" : "bridge 1",
		"6,10" : island.instantiate(),
		"7,0" : island.instantiate(),
		"7,1" : "bridge 1",
		"7,2" : "bridge 1",
		"7,3" : island.instantiate(),
		"7,4" : "bridge 1",
		"7,5" : "none",
		"7,6" : "bridge 2",
		"7,7" : "bridge 1",
		"7,8" : island.instantiate(),
		"7,9" : "none",
		"7,10" : "bridge 1",
		"8,0" : "bridge 2",
		"8,1" : "none",
		"8,2" : "none",
		"8,3" : "bridge 1",
		"8,4" : "bridge 1",
		"8,5" : "none",
		"8,6" : "bridge 2",
		"8,7" : "bridge 1",
		"8,8" : "bridge 1",
		"8,9" : "none",
		"8,10" : "bridge 1",
		"9,0" : "bridge 2",
		"9,1" : island.instantiate(),
		"9,2" : "bridge 1",
		"9,3" : island.instantiate(),
		"9,4" : "bridge 1",
		"9,5" : "none",
		"9,6" : "bridge 2",
		"9,7" : island.instantiate(),
		"9,8" : "bridge 1",
		"9,9" : "none",
		"9,10" : "bridge 1",
		"10,0" : island.instantiate(),
		"10,1" : "bridge 2",
		"10,2" : "bridge 2",
		"10,3" : "bridge 2",
		"10,4" : island.instantiate(),
		"10,5" : "bridge 2",
		"10,6" : island.instantiate(),
		"10,7" : "bridge 2",
		"10,8" : island.instantiate(),
		"10,9" : "bridge 1",
		"10,10" : island.instantiate(),
		}
	map['0,0'].setUp(4, ["3,0", "0,4"])
	map['0,4'].setUp(5, ["0,0", "0,6", "3,4"])
	map['0,6'].setUp(6, ["3,6", "0,4", "0,10"])
	map['0,10'].setUp(3, ["0,6", "3,10"])
	map['3,0'].setUp(5, ["7,0", "0,0", "3,4"])
	map['3,4'].setUp(5, ["3,0", "0,4", "3,6", "6,4"])
	map['3,6'].setUp(6, ["0,6", "3,10", "6,6", "3,4"])
	map['3,10'].setUp(4, ["3,6", "6,10", "0,10"])
	map['4,1'].setUp(3, ["6,1", "4,3"])
	map['4,3'].setUp(1, ["4,1"])
	map['4,7'].setUp(3, ["6,7", "4,9"])
	map['4,9'].setUp(1, ["4,7"])
	map['6,1'].setUp(3, ["6,4", "4,1"])
	map['6,4'].setUp(5, ["10,4", "3,4", "6,1", "6,6"])
	map['6,6'].setUp(4, ["3,6", "10,6", "6,4"])
	map['6,7'].setUp(4, ["6,10", "9,7", "4,7"])
	map['6,10'].setUp(3, ["10,10", "3,10", "6,7"])
	map['7,0'].setUp(5, ["3,0", "10,0", "7,3"])
	map['7,3'].setUp(2, ["7,0", "9,3"])
	map['7,8'].setUp(1, ["10,8"])
	map['9,1'].setUp(1, ["9,3"])
	map['9,3'].setUp(2, ["7,3", "9,1"])
	map['9,7'].setUp(1, ["6,7"])
	map['10,0'].setUp(4, ["7,0", "10,4"])
	map['10,4'].setUp(5, ["10,0", "6,4", "10,6"])
	map['10,6'].setUp(6, ["10,8", "10,4", "6,6"])
	map['10,8'].setUp(4, ["10,10", "10,6", "7,8"])
	map['10,10'].setUp(2, ["10,8", "6,10"])
	return map


func map11x11_4() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : "bridge 2",
		"0,4" : island.instantiate(),
		"0,5" : "bridge 1",
		"0,6" : "bridge 1",
		"0,7" : "bridge 1",
		"0,8" : "bridge 1",
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "none",
		"1,4" : "bridge 1",
		"1,5" : "none",
		"1,6" : "none",
		"1,7" : "none",
		"1,8" : "none",
		"1,9" : "none",
		"1,10" : "bridge 2",
		"2,0" : island.instantiate(),
		"2,1" : "bridge 1",
		"2,2" : "bridge 1",
		"2,3" : "bridge 1",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 2",
		"2,6" : "bridge 2",
		"2,7" : "bridge 2",
		"2,8" : "bridge 2",
		"2,9" : "bridge 2",
		"2,10" : island.instantiate(),
		"3,0" : "bridge 1",
		"3,1" : "none",
		"3,2" : island.instantiate(),
		"3,3" : "none",
		"3,4" : "bridge 1",
		"3,5" : island.instantiate(),
		"3,6" : "bridge 2",
		"3,7" : island.instantiate(),
		"3,8" : "bridge 2",
		"3,9" : island.instantiate(),
		"3,10" : "bridge 1",
		"4,0" : "bridge 1",
		"4,1" : "none",
		"4,2" : "bridge 2",
		"4,3" : "none",
		"4,4" : "bridge 1",
		"4,5" : "bridge 2",
		"4,6" : "none",
		"4,7" : "bridge 1",
		"4,8" : "none",
		"4,9" : "bridge 2",
		"4,10" : "bridge 1",
		"5,0" : island.instantiate(),
		"5,1" : "none",
		"5,2" : "bridge 2",
		"5,3" : "none",
		"5,4" : island.instantiate(),
		"5,5" : island.instantiate(),
		"5,6" : "none",
		"5,7" : "bridge 1",
		"5,8" : "none",
		"5,9" : island.instantiate(),
		"5,10" : "bridge 1",
		"6,0" : "bridge 1",
		"6,1" : "none",
		"6,2" : island.instantiate(),
		"6,3" : "bridge 2",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 2",
		"6,6" : "bridge 2",
		"6,7" : island.instantiate(),
		"6,8" : "bridge 1",
		"6,9" : "bridge 1",
		"6,10" : island.instantiate(),
		"7,0" : "bridge 1",
		"7,1" : "none",
		"7,2" : "bridge 2",
		"7,3" : "none",
		"7,4" : "bridge 1",
		"7,5" : island.instantiate(),
		"7,6" : "none",
		"7,7" : "bridge 2",
		"7,8" : "none",
		"7,9" : "none",
		"7,10" : "bridge 1",
		"8,0" : "bridge 1",
		"8,1" : "none",
		"8,2" : "bridge 2",
		"8,3" : "none",
		"8,4" : "bridge 1",
		"8,5" : "bridge 2",
		"8,6" : "none",
		"8,7" : "bridge 2",
		"8,8" : "none",
		"8,9" : "none",
		"8,10" : "bridge 1",
		"9,0" : island.instantiate(),
		"9,1" : "bridge 1",
		"9,2" : island.instantiate(),
		"9,3" : "bridge 1",
		"9,4" : island.instantiate(),
		"9,5" : "bridge 2",
		"9,6" : "none",
		"9,7" : "bridge 2",
		"9,8" : "none",
		"9,9" : "none",
		"9,10" : "bridge 1",
		"10,0" : island.instantiate(),
		"10,1" : "bridge 2",
		"10,2" : island.instantiate(),
		"10,3" : "bridge 2",
		"10,4" : "bridge 2",
		"10,5" : island.instantiate(),
		"10,6" : "bridge 2",
		"10,7" : island.instantiate(),
		"10,8" : "bridge 2",
		"10,9" : "bridge 2",
		"10,10" : island.instantiate(),
		}
	map['0,0'].setUp(4, ["2,0", "0,4"])
	map['0,4'].setUp(4, ["0,0", "0,10", "2,4"])
	map['0,10'].setUp(3, ["2,10", "0,4"])
	map['2,0'].setUp(4, ["2,4", "5,0", "0,0"])
	map['2,4'].setUp(5, ["2,10", "2,0", "0,4", "5,4"])
	map['2,10'].setUp(5, ["2,4", "0,10", "6,10"])
	map['3,2'].setUp(2, ["6,2"])
	map['3,5'].setUp(4, ["3,7", "5,5"])
	map['3,7'].setUp(5, ["6,7", "3,9", "3,5"])
	map['3,9'].setUp(4, ["3,7", "5,9"])
	map['5,0'].setUp(2, ["2,0", "9,0"])
	map['5,4'].setUp(1, ["2,4"])
	map['5,5'].setUp(2, ["3,5"])
	map['5,9'].setUp(2, ["3,9"])
	map['6,2'].setUp(6, ["3,2", "6,4", "9,2"])
	map['6,4'].setUp(5, ["6,2", "6,7", "9,4"])
	map['6,7'].setUp(6, ["6,10", "10,7", "3,7", "6,4"])
	map['6,10'].setUp(3, ["2,10", "6,7", "10,10"])
	map['7,5'].setUp(2, ["10,5"])
	map['9,0'].setUp(2, ["5,0", "9,2"])
	map['9,2'].setUp(4, ["9,4", "9,0", "6,2"])
	map['9,4'].setUp(2, ["6,4", "9,2"])
	map['10,0'].setUp(2, ["10,2"])
	map['10,2'].setUp(4, ["10,5", "10,0"])
	map['10,5'].setUp(6, ["10,7", "10,2", "7,5"])
	map['10,7'].setUp(6, ["10,10", "10,5", "6,7"])
	map['10,10'].setUp(3, ["6,10", "10,7"])
	return map


func map11x11_5() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : "bridge 2",
		"0,4" : island.instantiate(),
		"0,5" : "bridge 1",
		"0,6" : "bridge 1",
		"0,7" : island.instantiate(),
		"0,8" : "bridge 1",
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : island.instantiate(),
		"1,2" : "bridge 2",
		"1,3" : "bridge 2",
		"1,4" : "bridge 2",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 1",
		"1,7" : "bridge 1",
		"1,8" : "bridge 1",
		"1,9" : island.instantiate(),
		"1,10" : "bridge 1",
		"2,0" : "bridge 2",
		"2,1" : "bridge 1",
		"2,2" : island.instantiate(),
		"2,3" : "bridge 1",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 2",
		"2,6" : "bridge 2",
		"2,7" : "bridge 2",
		"2,8" : island.instantiate(),
		"2,9" : "bridge 1",
		"2,10" : "bridge 1",
		"3,0" : "bridge 2",
		"3,1" : "bridge 1",
		"3,2" : "none",
		"3,3" : "none",
		"3,4" : "bridge 1",
		"3,5" : "none",
		"3,6" : "none",
		"3,7" : "none",
		"3,8" : "bridge 1",
		"3,9" : island.instantiate(),
		"3,10" : "bridge 1",
		"4,0" : "bridge 2",
		"4,1" : island.instantiate(),
		"4,2" : "bridge 1",
		"4,3" : "bridge 1",
		"4,4" : island.instantiate(),
		"4,5" : "bridge 2",
		"4,6" : "bridge 2",
		"4,7" : "bridge 2",
		"4,8" : island.instantiate(),
		"4,9" : "bridge 1",
		"4,10" : island.instantiate(),
		"5,0" : "bridge 2",
		"5,1" : "bridge 1",
		"5,2" : island.instantiate(),
		"5,3" : "bridge 2",
		"5,4" : "bridge 2",
		"5,5" : island.instantiate(),
		"5,6" : "bridge 1",
		"5,7" : island.instantiate(),
		"5,8" : "bridge 1",
		"5,9" : "none",
		"5,10" : "bridge 2",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 1",
		"6,2" : "none",
		"6,3" : "none",
		"6,4" : "none",
		"6,5" : "bridge 1",
		"6,6" : "none",
		"6,7" : "bridge 2",
		"6,8" : "bridge 1",
		"6,9" : "none",
		"6,10" : "bridge 2",
		"7,0" : "bridge 1",
		"7,1" : island.instantiate(),
		"7,2" : "bridge 2",
		"7,3" : "bridge 2",
		"7,4" : "bridge 2",
		"7,5" : island.instantiate(),
		"7,6" : "bridge 1",
		"7,7" : island.instantiate(),
		"7,8" : "bridge 1",
		"7,9" : "none",
		"7,10" : island.instantiate(),
		"8,0" : "bridge 1",
		"8,1" : "bridge 1",
		"8,2" : island.instantiate(),
		"8,3" : "bridge 2",
		"8,4" : island.instantiate(),
		"8,5" : "bridge 1",
		"8,6" : island.instantiate(),
		"8,7" : "bridge 1",
		"8,8" : island.instantiate(),
		"8,9" : "bridge 2",
		"8,10" : island.instantiate(),
		"9,0" : "bridge 1",
		"9,1" : "bridge 1",
		"9,2" : "none",
		"9,3" : "none",
		"9,4" : "bridge 1",
		"9,5" : "bridge 1",
		"9,6" : "none",
		"9,7" : "none",
		"9,8" : "bridge 2",
		"9,9" : "none",
		"9,10" : "bridge 2",
		"10,0" : island.instantiate(),
		"10,1" : island.instantiate(),
		"10,2" : "bridge 1",
		"10,3" : "bridge 1",
		"10,4" : island.instantiate(),
		"10,5" : island.instantiate(),
		"10,6" : "bridge 1",
		"10,7" : "bridge 1",
		"10,8" : island.instantiate(),
		"10,9" : "bridge 2",
		"10,10" : island.instantiate(),
		}
	map['0,0'].setUp(4, ["0,4", "6,0"])
	map['0,4'].setUp(3, ["0,7", "0,0"])
	map['0,7'].setUp(2, ["0,10", "0,4"])
	map['0,10'].setUp(2, ["4,10", "0,7"])
	map['1,1'].setUp(3, ["4,1", "1,5"])
	map['1,5'].setUp(3, ["1,1", "1,9"])
	map['1,9'].setUp(2, ["1,5", "3,9"])
	map['2,2'].setUp(1, ["2,4"])
	map['2,4'].setUp(4, ["4,4", "2,2", "2,8"])
	map['2,8'].setUp(3, ["4,8", "2,4"])
	map['3,9'].setUp(1, ["1,9"])
	map['4,1'].setUp(3, ["1,1", "4,4", "7,1"])
	map['4,4'].setUp(4, ["4,1", "4,8", "2,4"])
	map['4,8'].setUp(5, ["4,4", "8,8", "2,8", "4,10"])
	map['4,10'].setUp(4, ["4,8", "0,10", "7,10"])
	map['5,2'].setUp(2, ["5,5"])
	map['5,5'].setUp(4, ["7,5", "5,2", "5,7"])
	map['5,7'].setUp(3, ["7,7", "5,5"])
	map['6,0'].setUp(3, ["0,0", "10,0"])
	map['7,1'].setUp(4, ["4,1", "7,5", "10,1"])
	map['7,5'].setUp(5, ["7,1", "5,5", "10,5", "7,7"])
	map['7,7'].setUp(3, ["7,5", "5,7"])
	map['7,10'].setUp(2, ["4,10"])
	map['8,2'].setUp(2, ["8,4"])
	map['8,4'].setUp(3, ["10,4", "8,2"])
	map['8,6'].setUp(1, ["8,8"])
	map['8,8'].setUp(6, ["4,8", "10,8", "8,6", "8,10"])
	map['8,10'].setUp(4, ["8,8", "10,10"])
	map['10,0'].setUp(1, ["6,0"])
	map['10,1'].setUp(2, ["7,1", "10,4"])
	map['10,4'].setUp(2, ["10,1", "8,4"])
	map['10,5'].setUp(2, ["10,8", "7,5"])
	map['10,8'].setUp(5, ["8,8", "10,5", "10,10"])
	map['10,10'].setUp(4, ["10,8", "8,10"])
	return map


func map11x11_6() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : "bridge 1",
		"0,3" : "bridge 1",
		"0,4" : "bridge 1",
		"0,5" : island.instantiate(),
		"0,6" : "bridge 1",
		"0,7" : "bridge 1",
		"0,8" : "bridge 1",
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : island.instantiate(),
		"1,2" : "bridge 1",
		"1,3" : island.instantiate(),
		"1,4" : "none",
		"1,5" : "bridge 1",
		"1,6" : "none",
		"1,7" : "none",
		"1,8" : "none",
		"1,9" : "none",
		"1,10" : "bridge 2",
		"2,0" : "bridge 2",
		"2,1" : "none",
		"2,2" : "none",
		"2,3" : "bridge 1",
		"2,4" : "none",
		"2,5" : "bridge 1",
		"2,6" : "none",
		"2,7" : "none",
		"2,8" : "none",
		"2,9" : "none",
		"2,10" : "bridge 2",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 2",
		"3,2" : island.instantiate(),
		"3,3" : "bridge 1",
		"3,4" : "none",
		"3,5" : "bridge 1",
		"3,6" : "none",
		"3,7" : "none",
		"3,8" : "none",
		"3,9" : "none",
		"3,10" : "bridge 2",
		"4,0" : island.instantiate(),
		"4,1" : "bridge 2",
		"4,2" : "bridge 2",
		"4,3" : island.instantiate(),
		"4,4" : "bridge 1",
		"4,5" : island.instantiate(),
		"4,6" : "bridge 1",
		"4,7" : "bridge 1",
		"4,8" : "bridge 1",
		"4,9" : "bridge 1",
		"4,10" : island.instantiate(),
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "bridge 2",
		"5,4" : "none",
		"5,5" : "bridge 1",
		"5,6" : island.instantiate(),
		"5,7" : "bridge 2",
		"5,8" : "bridge 2",
		"5,9" : island.instantiate(),
		"5,10" : "bridge 1",
		"6,0" : "bridge 2",
		"6,1" : "none",
		"6,2" : "none",
		"6,3" : "bridge 2",
		"6,4" : "none",
		"6,5" : island.instantiate(),
		"6,6" : "bridge 2",
		"6,7" : "none",
		"6,8" : "none",
		"6,9" : "bridge 2",
		"6,10" : "bridge 1",
		"7,0" : island.instantiate(),
		"7,1" : "bridge 2",
		"7,2" : "bridge 2",
		"7,3" : island.instantiate(),
		"7,4" : "bridge 2",
		"7,5" : "bridge 2",
		"7,6" : island.instantiate(),
		"7,7" : "bridge 1",
		"7,8" : "bridge 1",
		"7,9" : island.instantiate(),
		"7,10" : island.instantiate(),
		"8,0" : "bridge 2",
		"8,1" : "none",
		"8,2" : "none",
		"8,3" : "bridge 1",
		"8,4" : "none",
		"8,5" : "none",
		"8,6" : "bridge 2",
		"8,7" : "none",
		"8,8" : "none",
		"8,9" : "bridge 2",
		"8,10" : "bridge 1",
		"9,0" : "bridge 2",
		"9,1" : "none",
		"9,2" : "none",
		"9,3" : "bridge 1",
		"9,4" : "none",
		"9,5" : "none",
		"9,6" : "bridge 2",
		"9,7" : "none",
		"9,8" : "none",
		"9,9" : "bridge 2",
		"9,10" : "bridge 1",
		"10,0" : island.instantiate(),
		"10,1" : "bridge 1",
		"10,2" : "bridge 1",
		"10,3" : island.instantiate(),
		"10,4" : "bridge 2",
		"10,5" : "bridge 2",
		"10,6" : island.instantiate(),
		"10,7" : "bridge 2",
		"10,8" : "bridge 2",
		"10,9" : island.instantiate(),
		"10,10" : island.instantiate(),
		}
	map['0,0'].setUp(3, ["0,5", "3,0"])
	map['0,5'].setUp(3, ["0,10", "0,0", "4,5"])
	map['0,10'].setUp(3, ["4,10", "0,5"])
	map['1,1'].setUp(1, ["1,3"])
	map['1,3'].setUp(2, ["4,3", "1,1"])
	map['3,0'].setUp(4, ["0,0", "3,2"])
	map['3,2'].setUp(2, ["3,0"])
	map['4,0'].setUp(4, ["4,3", "7,0"])
	map['4,3'].setUp(6, ["1,3", "4,5", "7,3", "4,0"])
	map['4,5'].setUp(4, ["4,10", "4,3", "0,5", "6,5"])
	map['4,10'].setUp(4, ["0,10", "4,5", "7,10"])
	map['5,6'].setUp(4, ["7,6", "5,9"])
	map['5,9'].setUp(4, ["7,9", "5,6"])
	map['6,5'].setUp(1, ["4,5"])
	map['7,0'].setUp(6, ["7,3", "4,0", "10,0"])
	map['7,3'].setUp(7, ["4,3", "7,6", "10,3", "7,0"])
	map['7,6'].setUp(7, ["7,3", "10,6", "5,6", "7,9"])
	map['7,9'].setUp(5, ["10,9", "7,6", "5,9"])
	map['7,10'].setUp(2, ["4,10", "10,10"])
	map['10,0'].setUp(3, ["7,0", "10,3"])
	map['10,3'].setUp(4, ["7,3", "10,6", "10,0"])
	map['10,6'].setUp(6, ["7,6", "10,9", "10,3"])
	map['10,9'].setUp(4, ["10,6", "7,9"])
	map['10,10'].setUp(1, ["7,10"])
	return map


func map13x13_1() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : island.instantiate(),
		"0,4" : island.instantiate(),
		"0,5" : "bridge 2",
		"0,6" : "bridge 2",
		"0,7" : island.instantiate(),
		"0,8" : island.instantiate(),
		"0,9" : "bridge 2",
		"0,10" : "bridge 2",
		"0,11" : island.instantiate(),
		"0,12" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "bridge 2",
		"1,4" : "bridge 1",
		"1,5" : "none",
		"1,6" : "none",
		"1,7" : "bridge 2",
		"1,8" : "bridge 1",
		"1,9" : "none",
		"1,10" : "none",
		"1,11" : "bridge 1",
		"1,12" : "bridge 2",
		"2,0" : "bridge 1",
		"2,1" : "none",
		"2,2" : "none",
		"2,3" : "bridge 2",
		"2,4" : island.instantiate(),
		"2,5" : "bridge 2",
		"2,6" : island.instantiate(),
		"2,7" : "bridge 2",
		"2,8" : island.instantiate(),
		"2,9" : "bridge 2",
		"2,10" : island.instantiate(),
		"2,11" : "bridge 1",
		"2,12" : "bridge 2",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 2",
		"3,2" : "bridge 2",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 2",
		"3,5" : "bridge 2",
		"3,6" : "bridge 2",
		"3,7" : island.instantiate(),
		"3,8" : "bridge 2",
		"3,9" : "bridge 2",
		"3,10" : "bridge 2",
		"3,11" : island.instantiate(),
		"3,12" : island.instantiate(),
		"4,0" : "bridge 2",
		"4,1" : "none",
		"4,2" : "none",
		"4,3" : "bridge 1",
		"4,4" : island.instantiate(),
		"4,5" : "bridge 1",
		"4,6" : island.instantiate(),
		"4,7" : "bridge 1",
		"4,8" : "none",
		"4,9" : "none",
		"4,10" : "none",
		"4,11" : "bridge 1",
		"4,12" : "bridge 1",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "bridge 1",
		"5,4" : "none",
		"5,5" : "none",
		"5,6" : "bridge 1",
		"5,7" : "bridge 1",
		"5,8" : "none",
		"5,9" : "none",
		"5,10" : "none",
		"5,11" : "bridge 1",
		"5,12" : "bridge 1",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 2",
		"6,2" : "bridge 2",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 1",
		"6,5" : "bridge 1",
		"6,6" : island.instantiate(),
		"6,7" : island.instantiate(),
		"6,8" : "bridge 1",
		"6,9" : "bridge 1",
		"6,10" : "bridge 1",
		"6,11" : island.instantiate(),
		"6,12" : island.instantiate(),
		"7,0" : "bridge 2",
		"7,1" : "none",
		"7,2" : "none",
		"7,3" : "none",
		"7,4" : "none",
		"7,5" : "none",
		"7,6" : "none",
		"7,7" : "bridge 1",
		"7,8" : "none",
		"7,9" : "none",
		"7,10" : "none",
		"7,11" : "bridge 1",
		"7,12" : "bridge 2",
		"8,0" : "bridge 2",
		"8,1" : island.instantiate(),
		"8,2" : "bridge 1",
		"8,3" : "bridge 1",
		"8,4" : island.instantiate(),
		"8,5" : "bridge 2",
		"8,6" : "bridge 2",
		"8,7" : island.instantiate(),
		"8,8" : "bridge 1",
		"8,9" : "bridge 1",
		"8,10" : island.instantiate(),
		"8,11" : "bridge 1",
		"8,12" : "bridge 2",
		"9,0" : "bridge 2",
		"9,1" : island.instantiate(),
		"9,2" : "bridge 2",
		"9,3" : "bridge 2",
		"9,4" : island.instantiate(),
		"9,5" : "bridge 2",
		"9,6" : "bridge 2",
		"9,7" : "bridge 2",
		"9,8" : island.instantiate(),
		"9,9" : "bridge 2",
		"9,10" : "bridge 2",
		"9,11" : island.instantiate(),
		"9,12" : island.instantiate(),
		"10,0" : island.instantiate(),
		"10,1" : "bridge 1",
		"10,2" : "bridge 1",
		"10,3" : island.instantiate(),
		"10,4" : "bridge 1",
		"10,5" : island.instantiate(),
		"10,6" : "bridge 2",
		"10,7" : island.instantiate(),
		"10,8" : "bridge 2",
		"10,9" : "none",
		"10,10" : "none",
		"10,11" : "bridge 1",
		"10,12" : "bridge 2",
		"11,0" : "bridge 2",
		"11,1" : "none",
		"11,2" : "none",
		"11,3" : "none",
		"11,4" : "bridge 1",
		"11,5" : "none",
		"11,6" : "none",
		"11,7" : "bridge 2",
		"11,8" : "bridge 2",
		"11,9" : island.instantiate(),
		"11,10" : "bridge 2",
		"11,11" : island.instantiate(),
		"11,12" : "bridge 2",
		"12,0" : island.instantiate(),
		"12,1" : "bridge 2",
		"12,2" : "bridge 2",
		"12,3" : "bridge 2",
		"12,4" : island.instantiate(),
		"12,5" : "bridge 1",
		"12,6" : "bridge 1",
		"12,7" : island.instantiate(),
		"12,8" : island.instantiate(),
		"12,9" : "bridge 1",
		"12,10" : "bridge 1",
		"12,11" : "bridge 1",
		"12,12" : island.instantiate(),
		}
	map['0,0'].setUp(3, ["3,0", "0,3"])
	map['0,3'].setUp(4, ["0,0", "3,3"])
	map['0,4'].setUp(3, ["0,7", "2,4"])
	map['0,7'].setUp(4, ["3,7", "0,4"])
	map['0,8'].setUp(3, ["0,11", "2,8"])
	map['0,11'].setUp(3, ["3,11", "0,8"])
	map['0,12'].setUp(2, ["3,12"])
	map['2,4'].setUp(3, ["0,4", "2,6"])
	map['2,6'].setUp(2, ["2,4"])
	map['2,8'].setUp(3, ["0,8", "2,10"])
	map['2,10'].setUp(2, ["2,8"])
	map['3,0'].setUp(5, ["0,0", "3,3", "6,0"])
	map['3,3'].setUp(7, ["3,7", "3,0", "0,3", "6,3"])
	map['3,7'].setUp(7, ["3,11", "3,3", "6,7", "0,7"])
	map['3,11'].setUp(4, ["3,7", "0,11", "6,11"])
	map['3,12'].setUp(3, ["6,12", "0,12"])
	map['4,4'].setUp(1, ["4,6"])
	map['4,6'].setUp(2, ["6,6", "4,4"])
	map['6,0'].setUp(6, ["3,0", "10,0", "6,3"])
	map['6,3'].setUp(4, ["3,3", "6,6", "6,0"])
	map['6,6'].setUp(2, ["6,3", "4,6"])
	map['6,7'].setUp(3, ["3,7", "8,7", "6,11"])
	map['6,11'].setUp(3, ["3,11", "9,11", "6,7"])
	map['6,12'].setUp(3, ["9,12", "3,12"])
	map['8,1'].setUp(1, ["8,4"])
	map['8,4'].setUp(3, ["8,7", "8,1"])
	map['8,7'].setUp(4, ["6,7", "8,10", "8,4"])
	map['8,10'].setUp(1, ["8,7"])
	map['9,1'].setUp(2, ["9,4"])
	map['9,4'].setUp(5, ["12,4", "9,8", "9,1"])
	map['9,8'].setUp(6, ["9,4", "12,8", "9,11"])
	map['9,11'].setUp(4, ["11,11", "6,11", "9,8"])
	map['9,12'].setUp(4, ["12,12", "6,12"])
	map['10,0'].setUp(5, ["12,0", "10,3", "6,0"])
	map['10,3'].setUp(1, ["10,0"])
	map['10,5'].setUp(2, ["10,7"])
	map['10,7'].setUp(4, ["12,7", "10,5"])
	map['11,9'].setUp(2, ["11,11"])
	map['11,11'].setUp(3, ["9,11", "11,9"])
	map['12,0'].setUp(4, ["10,0", "12,4"])
	map['12,4'].setUp(4, ["12,0", "12,7", "9,4"])
	map['12,7'].setUp(3, ["12,4", "10,7"])
	map['12,8'].setUp(3, ["9,8", "12,12"])
	map['12,12'].setUp(3, ["12,8", "9,12"])
	return map


func map13x13_2() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : island.instantiate(),
		"0,4" : "bridge 1",
		"0,5" : "bridge 1",
		"0,6" : "bridge 1",
		"0,7" : island.instantiate(),
		"0,8" : "bridge 2",
		"0,9" : "bridge 2",
		"0,10" : "bridge 2",
		"0,11" : "bridge 2",
		"0,12" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : "none",
		"1,2" : "none",
		"1,3" : "bridge 1",
		"1,4" : "none",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 1",
		"1,7" : "bridge 1",
		"1,8" : island.instantiate(),
		"1,9" : "bridge 2",
		"1,10" : "bridge 2",
		"1,11" : island.instantiate(),
		"1,12" : "bridge 1",
		"2,0" : "bridge 2",
		"2,1" : island.instantiate(),
		"2,2" : "bridge 1",
		"2,3" : island.instantiate(),
		"2,4" : "bridge 2",
		"2,5" : island.instantiate(),
		"2,6" : "bridge 2",
		"2,7" : island.instantiate(),
		"2,8" : "bridge 1",
		"2,9" : "none",
		"2,10" : "none",
		"2,11" : "bridge 2",
		"2,12" : "bridge 1",
		"3,0" : island.instantiate(),
		"3,1" : "bridge 1",
		"3,2" : "bridge 1",
		"3,3" : "bridge 1",
		"3,4" : island.instantiate(),
		"3,5" : "bridge 2",
		"3,6" : "none",
		"3,7" : "none",
		"3,8" : "bridge 1",
		"3,9" : "none",
		"3,10" : "none",
		"3,11" : "bridge 2",
		"3,12" : island.instantiate(),
		"4,0" : island.instantiate(),
		"4,1" : "bridge 1",
		"4,2" : "bridge 1",
		"4,3" : island.instantiate(),
		"4,4" : "bridge 1",
		"4,5" : island.instantiate(),
		"4,6" : "bridge 1",
		"4,7" : "bridge 1",
		"4,8" : island.instantiate(),
		"4,9" : "bridge 2",
		"4,10" : "bridge 2",
		"4,11" : island.instantiate(),
		"4,12" : "bridge 1",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "none",
		"5,3" : "bridge 2",
		"5,4" : "bridge 1",
		"5,5" : "bridge 1",
		"5,6" : "none",
		"5,7" : "none",
		"5,8" : "bridge 2",
		"5,9" : "none",
		"5,10" : island.instantiate(),
		"5,11" : "bridge 2",
		"5,12" : "bridge 1",
		"6,0" : "bridge 2",
		"6,1" : island.instantiate(),
		"6,2" : "bridge 2",
		"6,3" : island.instantiate(),
		"6,4" : "bridge 1",
		"6,5" : island.instantiate(),
		"6,6" : "bridge 2",
		"6,7" : island.instantiate(),
		"6,8" : "bridge 2",
		"6,9" : "none",
		"6,10" : "bridge 1",
		"6,11" : "bridge 2",
		"6,12" : "bridge 1",
		"7,0" : island.instantiate(),
		"7,1" : "bridge 1",
		"7,2" : "bridge 1",
		"7,3" : "bridge 1",
		"7,4" : island.instantiate(),
		"7,5" : "bridge 1",
		"7,6" : "bridge 1",
		"7,7" : "bridge 1",
		"7,8" : island.instantiate(),
		"7,9" : "bridge 2",
		"7,10" : island.instantiate(),
		"7,11" : "bridge 2",
		"7,12" : "bridge 1",
		"8,0" : "bridge 2",
		"8,1" : island.instantiate(),
		"8,2" : "bridge 1",
		"8,3" : island.instantiate(),
		"8,4" : "bridge 2",
		"8,5" : island.instantiate(),
		"8,6" : "bridge 1",
		"8,7" : "bridge 1",
		"8,8" : island.instantiate(),
		"8,9" : "bridge 2",
		"8,10" : "bridge 2",
		"8,11" : island.instantiate(),
		"8,12" : island.instantiate(),
		"9,0" : "bridge 2",
		"9,1" : "bridge 2",
		"9,2" : "none",
		"9,3" : "bridge 2",
		"9,4" : "bridge 2",
		"9,5" : "bridge 1",
		"9,6" : "none",
		"9,7" : "none",
		"9,8" : "bridge 2",
		"9,9" : "none",
		"9,10" : "none",
		"9,11" : "bridge 2",
		"9,12" : "bridge 1",
		"10,0" : island.instantiate(),
		"10,1" : "bridge 2",
		"10,2" : "none",
		"10,3" : island.instantiate(),
		"10,4" : "bridge 2",
		"10,5" : island.instantiate(),
		"10,6" : "bridge 1",
		"10,7" : island.instantiate(),
		"10,8" : "bridge 2",
		"10,9" : "none",
		"10,10" : "none",
		"10,11" : "bridge 2",
		"10,12" : "bridge 1",
		"11,0" : "bridge 1",
		"11,1" : island.instantiate(),
		"11,2" : "bridge 2",
		"11,3" : "bridge 2",
		"11,4" : island.instantiate(),
		"11,5" : "bridge 1",
		"11,6" : "bridge 1",
		"11,7" : "bridge 1",
		"11,8" : island.instantiate(),
		"11,9" : "bridge 1",
		"11,10" : "bridge 1",
		"11,11" : island.instantiate(),
		"11,12" : "bridge 1",
		"12,0" : island.instantiate(),
		"12,1" : "bridge 1",
		"12,2" : "bridge 1",
		"12,3" : island.instantiate(),
		"12,4" : "bridge 1",
		"12,5" : "bridge 1",
		"12,6" : island.instantiate(),
		"12,7" : "bridge 1",
		"12,8" : "bridge 1",
		"12,9" : island.instantiate(),
		"12,10" : "bridge 1",
		"12,11" : "bridge 1",
		"12,12" : island.instantiate(),
		}
	map['0,0'].setUp(4, ["3,0", "0,3"])
	map['0,3'].setUp(4, ["0,0", "2,3", "0,7"])
	map['0,7'].setUp(3, ["0,3", "0,12"])
	map['0,12'].setUp(3, ["3,12", "0,7"])
	map['1,5'].setUp(1, ["1,8"])
	map['1,8'].setUp(4, ["4,8", "1,11", "1,5"])
	map['1,11'].setUp(4, ["4,11", "1,8"])
	map['2,1'].setUp(1, ["2,3"])
	map['2,3'].setUp(4, ["0,3", "2,5", "2,1"])
	map['2,5'].setUp(6, ["2,3", "2,7", "4,5"])
	map['2,7'].setUp(2, ["2,5"])
	map['3,0'].setUp(3, ["3,4", "0,0"])
	map['3,4'].setUp(2, ["7,4", "3,0"])
	map['3,12'].setUp(2, ["8,12", "0,12"])
	map['4,0'].setUp(3, ["7,0", "4,3"])
	map['4,3'].setUp(3, ["4,0", "6,3"])
	map['4,5'].setUp(4, ["4,8", "6,5", "2,5"])
	map['4,8'].setUp(6, ["4,11", "4,5", "7,8", "1,8"])
	map['4,11'].setUp(6, ["8,11", "1,11", "4,8"])
	map['5,10'].setUp(1, ["7,10"])
	map['6,1'].setUp(2, ["6,3"])
	map['6,3'].setUp(4, ["4,3", "6,1"])
	map['6,5'].setUp(3, ["4,5", "6,7"])
	map['6,7'].setUp(2, ["6,5"])
	map['7,0'].setUp(5, ["7,4", "10,0", "4,0"])
	map['7,4'].setUp(5, ["11,4", "7,0", "7,8", "3,4"])
	map['7,8'].setUp(5, ["7,4", "4,8", "7,10"])
	map['7,10'].setUp(3, ["7,8", "5,10"])
	map['8,1'].setUp(3, ["11,1", "8,3"])
	map['8,3'].setUp(3, ["8,1", "10,3"])
	map['8,5'].setUp(2, ["8,8", "10,5"])
	map['8,8'].setUp(5, ["8,11", "11,8", "8,5"])
	map['8,11'].setUp(6, ["11,11", "4,11", "8,8"])
	map['8,12'].setUp(2, ["12,12", "3,12"])
	map['10,0'].setUp(3, ["7,0", "12,0"])
	map['10,3'].setUp(2, ["8,3"])
	map['10,5'].setUp(2, ["8,5", "10,7"])
	map['10,7'].setUp(1, ["10,5"])
	map['11,1'].setUp(4, ["11,4", "8,1"])
	map['11,4'].setUp(5, ["11,1", "7,4", "11,8"])
	map['11,8'].setUp(4, ["11,11", "11,4", "8,8"])
	map['11,11'].setUp(3, ["8,11", "11,8"])
	map['12,0'].setUp(2, ["10,0", "12,3"])
	map['12,3'].setUp(2, ["12,0", "12,6"])
	map['12,6'].setUp(2, ["12,3", "12,9"])
	map['12,9'].setUp(2, ["12,6", "12,12"])
	map['12,12'].setUp(2, ["12,9", "8,12"])
	return map


func map13x13_3() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : island.instantiate(),
		"0,4" : "bridge 2",
		"0,5" : "bridge 2",
		"0,6" : island.instantiate(),
		"0,7" : "bridge 1",
		"0,8" : "bridge 1",
		"0,9" : island.instantiate(),
		"0,10" : "bridge 2",
		"0,11" : "bridge 2",
		"0,12" : island.instantiate(),
		"1,0" : "bridge 2",
		"1,1" : island.instantiate(),
		"1,2" : "bridge 2",
		"1,3" : "bridge 2",
		"1,4" : island.instantiate(),
		"1,5" : "bridge 1",
		"1,6" : "bridge 1",
		"1,7" : island.instantiate(),
		"1,8" : "bridge 1",
		"1,9" : "bridge 1",
		"1,10" : "bridge 1",
		"1,11" : island.instantiate(),
		"1,12" : "bridge 1",
		"2,0" : "bridge 2",
		"2,1" : "bridge 1",
		"2,2" : island.instantiate(),
		"2,3" : "none",
		"2,4" : "bridge 2",
		"2,5" : "none",
		"2,6" : "none",
		"2,7" : "bridge 2",
		"2,8" : island.instantiate(),
		"2,9" : "bridge 1",
		"2,10" : island.instantiate(),
		"2,11" : "bridge 1",
		"2,12" : island.instantiate(),
		"3,0" : "bridge 2",
		"3,1" : "bridge 1",
		"3,2" : "bridge 2",
		"3,3" : "none",
		"3,4" : "bridge 2",
		"3,5" : "none",
		"3,6" : "none",
		"3,7" : "bridge 2",
		"3,8" : "bridge 1",
		"3,9" : "none",
		"3,10" : "bridge 1",
		"3,11" : "none",
		"3,12" : "bridge 2",
		"4,0" : island.instantiate(),
		"4,1" : "bridge 1",
		"4,2" : "bridge 2",
		"4,3" : "none",
		"4,4" : "bridge 2",
		"4,5" : "none",
		"4,6" : "none",
		"4,7" : "bridge 2",
		"4,8" : island.instantiate(),
		"4,9" : "none",
		"4,10" : "bridge 1",
		"4,11" : "none",
		"4,12" : "bridge 2",
		"5,0" : "bridge 2",
		"5,1" : "bridge 1",
		"5,2" : island.instantiate(),
		"5,3" : "bridge 2",
		"5,4" : island.instantiate(),
		"5,5" : "bridge 2",
		"5,6" : "bridge 2",
		"5,7" : island.instantiate(),
		"5,8" : "bridge 2",
		"5,9" : "bridge 2",
		"5,10" : island.instantiate(),
		"5,11" : "bridge 2",
		"5,12" : island.instantiate(),
		"6,0" : "bridge 2",
		"6,1" : island.instantiate(),
		"6,2" : "bridge 2",
		"6,3" : "none",
		"6,4" : "bridge 1",
		"6,5" : "none",
		"6,6" : "none",
		"6,7" : "bridge 2",
		"6,8" : "none",
		"6,9" : "none",
		"6,10" : "bridge 2",
		"6,11" : "none",
		"6,12" : "bridge 2",
		"7,0" : island.instantiate(),
		"7,1" : "bridge 1",
		"7,2" : island.instantiate(),
		"7,3" : "none",
		"7,4" : "bridge 1",
		"7,5" : "none",
		"7,6" : "none",
		"7,7" : "bridge 2",
		"7,8" : "none",
		"7,9" : "none",
		"7,10" : "bridge 2",
		"7,11" : "none",
		"7,12" : "bridge 2",
		"8,0" : "bridge 2",
		"8,1" : island.instantiate(),
		"8,2" : "bridge 1",
		"8,3" : "bridge 1",
		"8,4" : island.instantiate(),
		"8,5" : "bridge 1",
		"8,6" : "bridge 1",
		"8,7" : island.instantiate(),
		"8,8" : "bridge 2",
		"8,9" : "bridge 2",
		"8,10" : island.instantiate(),
		"8,11" : "bridge 1",
		"8,12" : island.instantiate(),
		"9,0" : "bridge 2",
		"9,1" : "bridge 2",
		"9,2" : "none",
		"9,3" : "none",
		"9,4" : "bridge 1",
		"9,5" : "none",
		"9,6" : "none",
		"9,7" : "bridge 2",
		"9,8" : "none",
		"9,9" : "none",
		"9,10" : "bridge 2",
		"9,11" : "none",
		"9,12" : "bridge 2",
		"10,0" : island.instantiate(),
		"10,1" : "bridge 2",
		"10,2" : "none",
		"10,3" : "none",
		"10,4" : "bridge 1",
		"10,5" : "none",
		"10,6" : "none",
		"10,7" : "bridge 2",
		"10,8" : "none",
		"10,9" : "none",
		"10,10" : "bridge 2",
		"10,11" : "none",
		"10,12" : "bridge 2",
		"11,0" : "bridge 2",
		"11,1" : island.instantiate(),
		"11,2" : "bridge 2",
		"11,3" : "bridge 2",
		"11,4" : island.instantiate(),
		"11,5" : "bridge 1",
		"11,6" : "bridge 1",
		"11,7" : island.instantiate(),
		"11,8" : "bridge 1",
		"11,9" : "bridge 1",
		"11,10" : island.instantiate(),
		"11,11" : "bridge 2",
		"11,12" : island.instantiate(),
		"12,0" : island.instantiate(),
		"12,1" : "bridge 1",
		"12,2" : "bridge 1",
		"12,3" : island.instantiate(),
		"12,4" : "bridge 2",
		"12,5" : "bridge 2",
		"12,6" : island.instantiate(),
		"12,7" : "bridge 1",
		"12,8" : "bridge 1",
		"12,9" : "bridge 1",
		"12,10" : island.instantiate(),
		"12,11" : "bridge 1",
		"12,12" : island.instantiate(),
		}
	map['0,0'].setUp(4, ["0,3", "4,0"])
	map['0,3'].setUp(4, ["0,6", "0,0"])
	map['0,6'].setUp(3, ["0,9", "0,3"])
	map['0,9'].setUp(3, ["0,12", "0,6"])
	map['0,12'].setUp(3, ["2,12", "0,9"])
	map['1,1'].setUp(3, ["1,4", "6,1"])
	map['1,4'].setUp(5, ["5,4", "1,7", "1,1"])
	map['1,7'].setUp(4, ["5,7", "1,11", "1,4"])
	map['1,11'].setUp(1, ["1,7"])
	map['2,2'].setUp(2, ["5,2"])
	map['2,8'].setUp(2, ["2,10", "4,8"])
	map['2,10'].setUp(3, ["5,10", "2,12", "2,8"])
	map['2,12'].setUp(4, ["2,10", "5,12", "0,12"])
	map['4,0'].setUp(4, ["0,0", "7,0"])
	map['4,8'].setUp(1, ["2,8"])
	map['5,2'].setUp(6, ["5,4", "7,2", "2,2"])
	map['5,4'].setUp(7, ["5,7", "8,4", "1,4", "5,2"])
	map['5,7'].setUp(8, ["8,7", "5,10", "1,7", "5,4"])
	map['5,10'].setUp(7, ["5,7", "2,10", "8,10", "5,12"])
	map['5,12'].setUp(6, ["5,10", "2,12", "8,12"])
	map['6,1'].setUp(2, ["1,1", "8,1"])
	map['7,0'].setUp(4, ["4,0", "10,0"])
	map['7,2'].setUp(2, ["5,2"])
	map['8,1'].setUp(4, ["8,4", "6,1", "11,1"])
	map['8,4'].setUp(4, ["5,4", "8,7", "11,4", "8,1"])
	map['8,7'].setUp(7, ["5,7", "11,7", "8,10", "8,4"])
	map['8,10'].setUp(7, ["11,10", "5,10", "8,7", "8,12"])
	map['8,12'].setUp(5, ["8,10", "5,12", "11,12"])
	map['10,0'].setUp(4, ["7,0", "12,0"])
	map['11,1'].setUp(4, ["8,1", "11,4"])
	map['11,4'].setUp(4, ["11,7", "8,4", "11,1"])
	map['11,7'].setUp(4, ["8,7", "11,10", "11,4"])
	map['11,10'].setUp(5, ["8,10", "11,7", "11,12"])
	map['11,12'].setUp(4, ["11,10", "8,12"])
	map['12,0'].setUp(3, ["10,0", "12,3"])
	map['12,3'].setUp(3, ["12,0", "12,6"])
	map['12,6'].setUp(3, ["12,3", "12,10"])
	map['12,10'].setUp(2, ["12,6", "12,12"])
	map['12,12'].setUp(1, ["12,10"])
	return map


func map13x13_4() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : "bridge 2",
		"0,3" : island.instantiate(),
		"0,4" : "bridge 2",
		"0,5" : island.instantiate(),
		"0,6" : "bridge 1",
		"0,7" : island.instantiate(),
		"0,8" : "bridge 1",
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"0,11" : "bridge 1",
		"0,12" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : island.instantiate(),
		"1,3" : "bridge 1",
		"1,4" : island.instantiate(),
		"1,5" : "bridge 2",
		"1,6" : "none",
		"1,7" : "none",
		"1,8" : "none",
		"1,9" : "none",
		"1,10" : "bridge 1",
		"1,11" : "none",
		"1,12" : "bridge 1",
		"2,0" : island.instantiate(),
		"2,1" : "none",
		"2,2" : "bridge 2",
		"2,3" : "none",
		"2,4" : "bridge 2",
		"2,5" : "bridge 2",
		"2,6" : island.instantiate(),
		"2,7" : "bridge 2",
		"2,8" : "bridge 2",
		"2,9" : "bridge 2",
		"2,10" : island.instantiate(),
		"2,11" : "bridge 2",
		"2,12" : island.instantiate(),
		"3,0" : "bridge 2",
		"3,1" : "none",
		"3,2" : "bridge 2",
		"3,3" : "none",
		"3,4" : island.instantiate(),
		"3,5" : "bridge 2",
		"3,6" : "bridge 1",
		"3,7" : "none",
		"3,8" : "none",
		"3,9" : "none",
		"3,10" : "bridge 2",
		"3,11" : "none",
		"3,12" : "bridge 1",
		"4,0" : island.instantiate(),
		"4,1" : "bridge 2",
		"4,2" : island.instantiate(),
		"4,3" : "bridge 1",
		"4,4" : "bridge 1",
		"4,5" : island.instantiate(),
		"4,6" : "bridge 1",
		"4,7" : "none",
		"4,8" : "none",
		"4,9" : "none",
		"4,10" : "bridge 2",
		"4,11" : "none",
		"4,12" : "bridge 1",
		"5,0" : "bridge 2",
		"5,1" : "none",
		"5,2" : "bridge 2",
		"5,3" : island.instantiate(),
		"5,4" : "bridge 1",
		"5,5" : "bridge 1",
		"5,6" : island.instantiate(),
		"5,7" : "bridge 2",
		"5,8" : "bridge 2",
		"5,9" : "bridge 2",
		"5,10" : island.instantiate(),
		"5,11" : "bridge 2",
		"5,12" : island.instantiate(),
		"6,0" : "bridge 2",
		"6,1" : "none",
		"6,2" : "bridge 2",
		"6,3" : "bridge 2",
		"6,4" : "none",
		"6,5" : "none",
		"6,6" : "bridge 1",
		"6,7" : "none",
		"6,8" : "none",
		"6,9" : "none",
		"6,10" : "bridge 2",
		"6,11" : "none",
		"6,12" : "bridge 1",
		"7,0" : "bridge 2",
		"7,1" : "none",
		"7,2" : "bridge 2",
		"7,3" : island.instantiate(),
		"7,4" : "bridge 2",
		"7,5" : island.instantiate(),
		"7,6" : "bridge 1",
		"7,7" : "none",
		"7,8" : "none",
		"7,9" : "none",
		"7,10" : "bridge 2",
		"7,11" : "none",
		"7,12" : "bridge 1",
		"8,0" : island.instantiate(),
		"8,1" : "bridge 2",
		"8,2" : island.instantiate(),
		"8,3" : "bridge 1",
		"8,4" : "bridge 1",
		"8,5" : "bridge 1",
		"8,6" : island.instantiate(),
		"8,7" : "bridge 1",
		"8,8" : "bridge 1",
		"8,9" : "bridge 1",
		"8,10" : island.instantiate(),
		"8,11" : "bridge 1",
		"8,12" : island.instantiate(),
		"9,0" : "bridge 2",
		"9,1" : "none",
		"9,2" : "bridge 1",
		"9,3" : island.instantiate(),
		"9,4" : "bridge 1",
		"9,5" : "bridge 1",
		"9,6" : "bridge 1",
		"9,7" : "bridge 1",
		"9,8" : "bridge 1",
		"9,9" : island.instantiate(),
		"9,10" : "bridge 2",
		"9,11" : "none",
		"9,12" : "bridge 2",
		"10,0" : "bridge 2",
		"10,1" : "none",
		"10,2" : "bridge 1",
		"10,3" : "bridge 1",
		"10,4" : "none",
		"10,5" : "none",
		"10,6" : "none",
		"10,7" : "none",
		"10,8" : "none",
		"10,9" : "none",
		"10,10" : "bridge 2",
		"10,11" : "none",
		"10,12" : "bridge 2",
		"11,0" : "bridge 2",
		"11,1" : "none",
		"11,2" : island.instantiate(),
		"11,3" : island.instantiate(),
		"11,4" : "bridge 2",
		"11,5" : "bridge 2",
		"11,6" : "bridge 2",
		"11,7" : "bridge 2",
		"11,8" : "bridge 2",
		"11,9" : "bridge 2",
		"11,10" : island.instantiate(),
		"11,11" : "bridge 2",
		"11,12" : island.instantiate(),
		"12,0" : island.instantiate(),
		"12,1" : "bridge 2",
		"12,2" : "bridge 2",
		"12,3" : island.instantiate(),
		"12,4" : "bridge 1",
		"12,5" : "bridge 1",
		"12,6" : "bridge 1",
		"12,7" : island.instantiate(),
		"12,8" : "bridge 2",
		"12,9" : "bridge 2",
		"12,10" : island.instantiate(),
		"12,11" : "bridge 2",
		"12,12" : island.instantiate(),
		}
	map['0,0'].setUp(3, ["2,0", "0,3"])
	map['0,3'].setUp(4, ["0,0", "0,5"])
	map['0,5'].setUp(5, ["4,5", "0,3", "0,7"])
	map['0,7'].setUp(2, ["0,10", "0,5"])
	map['0,10'].setUp(3, ["0,7", "0,12", "2,10"])
	map['0,12'].setUp(2, ["2,12", "0,10"])
	map['1,2'].setUp(3, ["4,2", "1,4"])
	map['1,4'].setUp(3, ["1,2", "3,4"])
	map['2,0'].setUp(3, ["0,0", "4,0"])
	map['2,6'].setUp(3, ["5,6", "2,10"])
	map['2,10'].setUp(7, ["2,6", "2,12", "5,10", "0,10"])
	map['2,12'].setUp(4, ["5,12", "0,12", "2,10"])
	map['3,4'].setUp(2, ["1,4"])
	map['4,0'].setUp(6, ["2,0", "8,0", "4,2"])
	map['4,2'].setUp(7, ["8,2", "4,5", "1,2", "4,0"])
	map['4,5'].setUp(3, ["4,2", "0,5"])
	map['5,3'].setUp(3, ["5,6", "7,3"])
	map['5,6'].setUp(5, ["8,6", "5,10", "2,6", "5,3"])
	map['5,10'].setUp(8, ["5,6", "8,10", "5,12", "2,10"])
	map['5,12'].setUp(4, ["5,10", "2,12", "8,12"])
	map['7,3'].setUp(4, ["5,3", "7,5"])
	map['7,5'].setUp(2, ["7,3"])
	map['8,0'].setUp(6, ["8,2", "12,0", "4,0"])
	map['8,2'].setUp(6, ["8,6", "11,2", "8,0", "4,2"])
	map['8,6'].setUp(3, ["8,2", "5,6", "8,10"])
	map['8,10'].setUp(6, ["8,6", "11,10", "5,10", "8,12"])
	map['8,12'].setUp(4, ["8,10", "11,12", "5,12"])
	map['9,3'].setUp(2, ["11,3", "9,9"])
	map['9,9'].setUp(1, ["9,3"])
	map['11,2'].setUp(1, ["8,2"])
	map['11,3'].setUp(3, ["11,10", "9,3"])
	map['11,10'].setUp(6, ["8,10", "11,3", "11,12"])
	map['11,12'].setUp(4, ["11,10", "8,12"])
	map['12,0'].setUp(4, ["8,0", "12,3"])
	map['12,3'].setUp(3, ["12,0", "12,7"])
	map['12,7'].setUp(3, ["12,3", "12,10"])
	map['12,10'].setUp(4, ["12,7", "12,12"])
	map['12,12'].setUp(2, ["12,10"])
	return map


func map13x13_5() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 1",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 2",
		"0,4" : "bridge 2",
		"0,5" : island.instantiate(),
		"0,6" : "bridge 1",
		"0,7" : "bridge 1",
		"0,8" : "bridge 1",
		"0,9" : "bridge 1",
		"0,10" : island.instantiate(),
		"0,11" : "bridge 1",
		"0,12" : island.instantiate(),
		"1,0" : "bridge 1",
		"1,1" : "none",
		"1,2" : "bridge 1",
		"1,3" : island.instantiate(),
		"1,4" : "none",
		"1,5" : "bridge 1",
		"1,6" : island.instantiate(),
		"1,7" : "bridge 1",
		"1,8" : "bridge 1",
		"1,9" : island.instantiate(),
		"1,10" : "bridge 1",
		"1,11" : "none",
		"1,12" : "bridge 1",
		"2,0" : "bridge 1",
		"2,1" : "none",
		"2,2" : "bridge 1",
		"2,3" : "bridge 1",
		"2,4" : "none",
		"2,5" : "bridge 1",
		"2,6" : "bridge 1",
		"2,7" : "none",
		"2,8" : "none",
		"2,9" : "bridge 2",
		"2,10" : "bridge 1",
		"2,11" : "none",
		"2,12" : "bridge 1",
		"3,0" : island.instantiate(),
		"3,1" : "none",
		"3,2" : "bridge 1",
		"3,3" : island.instantiate(),
		"3,4" : "bridge 1",
		"3,5" : island.instantiate(),
		"3,6" : island.instantiate(),
		"3,7" : "bridge 2",
		"3,8" : island.instantiate(),
		"3,9" : "bridge 2",
		"3,10" : island.instantiate(),
		"3,11" : "bridge 1",
		"3,12" : island.instantiate(),
		"4,0" : island.instantiate(),
		"4,1" : "bridge 2",
		"4,2" : island.instantiate(),
		"4,3" : "bridge 2",
		"4,4" : "bridge 2",
		"4,5" : island.instantiate(),
		"4,6" : "bridge 2",
		"4,7" : "bridge 2",
		"4,8" : "bridge 2",
		"4,9" : island.instantiate(),
		"4,10" : "bridge 1",
		"4,11" : "none",
		"4,12" : "bridge 2",
		"5,0" : "bridge 1",
		"5,1" : "none",
		"5,2" : "bridge 1",
		"5,3" : "none",
		"5,4" : "none",
		"5,5" : "bridge 1",
		"5,6" : "none",
		"5,7" : "none",
		"5,8" : "none",
		"5,9" : "bridge 2",
		"5,10" : "bridge 1",
		"5,11" : "none",
		"5,12" : "bridge 2",
		"6,0" : "bridge 1",
		"6,1" : "none",
		"6,2" : "bridge 1",
		"6,3" : "none",
		"6,4" : "none",
		"6,5" : "bridge 1",
		"6,6" : island.instantiate(),
		"6,7" : "bridge 2",
		"6,8" : "bridge 2",
		"6,9" : island.instantiate(),
		"6,10" : island.instantiate(),
		"6,11" : "bridge 1",
		"6,12" : island.instantiate(),
		"7,0" : island.instantiate(),
		"7,1" : "bridge 1",
		"7,2" : island.instantiate(),
		"7,3" : "bridge 2",
		"7,4" : "bridge 2",
		"7,5" : island.instantiate(),
		"7,6" : "bridge 2",
		"7,7" : "bridge 2",
		"7,8" : "bridge 2",
		"7,9" : "bridge 2",
		"7,10" : island.instantiate(),
		"7,11" : "none",
		"7,12" : "bridge 1",
		"8,0" : "bridge 1",
		"8,1" : "none",
		"8,2" : "bridge 1",
		"8,3" : island.instantiate(),
		"8,4" : "none",
		"8,5" : "bridge 2",
		"8,6" : "none",
		"8,7" : "none",
		"8,8" : "none",
		"8,9" : "none",
		"8,10" : "none",
		"8,11" : "none",
		"8,12" : "bridge 1",
		"9,0" : "bridge 1",
		"9,1" : "none",
		"9,2" : "bridge 1",
		"9,3" : "bridge 2",
		"9,4" : "none",
		"9,5" : "bridge 2",
		"9,6" : island.instantiate(),
		"9,7" : "bridge 1",
		"9,8" : "bridge 1",
		"9,9" : island.instantiate(),
		"9,10" : "bridge 1",
		"9,11" : "bridge 1",
		"9,12" : island.instantiate(),
		"10,0" : "bridge 1",
		"10,1" : "none",
		"10,2" : "bridge 1",
		"10,3" : island.instantiate(),
		"10,4" : "bridge 1",
		"10,5" : island.instantiate(),
		"10,6" : "bridge 1",
		"10,7" : "none",
		"10,8" : "none",
		"10,9" : "bridge 1",
		"10,10" : island.instantiate(),
		"10,11" : "none",
		"10,12" : "bridge 2",
		"11,0" : "bridge 1",
		"11,1" : "none",
		"11,2" : island.instantiate(),
		"11,3" : "bridge 2",
		"11,4" : "bridge 2",
		"11,5" : island.instantiate(),
		"11,6" : "bridge 1",
		"11,7" : island.instantiate(),
		"11,8" : "bridge 2",
		"11,9" : island.instantiate(),
		"11,10" : "bridge 2",
		"11,11" : "none",
		"11,12" : "bridge 2",
		"12,0" : island.instantiate(),
		"12,1" : "bridge 2",
		"12,2" : "bridge 2",
		"12,3" : "bridge 2",
		"12,4" : "bridge 2",
		"12,5" : "bridge 2",
		"12,6" : island.instantiate(),
		"12,7" : "bridge 1",
		"12,8" : "bridge 1",
		"12,9" : "bridge 1",
		"12,10" : island.instantiate(),
		"12,11" : "bridge 2",
		"12,12" : island.instantiate(),
		}
	map['0,0'].setUp(2, ["0,2", "3,0"])
	map['0,2'].setUp(4, ["0,0", "4,2", "0,5"])
	map['0,5'].setUp(4, ["0,2", "3,5", "0,10"])
	map['0,10'].setUp(3, ["0,5", "0,12", "3,10"])
	map['0,12'].setUp(2, ["0,10", "3,12"])
	map['1,3'].setUp(1, ["3,3"])
	map['1,6'].setUp(2, ["1,9", "3,6"])
	map['1,9'].setUp(3, ["4,9", "1,6"])
	map['3,0'].setUp(1, ["0,0"])
	map['3,3'].setUp(2, ["3,5", "1,3"])
	map['3,5'].setUp(2, ["0,5", "3,3"])
	map['3,6'].setUp(3, ["1,6", "3,8"])
	map['3,8'].setUp(2, ["3,6"])
	map['3,10'].setUp(3, ["0,10", "6,10", "3,12"])
	map['3,12'].setUp(4, ["6,12", "0,12", "3,10"])
	map['4,0'].setUp(3, ["4,2", "7,0"])
	map['4,2'].setUp(6, ["0,2", "7,2", "4,0", "4,5"])
	map['4,5'].setUp(5, ["4,2", "4,9", "7,5"])
	map['4,9'].setUp(6, ["6,9", "1,9", "4,5"])
	map['6,6'].setUp(2, ["6,9"])
	map['6,9'].setUp(4, ["4,9", "6,6"])
	map['6,10'].setUp(2, ["6,12", "3,10"])
	map['6,12'].setUp(4, ["6,10", "9,12", "3,12"])
	map['7,0'].setUp(3, ["7,2", "12,0", "4,0"])
	map['7,2'].setUp(5, ["4,2", "11,2", "7,0", "7,5"])
	map['7,5'].setUp(7, ["7,2", "7,10", "10,5", "4,5"])
	map['7,10'].setUp(2, ["7,5"])
	map['8,3'].setUp(2, ["10,3"])
	map['9,6'].setUp(2, ["9,9", "12,6"])
	map['9,9'].setUp(3, ["9,12", "9,6", "11,9"])
	map['9,12'].setUp(4, ["6,12", "9,9", "12,12"])
	map['10,3'].setUp(3, ["10,5", "8,3"])
	map['10,5'].setUp(3, ["7,5", "10,3"])
	map['10,10'].setUp(2, ["12,10"])
	map['11,2'].setUp(3, ["7,2", "11,5"])
	map['11,5'].setUp(2, ["11,2"])
	map['11,7'].setUp(2, ["11,9"])
	map['11,9'].setUp(3, ["9,9", "11,7"])
	map['12,0'].setUp(3, ["7,0", "12,6"])
	map['12,6'].setUp(4, ["12,0", "12,10", "9,6"])
	map['12,10'].setUp(5, ["12,6", "12,12", "10,10"])
	map['12,12'].setUp(4, ["12,10", "9,12"])
	return map


func map13x13_6() -> Dictionary:
	var map = {
		"0,0" : island.instantiate(),
		"0,1" : "bridge 2",
		"0,2" : island.instantiate(),
		"0,3" : "bridge 2",
		"0,4" : "bridge 2",
		"0,5" : "bridge 2",
		"0,6" : island.instantiate(),
		"0,7" : "bridge 2",
		"0,8" : "bridge 2",
		"0,9" : island.instantiate(),
		"0,10" : "bridge 1",
		"0,11" : "bridge 1",
		"0,12" : island.instantiate(),
		"1,0" : island.instantiate(),
		"1,1" : "bridge 1",
		"1,2" : "bridge 1",
		"1,3" : "bridge 1",
		"1,4" : "bridge 1",
		"1,5" : island.instantiate(),
		"1,6" : "bridge 1",
		"1,7" : "none",
		"1,8" : "none",
		"1,9" : "none",
		"1,10" : "none",
		"1,11" : "none",
		"1,12" : "bridge 1",
		"2,0" : "bridge 1",
		"2,1" : island.instantiate(),
		"2,2" : "bridge 2",
		"2,3" : island.instantiate(),
		"2,4" : "bridge 2",
		"2,5" : "bridge 2",
		"2,6" : island.instantiate(),
		"2,7" : "bridge 1",
		"2,8" : island.instantiate(),
		"2,9" : "bridge 1",
		"2,10" : "bridge 1",
		"2,11" : island.instantiate(),
		"2,12" : "bridge 1",
		"3,0" : "bridge 1",
		"3,1" : "bridge 1",
		"3,2" : "none",
		"3,3" : "bridge 2",
		"3,4" : "none",
		"3,5" : "none",
		"3,6" : "bridge 1",
		"3,7" : "none",
		"3,8" : "bridge 2",
		"3,9" : island.instantiate(),
		"3,10" : "bridge 2",
		"3,11" : "bridge 2",
		"3,12" : island.instantiate(),
		"4,0" : "bridge 1",
		"4,1" : island.instantiate(),
		"4,2" : "none",
		"4,3" : "bridge 2",
		"4,4" : island.instantiate(),
		"4,5" : "bridge 1",
		"4,6" : island.instantiate(),
		"4,7" : "none",
		"4,8" : "bridge 2",
		"4,9" : "none",
		"4,10" : "none",
		"4,11" : "none",
		"4,12" : "bridge 1",
		"5,0" : island.instantiate(),
		"5,1" : "bridge 2",
		"5,2" : "bridge 2",
		"5,3" : island.instantiate(),
		"5,4" : "bridge 2",
		"5,5" : "bridge 2",
		"5,6" : "bridge 2",
		"5,7" : "bridge 2",
		"5,8" : island.instantiate(),
		"5,9" : "bridge 2",
		"5,10" : "bridge 2",
		"5,11" : island.instantiate(),
		"5,12" : "bridge 1",
		"6,0" : island.instantiate(),
		"6,1" : "bridge 1",
		"6,2" : island.instantiate(),
		"6,3" : "bridge 1",
		"6,4" : island.instantiate(),
		"6,5" : "bridge 2",
		"6,6" : island.instantiate(),
		"6,7" : "bridge 1",
		"6,8" : island.instantiate(),
		"6,9" : island.instantiate(),
		"6,10" : "bridge 1",
		"6,11" : "bridge 1",
		"6,12" : island.instantiate(),
		"7,0" : "bridge 1",
		"7,1" : "none",
		"7,2" : "bridge 1",
		"7,3" : "bridge 1",
		"7,4" : "bridge 1",
		"7,5" : "none",
		"7,6" : "bridge 1",
		"7,7" : "none",
		"7,8" : "bridge 1",
		"7,9" : "bridge 2",
		"7,10" : island.instantiate(),
		"7,11" : "none",
		"7,12" : "bridge 2",
		"8,0" : "bridge 1",
		"8,1" : "none",
		"8,2" : island.instantiate(),
		"8,3" : "bridge 1",
		"8,4" : island.instantiate(),
		"8,5" : "none",
		"8,6" : "bridge 1",
		"8,7" : "none",
		"8,8" : "bridge 1",
		"8,9" : "bridge 2",
		"8,10" : "bridge 1",
		"8,11" : "none",
		"8,12" : "bridge 2",
		"9,0" : island.instantiate(),
		"9,1" : "bridge 1",
		"9,2" : "bridge 1",
		"9,3" : island.instantiate(),
		"9,4" : "bridge 1",
		"9,5" : "bridge 1",
		"9,6" : island.instantiate(),
		"9,7" : "bridge 1",
		"9,8" : island.instantiate(),
		"9,9" : "bridge 2",
		"9,10" : island.instantiate(),
		"9,11" : "bridge 2",
		"9,12" : island.instantiate(),
		"10,0" : "bridge 1",
		"10,1" : "none",
		"10,2" : "none",
		"10,3" : "bridge 2",
		"10,4" : "none",
		"10,5" : "none",
		"10,6" : "bridge 2",
		"10,7" : "none",
		"10,8" : "bridge 2",
		"10,9" : island.instantiate(),
		"10,10" : "bridge 2",
		"10,11" : island.instantiate(),
		"10,12" : "bridge 2",
		"11,0" : "bridge 1",
		"11,1" : "none",
		"11,2" : "none",
		"11,3" : "bridge 2",
		"11,4" : "none",
		"11,5" : "none",
		"11,6" : "bridge 2",
		"11,7" : "none",
		"11,8" : island.instantiate(),
		"11,9" : "bridge 1",
		"11,10" : "none",
		"11,11" : "none",
		"11,12" : "bridge 2",
		"12,0" : island.instantiate(),
		"12,1" : "bridge 2",
		"12,2" : "bridge 2",
		"12,3" : island.instantiate(),
		"12,4" : "bridge 2",
		"12,5" : "bridge 2",
		"12,6" : island.instantiate(),
		"12,7" : "bridge 2",
		"12,8" : "bridge 2",
		"12,9" : island.instantiate(),
		"12,10" : "bridge 2",
		"12,11" : "bridge 2",
		"12,12" : island.instantiate(),
		}
	map['0,0'].setUp("0,0", 2, ["0,2"])
	map['0,2'].setUp("0,2", 4, ["0,6", "0,0"])
	map['0,6'].setUp("0,6", 5, ["0,9", "2,6", "0,2"])
	map['0,9'].setUp("0,9", 3, ["0,12", "0,6"])
	map['0,12'].setUp("0,12", 2, ["3,12", "0,9"])
	map['1,0'].setUp("1,0", 2, ["5,0", "1,5"])
	map['1,5'].setUp("1,5", 1, ["1,0"])
	map['2,1'].setUp("2,1", 3, ["2,3", "4,1"])
	map['2,3'].setUp("2,3", 6, ["2,1", "2,6", "5,3"])
	map['2,6'].setUp("2,6", 5, ["0,6", "4,6", "2,8", "2,3"])
	map['2,8'].setUp("2,8", 4, ["5,8", "2,11", "2,6"])
	map['2,11'].setUp("2,11", 1, ["2,8"])
	map['3,9'].setUp("3,9", 2, ["3,12"])
	map['3,12'].setUp("3,12", 4, ["6,12", "3,9", "0,12"])
	map['4,1'].setUp("4,1", 1, ["2,1"])
	map['4,4'].setUp("4,4", 1, ["4,6"])
	map['4,6'].setUp("4,6", 2, ["2,6", "4,4"])
	map['5,0'].setUp("5,0", 3, ["5,3", "1,0"])
	map['5,3'].setUp("5,3", 7, ["9,3", "5,8", "5,0", "2,3"])
	map['5,8'].setUp("5,8", 6, ["5,3", "2,8", "5,11"])
	map['5,11'].setUp("5,11", 2, ["5,8"])
	map['6,0'].setUp("6,0", 2, ["9,0", "6,2"])
	map['6,2'].setUp("6,2", 2, ["6,0", "8,2"])
	map['6,4'].setUp("6,4", 3, ["6,6", "8,4"])
	map['6,6'].setUp("6,6", 4, ["9,6", "6,8", "6,4"])
	map['6,8'].setUp("6,8", 2, ["9,8", "6,6"])
	map['6,9'].setUp("6,9", 3, ["10,9", "6,12"])
	map['6,12'].setUp("6,12", 4, ["9,12", "3,12", "6,9"])
	map['7,10'].setUp("7,10", 1, ["9,10"])
	map['8,2'].setUp("8,2", 1, ["6,2"])
	map['8,4'].setUp("8,4", 1, ["6,4"])
	map['9,0'].setUp("9,0", 3, ["12,0", "6,0", "9,3"])
	map['9,3'].setUp("9,3", 5, ["9,0", "9,6", "12,3", "5,3"])
	map['9,6'].setUp("9,6", 5, ["12,6", "6,6", "9,3", "9,8"])
	map['9,8'].setUp("9,8", 4, ["9,6", "6,8", "11,8"])
	map['9,10'].setUp("9,10", 3, ["9,12", "7,10"])
	map['9,12'].setUp("9,12", 6, ["12,12", "9,10", "6,12"])
	map['10,9'].setUp("10,9", 5, ["12,9", "6,9", "10,11"])
	map['10,11'].setUp("10,11", 2, ["10,9"])
	map['11,8'].setUp("11,8", 2, ["9,8"])
	map['12,0'].setUp("12,0", 3, ["9,0", "12,3"])
	map['12,3'].setUp("12,3", 6, ["12,6", "12,0", "9,3"])
	map['12,6'].setUp("12,6", 6, ["12,9", "9,6", "12,3"])
	map['12,9'].setUp("12,9", 5, ["10,9", "12,12", "12,6"])
	map['12,12'].setUp("12,12", 4, ["12,9", "9,12"])
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
