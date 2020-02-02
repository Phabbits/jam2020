/// @description Repair tracks
// You can write your code in this editor

repairing = true
alarm_set(0,50)
audio_play_sound(snd_repair, 1, 0)
ds_list_delete(player.repair_list,ds_list_find_index(player.repair_list,other))
instance_destroy(other)
speed = 0