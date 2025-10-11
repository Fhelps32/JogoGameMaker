// Evento Draw GUI do obj_inventario

// Centraliza o inventário na tela
var pos_x = display_get_gui_width() / 2 - (sprite_get_width(sprite_index) * escala) / 2;
var pos_y = display_get_gui_height() / 2 - (sprite_get_height(sprite_index) * escala) / 2;

// Desenha o fundo do inventário
draw_sprite_ext(sprite_index, image_index, pos_x, pos_y, escala, escala, 0, c_white, 1);

// Desenha os slots (relativos ao inventário)
var slot_tam = slot_tamanho * escala;
var espac = slot_espacamento * escala;

// Primeira linha de slots
for (var i = 0; i < slots_por_coluna; i++) {
    for(var j = 0; j < slots_por_linha; j++){
		var sx = pos_x + (slot_x_inicial * escala) + (j * (slot_tam + espac));
		var sy = pos_y + (slot_y_inicial * escala) + (i * (slot_tam + espac));
		draw_rectangle(sx, sy, sx + slot_tam, sy + slot_tam, false);	
	}
}

