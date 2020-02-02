/// @description Iterate

/*
if not instance_exists(obj_train) {
	instance_create_layer(0,0,"Instances",obj_score_control)
	instance_create_layer(290,483,"Instances_1",obj_quit_btn)
	instance_destroy(obj_cracks)
	instance_destroy(obj_score)
	instance_destroy(obj_repairman)
	instance_destroy()
}
*/
for (var i = 0; i < ds_list_size(global.Menu.game_players); i++){
	var player = ds_list_find_value(global.Menu.game_players,i)
	if player.game_score == 1{
		var winner = ds_list_find_value(obj_client.network_names,i)
		instance_create_layer(0,0,"Instances",obj_score_control)
		instance_create_layer(290,483,"Instances_1",obj_quit_btn)
		instance_destroy(obj_cracks)
		instance_destroy(obj_score)
		instance_destroy(obj_repairman)
		instance_destroy()
	}
}