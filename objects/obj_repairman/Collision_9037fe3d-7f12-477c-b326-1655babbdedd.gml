/// @description Repair tracks
// You can write your code in this editor

repairing = other
if alarm[0] == -1{
	alarm_set(0,50)
	audio_play_sound(snd_repair, 1, 0)
	ds_list_delete(player.repair_list,ds_list_find_index(player.repair_list,other))
}

speed = 0