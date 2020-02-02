/// @description Insert description here
// You can write your code in this editor

from = scr_find_to(to)

tile = instance_position (x, y, obj_track)
cracks = instance_position (x, y, obj_cracks)

if tile = noone {
	instance_destroy (self)
}
if instance_exists(cracks){
	if cracks.image_index = 4 {
		instance_destroy (self)
	}
}
if tile != noone {
	if tile.path[from] != 1 {
		instance_destroy (self)
	}
}

//update to and from
if tile != noone {
	for (var i = 0; i < 4; i ++){
		if i != from{
			if tile.path[i]{
				to = i
			}
		}
	}
}
event_user(0)