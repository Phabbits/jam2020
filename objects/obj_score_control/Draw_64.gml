/// @description Draw end box
// You can write your code in this editor

draw_sprite(spr_score_gui,-1,512,512)
draw_set_color(c_black)
draw_set_font(fnt_basic_large)
draw_text(552,490,obj_player.game_score)
