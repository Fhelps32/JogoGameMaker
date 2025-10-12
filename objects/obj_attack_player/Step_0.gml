var _list = ds_list_create();

var _qtd = instance_place_list(x, y, obj_enemys, _list, false)

for (var i = 0; i < ds_list_size(_list); i++){
	var _atual = _list[| i];
	
	var _existe = array_contains(lista, _atual);
	if (!_existe){
		array_push(lista, _atual);
		with (_atual){
			if (!dead){
				lidando_dano(1);	
			}	
		}
	}
}




ds_list_destroy(_list);


