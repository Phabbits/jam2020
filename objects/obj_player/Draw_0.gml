/// @description Lines to broken tracks
// You can write your code in this editor

sx = Repair.x
sy = Repair.y
if not ds_list_empty(repair_list){
	for (var i = 0; i < ds_list_size(repair_list); i++){
		var tile = ds_list_find_value(repair_list,i)
		draw_line_width_color(sx,sy,tile.x,tile.y,3,c_orange,c_orange)
		sx = tile.x
		sy = tile.y
	}
}


/// @description 

draw_set_halign(fa_left)
draw_set_font(fnt_basic_small)
draw_text (32, 750, "Score:")
draw_text (180, 750, game_score)