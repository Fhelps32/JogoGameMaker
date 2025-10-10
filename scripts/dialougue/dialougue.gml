// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_text(){
	//SWITCH PARA SABER QUAL NOME, SPRITE, FALA, LADO DA FOTO VAI SER DIDA NO DIÁLOGO
	
	switch npc_name {
		case "npc1":
			scr_add_text("npc1", spr_player_idle_front, "Teste dialogo...", 0);
			scr_add_text("npc1", spr_npc2, "Tesde de velocidade de escrita e troca de lado e quebra de linha... teste teste, aaa aa aaaaa aaaaaa aaaa aaaaaaaa aa aaaaa aaaaaaaaaa aaa aaaa aaaa aaaa aaaaaa", 1);
			scr_add_text("Player", spr_player_idle_front, "teste teste teste teste teste, aa aaaaaaaa aaaaaaa aaaaa aa aaaaa aa aa aaaa aaaaaa aaaaa aaaaa aaaaaa a aaaaaaa", 0);
		break;
	}
}

function scr_add_row(){
		//FUNÇÃO PARA CRIAR MAIS UMA LAYER NO GRID
		///@arg grid
	
		var _grid = argument[0];
		ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
		return(ds_grid_height(_grid)-1);	
}

function scr_add_text(){
	//FUNÇÃO CRIADA PARA SER COLOCADO QUAIS SERÃO OS DADOS DO DIÁLOGO
	
	///@arg nome
	///@arg sprite
	///@arg texto
	///@arg lado
	
	var _grid = text;
	var _y = scr_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}

