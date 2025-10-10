estado_idle = new estado();
estado_walk = new estado(); 
estado_attack = new estado(); 

#region ESTADO PARADO
estado_idle.inicia = function(){
	sprite_index = scr_verifica(dir, spr_player_idle_side, spr_player_idle_front, spr_player_idle_back);
	image_index = 0;
	show_debug_message("rodando idle_inicia");
}

estado_idle.roda = function(){
	if (up xor down or right xor left){
		dir = (point_direction(0, 0, right - left, down - up) div 90);
		sprite_index = scr_verifica(dir, spr_player_idle_side, spr_player_idle_front, spr_player_idle_back);	
	}
	
	if(vspd != 0 or hspd != 0){
		troca_estado(estado_walk)	
	}
	if (attack){
		troca_estado(estado_attack);		
	}
	show_debug_message("rodando idle_roda");
}
#endregion

#region ESTADO ANDANDO
estado_walk.inicia = function(){
	image_index = 0;
	spd = 1.5;
	show_debug_message("rodando walk_inicia");
}

estado_walk.roda = function(){
	if(hspd!= 0 or vspd != 0){
		if(hspd != 0){
			image_xscale = sign(hspd);
		}
		
		dir = (point_direction(0, 0, right - left, down - up) div 90);
		sprite_index = scr_verifica(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);
	}
	
	if(hspd == 0 and vspd == 0){
		troca_estado(estado_idle);	
	}
	
	if (attack){
		troca_estado(estado_attack);		
	}
	 
	show_debug_message("rodando walk_roda");
}
#endregion

#region ESTADO ATACANDO
estado_attack.inicia = function(){
	sprite_index = scr_verifica(dir, spr_player_attack_side, spr_player_attack_front, spr_player_attack_back);
	image_index = 0;
	spd = 0.5;
	show_debug_message("rodando attack_inicia");
	
	var _x = x + lengthdir_x(16, dir * 90);
	var _y = y + lengthdir_y(16, dir * 90);
	
	meu_dano = instance_create_depth(_x, _y, depth, obj_attack_player);
	meu_dano.dano_poise = dano_poise;
	
}
estado_attack.roda = function(){
	if (alarm[0]) == -1{
		alarm[0] = 50;
	}
	show_debug_message("rodando attack_roda");
}
estado_attack.finaliza = function(){
	instance_destroy(meu_dano);	
}
#endregion 

dano = noone
dano_poise = 5;

spd = 1.5;
hspd = 0;
vspd = 0;

up = noone;
down = noone;
left = noone;
right = noone;
attack = noone;

dir = 0;

in_dialougue = false;

alarm[0] = -1;

state = scr_player_walk;

inicia_estado(estado_idle);
