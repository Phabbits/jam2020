/// @description Generate coins

var s = 32
var w = room_width
var h = room_height

var xx = irandom(w/s)*s + s/2
var yy = irandom(h/s)*s  + s/2

//Ensure coins do not overlap
if !(place_meeting(xx, yy, obj_score)){
	with (instance_create_layer(xx, yy, "Instances_1", obj_score)){
	}
}

//Reset buffers
alarm[1] = irandom_range(1, coin_buffer)