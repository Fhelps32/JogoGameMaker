event_inherited();
transparent = true;
vida = 3;
quebra_com = 0;
var numero = irandom_range(1, 4);
sprite = {
}


switch numero{
	case 1:
		sprite = {
			idle : spr_tree_1,
			damaged : spr_tree_1_damaged
		};
	break;
	case 2:
		sprite = {
			idle : spr_tree_2,
			damaged : spr_tree_2_damaged
		};
	break;
	case 3:
		sprite = {
			idle : spr_tree_3,
			damaged : spr_tree_3_damaged
		};
	break;
	case 4:
		sprite = {
			idle : spr_tree_4,
			damaged : spr_tree_4_damaged
		};
	break;
}

estado_idle.inicia = function(){
	sprite_index = sprite.idle;
}

estado_hurt.inicia = function(){
	sprite_index = sprite.damaged;
	image_index = 0;
	alarm[0] = 60;
}

estado_hurt.roda = function(){
	if (vida <= 0){
		troca_estado(estado_death);	
	}
	
	if (image_index >= image_number - 0.5) {
        troca_estado(estado_idle);
    }
}

estado_death.inicia = function(){	
	sprite_index = spr_enemy_slime2_death;
}

inicia_estado(estado_idle);