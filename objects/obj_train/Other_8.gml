/// @description 

//Find "to"
show_debug_message (to + from)
from = to + 2
if from > 3 {
	from = from - 4
	}
tile = instance_position (x, y, obj_track)
for (var i = 0; i < 4; i ++){
	if i != from{
		if tile.path[i]{
			to = i
			show_debug_message (to)
			show_debug_message (from)
		}
	}
}
alarm_set(0,1)