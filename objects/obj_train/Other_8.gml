/// @description 

//Find "to"
from = to + 2
if from > 3 {
	to = from - 4
	}
tile = instance_place (x, y, obj_track)
for (var i = 0; i < 4; i ++){
	if i != from{
		if tile.path[i]{
			to = i
			show_debug_message (to)
		}
	}
}
event_user(0)