if (atv == false){
	var _xx = display_get_gui_width()
	var _yy = display_get_gui_height()
	var _c = c_black;
	var _sprite = text[# 1, pag];
	var _texto = string_copy(text[# 2, pag], 0, caracter);
	draw_set_color(c_white);
	draw_set_font(fnt_texto);


	if (text[# 3, pag] == 0){
		draw_rectangle_color(200, _yy - 200, _xx, _yy, _c, _c, _c, _c, false);
		draw_text_ext(232, _yy - 168, _texto, 32, _xx - 264);
		draw_sprite_ext(_sprite, 0, 100, _yy, 4, 4, 0, c_white, 1);
	}
	else{
		draw_rectangle_color(0 , _yy - 200, _xx - 200, _yy, _c, _c, _c, _c, false);	
		draw_text_ext(32, _yy - 168, _texto, 32, _xx - 264);
		draw_sprite_ext(_sprite, 0, _xx - 100, _yy, 4, 4, 0, c_white, 1);
	}
}



