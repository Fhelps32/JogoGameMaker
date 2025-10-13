draw_sprite_ext(spr_itens, info_item[0], x, y, 1, 1, 0, c_white, 1);
draw_text(x, y, info_item[1]);

if(collision_rectangle(x-8, y-8, x+8, y+8, obj_player, false, true)){
	draw_text(x, y, "PEGAR");	
}