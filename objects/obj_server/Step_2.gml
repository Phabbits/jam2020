/// @description Game actions

if global.Menu.state = STATE_GAME{
	//Check all tile clicks
	if not ds_list_empty(tiles){
		
		var am = ds_list_size(tiles)
		//show_debug_message("Change tile" + string(am))
		for (var i = 0; i < am; i ++){
			var tile = ds_list_find_value(tiles, i)
			//show_debug_message("Change tile" + string(tile))
			with tile{
				event_user(0)
			}
		}
		//List emptied after sending
	}
}