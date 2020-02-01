/// @description Initialize train

//Direction train is coming from
from = 1

//Get starting tile
var tile = instance_place(x, y, obj_track)

//Find "to"	
tile.path