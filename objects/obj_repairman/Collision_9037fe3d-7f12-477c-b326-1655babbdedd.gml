/// @description Repair tracks
// You can write your code in this editor

ds_list_delete(player.repair_list,ds_list_find_index(player.repair_list,other))
instance_destroy(other)
speed = 0