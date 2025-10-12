//UTILIZADO PARA FINS DE DEBUG

draw_set_font(fnt_sample);
draw_set_color(c_black);

draw_text(10,10,"hspd: " + string(obj_player.hspd));
draw_text(10,40,"vspd: " + string(obj_player.vspd));

draw_text(10,70,"in dialougue: " + string(obj_player.in_dialougue));

draw_text(10,100,"index: " + string(obj_tree.image_index));

if place_meeting(obj_player.x + 5, obj_player. y + 5, obj_npcs){
	draw_text(50, 50, "press f");	
}


