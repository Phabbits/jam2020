/// @description Initialize train

//Direction train is coming from

move_speed = 0//.4
from = 2
to = 0
player = -4
event_user(0)

with instance_place (x, y, obj_track) {
	other.image_angle = image_index * 90
}