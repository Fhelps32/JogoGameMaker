depth = obj_inventario.depth + 0.5;

itens_depositados = [0, 0];
pronta = false;
sprite_index = spr_jangada_andamento

escala = 3;

inventario_aberto = false;	

item_selecionado_buffer = [-1, -1];

slot_tamanho = 16;
slot_espacamento = 1;
slots_por_linha = 2;
slots_por_coluna = 1;
slot_x_inicial = 15;
slot_y_inicial = 24;

ds_inventario = ds_grid_create(Infos.Altura, (slots_por_coluna * slots_por_linha));
ds_grid_set_region(ds_inventario, 0, 0, 1, (slots_por_coluna * slots_por_linha)- 1, -1)