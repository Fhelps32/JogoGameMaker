if(keyboard_check_pressed(ord("E")) and pronta == false){
	inventario_aberto = !inventario_aberto;
}

if (ds_inventario[# Infos.Item, 0] == Itens.Madeira and ds_inventario[# Infos.Quantidade, 0] >= 20){
	itens_depositados[0] = 1;	
}
if (ds_inventario[# Infos.Item, 1] == Itens.Pedra and ds_inventario[# Infos.Quantidade, 1] >= 20){
	itens_depositados[1] = 1;	
}

if(itens_depositados[0] == 1 and itens_depositados[1] == 1){
	pronta = true;
	sprite_index = spr_jangada_pronta
}