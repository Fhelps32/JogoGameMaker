draw_self();

var mx = device_mouse_x(0)
var my = device_mouse_y(0)

if(collision_rectangle(x, y-30, x+100, y+100, obj_player, false, true)){
	var pos_x = x;
	var pos_y = y - 30;
	var slot_tam = slot_tamanho * escala;
	var espac = slot_espacamento * escala;
	var item = 0;
	
	draw_sprite_ext(spr_inv_jangada_true, image_index, pos_x, pos_y, escala, escala, 0, c_white, 1);
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
			}else{
				if(item == 0){
					draw_sprite_ext(spr_itens, Itens.Graveto, sx, sy, escala, escala, 0, c_white, 0.4);
				}else{
					draw_sprite_ext(spr_itens, Itens.Pedregulho, sx, sy, escala, escala, 0, c_white, 0.4);
				}
			}
			
			
			if(obj_inventario.item_selecionado[1] <= 0) {
				obj_inventario.item_selecionado[0] = -1;
				obj_inventario.item_selecionado[1] = -1;
			}
				
			if(ds_inventario[# Infos.Item, item] != -1){
					draw_sprite_ext(spr_itens, ds_inventario[# Infos.Item, item], sx, sy, escala, escala, 0, c_white, 1);		
				}
			
			item++
			if(item >= 2){
				item = 0;	
			}
		}
	}
	
	if(ds_inventario[# Infos.Item, 2] != -1){
			draw_sprite_ext(spr_itens, ds_inventario[# Infos.Item, 2], pos_x + (25 * escala), pos_y + (51 * escala), escala, escala, 0, c_white, 1);
			draw_text( pos_x + (25 * escala), pos_y + (51 * escala), ds_inventario[# Infos.Quantidade, 2]);
		}
		
	if(point_in_rectangle(mx, my, pos_x + (45 * escala) - 22, pos_y + (55 * escala), pos_x + (45 * escala) + (18 * escala), pos_y + (55 * escala) + (12 * escala))){
		draw_sprite_ext(spr_invBox, 0, pos_x + (45 * escala) -22, pos_y + (55 * escala), escala + 0.4, escala - 0.4, 0, c_white, 1);
		if(mouse_check_button_pressed(mb_left)){
			
		}
	}
}


