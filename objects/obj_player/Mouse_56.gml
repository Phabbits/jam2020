/// @description Repair Tiles
// You can write your code in this editor


with instance_position(mouse_x,mouse_y,obj_cracks){
	if (ds_list_find_index(other.repair_list,id) == -1){
		ds_list_add(other.repair_list,id)
		show_debug_message(id)
	}
}
