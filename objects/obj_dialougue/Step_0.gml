if global.pause == true{
	exit;	
}

if (atv == true){
	//COLETA DE INFORMAÇÕES 
	scr_text()
	atv = false;
}


if keyboard_check_pressed(ord("F")){ //Verifição de que quantas "paginas" terá no dialogo
	if caracter < string_length(text[# 2, pag]){
		caracter = string_length(text[# 2, pag]);
	}
	else{
		if pag < ds_grid_height(text) - 1{
		pag++;
		caracter = 0;
		}
		else{ //caso o dialogo acabar o objeto será destruído
			instance_destroy()
		}
	}
}


