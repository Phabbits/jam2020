/// @description Initialize train

//Direction train is coming from

alarm[0] = 1
move_speed = .5
from = 2
to = 0
player = -4
event_user(0)

with instance_place (x, y, obj_track) {
	other.image_angle = image_index * 90
}
