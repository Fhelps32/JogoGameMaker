// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_text(){
	//SWITCH PARA SABER QUAL NOME, SPRITE, FALA, LADO DA FOTO VAI SER DIDA NO DIÁLOGO
	
	switch npc_name {
			case "npc1":
				scr_add_text("npc1", spr_npc1, "O que você quer fazer?", 1);
				scr_add_choice("", ["Alimentar", "Coletar recursos"]);
			break;

		case "npc2":
			scr_add_text("npc1", spr_npc2, "O que você quer fazer?", 1);
			scr_add_choice("", ["Alimentar", "Coletar recursos"]);
		break;

		case "npc3":
			scr_add_text("npc1", spr_npc3, "O que você quer fazer?", 1);
			scr_add_choice("", ["Alimentar", "Coletar recursos"]);
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

function scr_add_choice(_prompt, _opcoes) {
    global.choice_prompt = _prompt;
    global.choice_opcoes = _opcoes;
    global.choice_index = -1; // nenhuma escolhida
    global.choice_ativa = true;
}

function scr_choice_escolhida(index) {
    var opcao = global.choice_opcoes[index];

    switch(opcao) {
        case "Alimentar":
            show_message("Você escolheu alimentar!");
            break;
        case "Coletar recursos":
            show_message("Você escolheu coletar recursos!");
            break;
    }
}


