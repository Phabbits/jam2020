/// @description Insert description here
// You can write your code in this editor

var train = instance_nearest(x,y,obj_train)
if distance_to_object(train) < 64{
	obj_player.game_score += ds_list_size(obj_train.cart_list)
	for (var i = 0; i < ds_list_size(train.cart_list); i++){
		instance_destroy(ds_list_find_value(train.cart_list,i))
	}
	
}