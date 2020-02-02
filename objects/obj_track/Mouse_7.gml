/// @description 
if not place_meeting(x,y,obj_train) and not place_meeting(x,y,obj_cracks){
	image_index --
	if image_index < 0 {
		image_index = image_number-1
	}
	alarm_set(0,1)
}