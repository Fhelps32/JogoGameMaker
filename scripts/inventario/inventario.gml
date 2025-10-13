	function botar_item(_item, _quantidade){
		var item = 0;
		for (var i = 0; i < obj_inventario.slots_por_coluna; i++) {
			for(var j = 0; j < obj_inventario.slots_por_linha; j++){
				if(obj_inventario.ds_inventario[# Infos.Item, item] == _item){
					ds_grid_add(obj_inventario.ds_inventario, Infos.Quantidade, item, _quantidade);
					return [-1, -1];
				}
				item ++;   
			}
		}
	
		item = 0;
	
		for (var i = 0; i < obj_inventario.slots_por_coluna; i++) {
			for(var j = 0; j < obj_inventario.slots_por_linha; j++){
				if(obj_inventario.ds_inventario[# Infos.Item, item] == -1){
					ds_grid_set(obj_inventario.ds_inventario, Infos.Item, item, _item);	
					ds_grid_set(obj_inventario.ds_inventario, Infos.Quantidade, item, _quantidade);	
					return [-1, -1];
				}		
				item ++; 
				if(item == 24){
					return [_item, _quantidade];
				}
			}
		}
	}