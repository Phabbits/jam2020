/// @description Insert description here
// You can write your code in this editor
var explosion = instance_create_layer(x,y,"Instances_1",obj_explosion)
explosion.connect_id = player.connect_id
audio_play_sound(snd_explosion, 1, 0)
if instance_exists(player.Train){
	var index = ds_list_find_index(player.Train.cart_list,id)
	if index != -1{
		ds_list_delete(player.Train.cart_list,index)
	}
}