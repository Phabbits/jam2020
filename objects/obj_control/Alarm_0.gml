/// @description Break tiles

xx = irandom(room_width/32)*32
yy = irandom(room_height/32)*32

if not instance_place(xx+16,yy+16,obj_cracks){
	instance_create_layer(xx+16,yy+16,"Instances",obj_cracks)	
}

//Reset buffers
alarm[0] = irandom_range(break_buffer_min, break_buffer_max)