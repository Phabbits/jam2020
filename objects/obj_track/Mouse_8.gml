if not place_meeting(x,y,obj_train) and not place_meeting(x,y,obj_cracks) and distance_to_object(instance_nearest(x,y,obj_train)) > protection_range{
	scr_send_tile_click(id, 1)
}