event_inherited();
transparent = true;
vida = 3;
sprite = choose(spr_tree_1, spr_tree_2, spr_tree_3, spr_tree_4);


estado_idle.inicia = function(){
	sprite_index = sprite;
}

estado_hurt.inicia = function(){
	sprite_index = spr_tree_1_damaged;
	image_index = 0;
	alarm[0] = 60;
}

estado_hurt.roda = function(){
	if (vida <= 0){
		troca_estado(estado_death);	
	}
}

estado_death.inicia = function(){	
	sprite_index = spr_enemy_slime2_death;
}

inicia_estado(estado_idle);