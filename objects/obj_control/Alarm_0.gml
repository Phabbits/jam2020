/// @description Break tiles
with (instance_place(irandom(room_width), irandom(room_height), obj_track)){
	//Break
	broken = true
}

//Reset buffers
alarm[0] = irandom_range(1, break_buffer)