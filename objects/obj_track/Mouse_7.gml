/// @description 
/*
if not place_meeting(x,y,obj_train) and not place_meeting(x,y,obj_cracks){
	image_index --
	if image_index < 0 {
		image_index = 1
	}
	else if image_index = 1 {
		image_index = 5
	}
	alarm_set(0,1)
}
*/

if not place_meeting(x,y,obj_train) and not place_meeting(x,y,obj_cracks){
	scr_send_tile_click(id, 0)
}