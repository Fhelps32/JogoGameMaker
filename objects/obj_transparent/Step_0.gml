depth = -bbox_bottom;

if (transparent){
	if(point_in_rectangle(obj_player.x, obj_player.y, bbox_left - 15, bbox_top -30, bbox_right + 15, bbox_top)){
		image_alpha = lerp(image_alpha, 0.5, 0.1);
	}
	else{
		image_alpha = lerp(image_alpha, 1, 0.3);	
	}
}






