/// @description  Draw the text box and "caption"
if action = "host"{
	draw_sprite(spr_host_btn,-1,x,y)	
}else if action = "quit"{
	draw_sprite(spr_quit_btn,-1,x,y)
}else{
	draw_self();
	
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_font(fnt_basic);
	draw_set_halign(fa_left);
	draw_text( x+5,y, string_hash_to_newline(text));

	draw_set_color(c_white);
	draw_text( x,y-28, string_hash_to_newline(title));
}

