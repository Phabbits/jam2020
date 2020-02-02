/// @description Go to tile
// You can write your code in this editor

if not repairing {
	if not ds_list_empty(player.repair_list){
		var tile = ds_list_find_value(player.repair_list,0)
		move_towards_point(tile.x,tile.y,move_speed)
	}
}