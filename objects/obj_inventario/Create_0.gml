jogador = obj_player;

escala = 3;

// Imagem de fundo
sprite_index = spr_inventario; // a sprite que você mandou

// Posição fixa na tela (GUI)
x = display_get_gui_width() / 2 - sprite_get_width(sprite_index) / 2;
y = display_get_gui_height() / 2 - sprite_get_height(sprite_index) / 2;

// Dados de slots
slot_tamanho = 16;
slot_espacamento = 1;
slots_por_linha = 8;
slots_por_coluna = 3;
slot_x_inicial = 15;
slot_y_inicial = 24;


// Controle do item que o mouse está segurando
item_selecionado = noone;
