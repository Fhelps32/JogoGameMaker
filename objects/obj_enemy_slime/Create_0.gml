estado_time = game_get_speed(gamespeed_fps) * 30;
estado_tempo = estado_time;

event_inherited();

sprite = {
	idle : spr_enemy_slime_idle,
	walk : spr_enemy_slime_walk,
	attack : spr_enemy_slime_attack,
	hurt : spr_enemy_slime_hurt,
	death : spr_enemy_slime_death
}

#region idle
estado_idle.inicia = function(){
	sprite_index = sprite.idle;
	image_index = 0;
	estado_tempo = estado_time;
}

estado_idle.roda = function(){
	estado_tempo --;
	var _tempo = irandom(estado_tempo);
	
	scr_detec(obj_player, 50, estado_hunt);
	if (estado_tempo <= (estado_time - 90) and _tempo <= 5){
		
		var _escolha = choose(estado_idle, estado_walk);
		troca_estado(_escolha);
	}
}
#endregion

#region walk
estado_walk.inicia = function(){
	sprite_index = sprite.walk;
	image_index = 0;
	estado_tempo = estado_time;
	pos_x = x;
	
	trajeto_x = irandom(room_width);
	trajeto_y = irandom(room_height);
}
estado_walk.roda = function(){
	estado_tempo --;
	var _tempo = irandom(estado_tempo);
	scr_detec(obj_player, 50, estado_hunt);
	scr_dir(pos_x);
	if (estado_tempo <= (estado_time - 90) and _tempo <= 5){
		
		var _escolha = choose(estado_idle, estado_walk);
		troca_estado(_escolha);
	}
	
	mp_potential_step_object(trajeto_x, trajeto_y, 0.7, obj_colide);

}
#endregion

#region hurt
estado_hurt.inicia = function(){
	sprite_index = sprite.hurt;
	image_index = 0;
}

estado_hurt.roda = function(){
	if (vida <= 0){
		troca_estado(estado_death);	
	}
	if (image_index >= image_number - .5){
		troca_estado(estado_hunt);	
	}
}
#endregion

#region attack
estado_attack.inicia = function(){
	sprite_index = sprite.attack;
	image_index = 0;
}
estado_attack.roda = function(){
	if (image_index >= image_number - .5){
		troca_estado(estado_hunt);	
	}
}
#endregion


estado_death.inicia = function(){
	sprite_index = sprite.death;
	image_index = 0;
	dead = true;
}
estado_death.roda = function(){
	if (image_index >= image_number - .5){
		instance_destroy();	
	}
}
#endregion

#region hunt
estado_hunt.inicia = function(){
	sprite_index = sprite.walk;
	image_index = 0;
	alvo = obj_player;
	pos_x = x;
}

estado_hunt.roda = function(){
	if (distance_to_object(obj_player) <= range){
		troca_estado(estado_attack);	
	}
	
	mp_potential_step_object(alvo.x, alvo.y, 0.8, obj_colide);
	scr_dir(pos_x);
	pos_x = x;
	scr_non_detec(obj_player, 150, choose(estado_walk, estado_idle));
}
#endregion