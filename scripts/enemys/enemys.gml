// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_detec(_alvo, _tamanho, _estado){
	var _dist = point_distance(x, y, _alvo.x, _alvo.y);
	if (_dist <= _tamanho){
		troca_estado(_estado);
		var _aviso = instance_create_depth(x, y, depth, obj_aviso);
		_aviso.pai = id;
	}
	
}

function scr_non_detec(_alvo, _tamanho, _estado){
	var _dist = point_distance(x, y, _alvo.x, _alvo.y);
	if (_dist >= _tamanho){
		troca_estado(_estado);	
	}
	
}

function scr_dir(_pos_x){
	if (sign(x - _pos_x) != 0){
		image_xscale = sign(x - _pos_x);
	}	
	_pos_x = x;
	
}