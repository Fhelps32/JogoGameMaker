function scr_hcolision(){
	//COLISÃO HORIZONTAL
	if place_meeting(x + hspd, y, obj_colide){ 
		while !place_meeting(x + sign(hspd), y, obj_colide){
			x+= sign(hspd);
		}
		
		hspd = 0;
	}
}

function scr_vcolision(){
	//COLISÃO VERTICAL
	if place_meeting(x , y + vspd, obj_colide){
		while !place_meeting(x, y + sign(vspd), obj_colide){
			y+= sign(vspd);
		}
		
		vspd = 0;
	}
}


function scr_player_walk(){
	//MOVIMENTAÇÃO
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));

	hspd = (right - left)*spd;
	vspd = (down - up)*spd;

	attack = keyboard_check_pressed(ord("L"));

	depth = -bbox_bottom;

	scr_dialougue()
	if !instance_exists(obj_dialougue){
		in_dialougue = false
	}
	
	if in_dialougue = true{
		hspd = 0;
		vspd = 0;
	}
	
	
	scr_hcolision()
	x += hspd;
	scr_vcolision()
	y += vspd;
	
}

function scr_dialougue() {
	//VERIFICAÇÃO PARA O PLAYER PODER ENTRAR EM DIÁLOGO E COLETA DOS DADOS DO NPC NA ROOM
	if distance_to_object(obj_npcs) <= 25{
		if keyboard_check_pressed(ord("F")) and in_dialougue == false{
			var _npc = instance_nearest(x, y, obj_npcs);
			var _dialougue = instance_create_layer(x, y, "inst_dialougue", obj_dialougue);
			_dialougue.npc_name = _npc.name;
			in_dialougue = true;
		}
	}
}

function scr_door(){
	if distance_to_object(obj_door) <= 25{
		if keyboard_check_pressed(ord("F")){
			var _door = instance_nearest(x, y, obj_door);
			_door.closed = false;
		}
	}
}

function scr_verifica(_dir, _sprite_side, _sprite_fornt, _sprite_back){
	var _sprite;
	
	switch(_dir){
		case 0: _sprite = _sprite_side 
		break;
		case 1: _sprite = _sprite_back
		break;
		case 2: _sprite = _sprite_side
		break;
		case 3: _sprite = _sprite_fornt
		break;
	}
	
	return _sprite;	
}