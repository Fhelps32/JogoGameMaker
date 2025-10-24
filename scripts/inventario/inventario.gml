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
	
function fazerCrafting(_madeira, _pedra){
	if(_madeira == 5 and _pedra == 5){
		ds_grid_set(ds_inventario, Infos.Item, 2, Itens.Picareta);
		ds_grid_set(ds_inventario, Infos.Quantidade, 2, 1);	
		ds_grid_set_region(ds_inventario, 0, 0, 1, 1, -1)
	}
	if(_madeira == 0 and _pedra == 5){
		ds_grid_set(ds_inventario, Infos.Item, 2, Itens.Pedregulho);
		ds_grid_set(ds_inventario, Infos.Quantidade, 2, 10);
		ds_grid_set_region(ds_inventario, 0, 0, 1, 1, -1)
	}
	if(_madeira == 10 and _pedra == 10){
		ds_grid_set(ds_inventario, Infos.Item, 2, Itens.Caixa);
		ds_grid_add(ds_inventario, Infos.Quantidade, 2, 2);
		ds_grid_set_region(ds_inventario, 0, 0, 1, 1, -1)
	}
	if(_madeira == 5 and _pedra == 0){
		ds_grid_set(ds_inventario, Infos.Item, 2, Itens.Graveto);
		ds_grid_set(ds_inventario, Infos.Quantidade, 2, 10);	
		ds_grid_set_region(ds_inventario, 0, 0, 1, 1, -1)
	}
}

function verifica(){
}