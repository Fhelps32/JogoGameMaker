event_inherited();
transparent = true;
vida = 3;
quebra_com = Itens.Machado;
var numero = irandom_range(1, 4);


sprite = {
}


switch numero{
	case 1:
		sprite = {
			idle : spr_tree_1,
			damaged : spr_tree_1_damaged,
			choped : spr_tree_1_choped
		};
	break;
	case 2:
		sprite = {
			idle : spr_tree_2,
			damaged : spr_tree_2_damaged,
			choped : spr_tree_2_choped
		};
	break;
	case 3:
		sprite = {
			idle : spr_tree_3,
			damaged : spr_tree_3_damaged,
			choped : spr_tree_3_choped
		};
	break;
	case 4:
		sprite = {
			idle : spr_tree_4,
			damaged : spr_tree_4_damaged,
			choped : spr_tree_4_choped
		};
	break;
}

estado_idle.inicia = function(){
	sprite_index = sprite.idle;
	dead = false
	transparent = true;
}

estado_hurt.inicia = function(){
	sprite_index = sprite.damaged;
	image_index = 0;
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
	sprite_index = sprite.choped
	var inst = instance_create_layer(irandom_range(x-10, x+ 10), irandom_range(y - 10, y +10 ), "Player", obj_item);
	inst.info_item = [Itens.Madeira, irandom_range(1, 20)];
	dead = true;
	transparent = false;
	alarm[0] = 1000;
}

estado_death.roda = function(){	
	if(alarm[0] <= 0){
		troca_estado(estado_idle);
		vida = 3;
	}
}

inicia_estado(estado_idle);