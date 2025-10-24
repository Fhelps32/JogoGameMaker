draw_sprite_ext(spr_itens, info_item[0], x, y, 1, 1, 0, c_white, 1);
draw_text(x-2, y-8, info_item[1]);

if(collision_rectangle(x-8, y-8, x+24, y+24, obj_player, false, true)){
	draw_sprite_ext(spr_itens, info_item[0], x, y, 1, 1, 0, c_navy, 1);
}