if(keyboard_check_pressed(ord("E"))){
	inventario_aberto = !inventario_aberto;
}
if (ds_inventario[# Infos.Item, 0] == Itens.Madeira){
	itens_depositados[0] = ds_inventario[# Infos.Quantidade, 0] div 5;
}

if (ds_inventario[# Infos.Item, 1] == Itens.Pedra){
	itens_depositados[1] = ds_inventario[# Infos.Quantidade, 1] div 5;
}


if(itens_depositados[0] == 1 and itens_depositados[1] == 1){
	sprite_index = spr_jangada_pronta
}