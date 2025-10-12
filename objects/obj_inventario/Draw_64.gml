// Evento Draw GUI do obj_inventario

// Centraliza o inventário na tela


var mx = device_mouse_x_to_gui(0)
var my = device_mouse_y_to_gui(0)


// Desenha o fundo do inventário
if(inventario_aberto){
	var pos_x = display_get_gui_width() / 2 - (sprite_get_width(spr_inventario) * escala) / 2;
	var pos_y = display_get_gui_height() / 2 - (sprite_get_height(spr_inventario) * escala) / 2;
	
	draw_sprite_ext(spr_inventario, image_index, pos_x, pos_y, escala, escala, 0, c_white, 1);	
	// Desenha os slots (relativos ao inventário)
	var slot_tam = slot_tamanho * escala;
	var espac = slot_espacamento * escala;
	var item = 0;

	// Primeira linha de slots
	for (var i = 0; i < slots_por_coluna; i++) {
		for(var j = 0; j < slots_por_linha; j++){
			var sx = pos_x + (slot_x_inicial * escala) + (j * (slot_tam + espac));
			var sy = pos_y + (slot_y_inicial * escala) + (i * (slot_tam + espac));
			
			if(point_in_rectangle(mx, my, sx, sy, sx + slot_tam, sy + slot_tam)){
				draw_sprite_ext(spr_invBox, 0, sx, sy, escala, escala, 0, 0, 1);
				if(mouse_check_button_pressed(mb_left)){
					if(item_selecionado == [-1, -1]){
						item_selecionado = [ds_inventario[# Infos.Item, item], ds_inventario[Infos.Quantidade, item]];
					}else{
							
					}
				}
			}
			
			if(ds_inventario[# Infos.Item, item] != -1){
				draw_sprite_ext(spr_itens, ds_inventario[# Infos.Item, item], sx, sy, escala, escala, 0, c_white, 1);
				draw_text(sx, sy, ds_inventario[# Infos.Quantidade, item]);
			}
			
			if(item_selecionado != [-1, -1]){
				draw_sprite(spr_itens, item_selecionado[0], mx, my);	
			}
			
			item++;
			if(item >= 25){
				item = 0;	
			}
		}
	}
}

