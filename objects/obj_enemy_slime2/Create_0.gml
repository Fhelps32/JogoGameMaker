event_inherited();
range = 20

sprite = {
	idle : spr_enemy_slime2_idle,
	walk : spr_enemy_slime2_walk,
	attack : spr_enemy_slime2_attack,
	hurt : spr_enemy_slime2_hurt,
	death : spr_enemy_slime2_death,
	alvo : obj_player
}

estado_attack.inicia = function(){
	sprite_index = sprite.attack;
	image_index = 0;
	dir = point_direction(x, y, sprite.alvo.x, sprite.alvo.y);
}

estado_attack.roda = function(){
	
	if (image_index > 7){
		x += lengthdir_x(.7, dir);
		y += lengthdir_y(.7, dir);
	}
	if (image_index >= image_number - .5){
		troca_estado(estado_hunt);	
	}
}







