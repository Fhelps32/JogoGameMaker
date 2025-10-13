var mx = device_mouse_x_to_gui(0)
var my = device_mouse_y_to_gui(0)


// Desenha o inventário
if(inventario_aberto and pronta == false){
	// varoáveis pra ajustar o inventário no centro da tela
	var pos_x = (display_get_gui_width() / 2 - (sprite_get_width(spr_inv_jangada) * escala) / 2) + 235 * escala;
	var pos_y = display_get_gui_height() / 2 - (sprite_get_height(spr_inv_jangada) * escala) / 2;
	var slot_tam = slot_tamanho * escala;
	var espac = slot_espacamento * escala;
	var item = 0;
	
	draw_sprite_ext(spr_inv_jangada, image_index, pos_x, pos_y, escala, escala, 0, c_white, 1);
	for (var i = 0; i < slots_por_coluna; i++) {
		for(var j = 0; j < slots_por_linha; j++){
			var sx = pos_x + (slot_x_inicial * escala) + (j * (slot_tam + espac));
			var sy = pos_y + (slot_y_inicial * escala) + (i * (slot_tam + espac));
			
			if(point_in_rectangle(mx, my, sx, sy, sx + slot_tam, sy + slot_tam)){
				draw_sprite_ext(spr_invBox, 0, sx, sy, escala, escala, 0, 0, 1);
				
				#region Clica com o botão esqurdo do mouse
				if(mouse_check_button_pressed(mb_left)){
					if(obj_inventario.item_selecionado[0] == -1 and obj_inventario.item_selecionado[1] == -1){
						obj_inventario.item_selecionado = [ds_inventario[# Infos.Item, item], ds_inventario[# Infos.Quantidade, item]];
						ds_inventario[# Infos.Item, item] = -1;
						ds_inventario[# Infos.Quantidade, item] = -1;
					}else{
						if(obj_inventario.item_selecionado[0] == ds_inventario[# Infos.Item, item]){
							ds_grid_add(ds_inventario, Infos.Quantidade, item, obj_inventario.item_selecionado[1]);
							obj_inventario.item_selecionado = [-1, -1];
						}
						if(obj_inventario.item_selecionado[0] != ds_inventario[# Infos.Item, item] and obj_inventario.item_selecionado[0] != -1){
							item_selecionado_buffer = [ds_inventario[# Infos.Item, item], ds_inventario[# Infos.Quantidade, item]];
							ds_inventario[# Infos.Item, item] = obj_inventario.item_selecionado[0];
							ds_inventario[# Infos.Quantidade, item] = obj_inventario.item_selecionado[1];
							obj_inventario.item_selecionado = item_selecionado_buffer;
						}
					}
				}
				#endregion
				
				#region Clica com o botão direito do mouse
				if(mouse_check_button_pressed(mb_right)){
					if(obj_inventario.item_selecionado[0] == -1 and obj_inventario.item_selecionado[1] == -1){
						if(ds_inventario[# Infos.Quantidade, item] div 2 >= 1){
							obj_inventario.item_selecionado = [ds_inventario[# Infos.Item, item], (ds_inventario[# Infos.Quantidade, item] div 2) + (ds_inventario[# Infos.Quantidade, item] mod 2)];
							ds_inventario[# Infos.Quantidade, item] = ds_inventario[# Infos.Quantidade, item] - obj_inventario.item_selecionado[1];
						}
					}else{
						if(ds_inventario[# Infos.Item, item] == obj_inventario.item_selecionado[0]){
								ds_inventario[# Infos.Quantidade, item] = ds_inventario[# Infos.Quantidade, item] + 1;
								obj_inventario.item_selecionado[1] = obj_inventario.item_selecionado[1] -1;
						}
						if(ds_inventario[# Infos.Item, item] == -1){
							ds_inventario[# Infos.Item, item] = obj_inventario.item_selecionado[0];
							ds_inventario[# Infos.Quantidade, item] = 1;
							obj_inventario.item_selecionado[1] = obj_inventario.item_selecionado[1] -1;
							
							
						}
					}
				}
				#endregion
			}
			
			if(ds_inventario[# Infos.Item, item] != -1){
				draw_sprite_ext(spr_itens, ds_inventario[# Infos.Item, item], sx, sy, escala, escala, 0, c_white, 1);
				draw_text(sx, sy, ds_inventario[# Infos.Quantidade, item]);
			}
			
			if(obj_inventario.item_selecionado[0] != -1 and obj_inventario.item_selecionado[1] != -1){
				draw_sprite_ext(spr_itens, obj_inventario.item_selecionado[0], mx + 10, my + 10, escala, escala, 0, c_white, 1);
				draw_text(mx + 5, my + 5, obj_inventario.item_selecionado[1]);
			}
			
			if(obj_inventario.item_selecionado[1] <= 0) {
				obj_inventario.item_selecionado[0] = -1;
				obj_inventario.item_selecionado[1] = -1;
			}
			
			item++
			if(item >= 2){
				item = 0;	
			}
		}
	}
		
}