if(collision_rectangle(x-8, y-8, x+8, y+8, obj_player, false, true) and keyboard_check_pressed(ord("F"))){
	info_item = botar_item(info_item[0], info_item[1]);		
}

if(info_item[0] == -1){
	instance_destroy();	
}