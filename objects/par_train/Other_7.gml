/// @description Insert description here
// You can write your code in this editor
if collision_point(x, y, par_train, false, true){
	with(instance_place(x, y, par_train)){
		var explosion = instance_create_layer(x,y,"Instances_1",obj_explosion)
		explosion.connect_id = player.connect_id
		audio_play_sound(snd_explosion, 1, 0)
		instance_destroy (self)
	}
}