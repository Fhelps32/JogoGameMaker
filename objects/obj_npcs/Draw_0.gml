if	distance_to_object(obj_player) <= 25 and obj_player.in_dialougue == false{
	draw_text(x + 10, y + 10, "PRESS 'F'");	
}

draw_self();
/// Barra de fome
var bar_width = 24;
var bar_height = 4;
var bar_x = x - bar_width / 2;
var bar_y = y - (sprite_height - sprite_get_yoffset(sprite_index)) - 2;

var proporcao = global.fome_atual / global.fome_max;
var cor_barra = make_color_rgb(255 - 255 * proporcao, 255 * proporcao, 0);

// Fundo
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Barra (fome atual)
draw_set_color(cor_barra);
draw_rectangle(bar_x, bar_y, bar_x + bar_width * proporcao, bar_y + bar_height, false);

// Contorno
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);

// Reset
draw_set_color(c_white);
