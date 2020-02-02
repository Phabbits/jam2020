/// @description Initiate rooms!

if global.Menu.state = STATE_GAME{
	var players = ds_list_size(obj_client.network_players)
	show_debug_message("made" + string(players))
	var spacing = room_height/(players+1)
	for (var i = 0; i < players; i ++){
		var player = instance_create_layer(16, spacing*(i+1)-16, "Instances", obj_player)
		player.connect_id = ds_list_find_value(obj_client.network_players, i)
	}
}