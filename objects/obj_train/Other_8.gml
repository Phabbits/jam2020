/// @description 

//Destroy if not on the tracks

from = scr_find_to(to)

tile = instance_position (x, y, obj_track)
cracks = instance_position (x, y, obj_cracks)

if tile = noone {
	player.trains -= 1
	instance_create_layer(x,y,"Instances_1",obj_explosion)
	instance_destroy (self)
}
if cracks.image_index = 3 {
	player.trains -= 1
	instance_create_layer(x,y,"Instances_1",obj_explosion)
	instance_destroy (self)
if instance_exists(cracks){
	if cracks.image_index = 3 {
		player.trains -= 1
		instance_create_layer(x,y,"Instances_1",obj_explosion)
		instance_destroy (self)
	}
}
else if tile.path[from] != 1 {
	player.trains -= 1
	instance_create_layer(x,y,"Instances_1",obj_explosion)
	instance_destroy (self)
}

//update to and from
for (var i = 0; i < 4; i ++){
	if i != from{
		if tile.path[i]{
			to = i
		}
	}
}
event_user(0)