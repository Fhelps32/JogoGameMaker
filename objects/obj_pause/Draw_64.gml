var _gui_x = display_get_gui_width()
var _gui_y = display_get_gui_height()


if global.pause{
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, _gui_x, _gui_y, false);
	draw_set_alpha(1);
	
	
	draw_text(_gui_x/2, _gui_y/2, "GAME PAUSED")
	
	
}



