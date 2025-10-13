jogador = obj_player;

escala = 3;

inventario_aberto = false;	

// Dados de slots
slot_tamanho = 16;
slot_espacamento = 1;
slots_por_linha = 8;
slots_por_coluna = 3;
slot_x_inicial = 15;
slot_y_inicial = 24;


// Controle do item que o mouse está segurando



//ss mlk eu tentei desenhar a porra duma picareta em pixel art e deu naquilo dali msm
 enum Itens{
	Picareta,
	Machado,
	Pedra,
	Madeira,
	Altura
}

enum Infos{
	Item,
	Quantidade,
	Altura
}

ds_inventario = ds_grid_create(Infos.Altura, (slots_por_coluna * slots_por_linha) + 1);
ds_grid_set_region(ds_inventario, 0, 0, 1, (slots_por_coluna * slots_por_linha + 1)- 1, -1)

item_selecionado = [-1, -1];
item_selecionado_buffer = [-1, -1];


ds_grid_set(ds_inventario, Infos.Item, 0, Itens.Picareta);
ds_grid_set(ds_inventario, Infos.Quantidade, 0, 1);


ds_grid_set(ds_inventario, Infos.Item, 1, Itens.Machado);
ds_grid_set(ds_inventario, Infos.Quantidade, 1,	1);
