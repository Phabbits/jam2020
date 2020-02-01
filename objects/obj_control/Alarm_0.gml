/// @description Break tiles

xx = irandom(room_width/32)*32
yy = irandom(room_height/32)*32

if not instance_place(xx,yy,obj_cracks){
	instance_create_layer(xx,yy,"Instances",obj_cracks)	
}

//Reset buffers
alarm[0] = irandom_range(1, break_buffer)