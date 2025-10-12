if (atv == false){
	var _xx = display_get_gui_width()
	var _yy = display_get_gui_height()
	var _c = c_blue;
	var _sprite = text[# 1, pag];
	var _texto = string_copy(text[# 2, pag], 0, caracter);


	if (text[# 3, pag] == 0){
		draw_rectangle_color(200, _yy - 200, _xx, _yy, _c, _c, _c, _c, false);
		draw_text_ext(232, _yy - 168, _texto, 32, _xx - 264);
		draw_sprite_ext(_sprite, 0, 100, _yy, 4, 4, 0, -1, 1);
	}
	else{
		draw_rectangle_color(0 , _yy - 200, _xx - 200, _yy, _c, _c, _c, _c, false);	
		draw_text_ext(32, _yy - 168, _texto, 32, _xx - 264);
		draw_sprite_ext(_sprite, 0, _xx - 100, _yy, 4, 4, 0, -1, 1);
	}
}

if (global.choice_ativa) {
    var _yy = display_get_gui_height();
    var prompt = global.choice_prompt;
    var opcoes = global.choice_opcoes;

    draw_set_color(c_white);
    draw_text(232, _yy - 220, prompt);

    var x_btn = 60;
    var y_btn = _yy - 120;
    var largura = 200;
    var altura = 32;
    var espaco = 40;

    for (var i = 0; i < array_length(opcoes); i++) {
        var texto = opcoes[i];
        draw_set_color(c_dkgray);
        draw_rectangle(x_btn, y_btn + i * espaco, x_btn + largura, y_btn + altura + i * espaco, false);
        draw_set_color(c_white);
        draw_text(x_btn + 10, y_btn + 8 + i * espaco, texto);
    }
}


