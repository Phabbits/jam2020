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

if room = rm_networking or room = rm_lobby {
	audio_play_sound(msc_menu, 1, 1)
}
if room = rm_main {
	audio_stop_all()
	audio_play_sound(msc_menu, 1, 1)
}