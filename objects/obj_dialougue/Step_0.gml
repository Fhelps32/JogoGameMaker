// COLE O CÓDIGO ABAIXO SUBSTITUINDO O CONTEÚDO DO SEU EVENTO STEP

if global.pause == true {
    exit;
}

if (atv == true) {
    // COLETA DE INFORMAÇÕES
    scr_text();
    atv = false;
}

// Se o diálogo já terminou, destrói a instância
if (pag >= ds_grid_height(text)) {
    instance_destroy();
    exit; // Usa exit para não executar o resto do código no frame em que é destruído
}

if keyboard_check_pressed(ord("F")) { // Verificação para avançar o diálogo
    if caracter < string_length(text[# 2, pag]) {
        caracter = string_length(text[# 2, pag]);
    } else {
        if pag < ds_grid_height(text) - 1 {
            pag++;
            caracter = 0;
        } else { // Se for a última página, destrói o objeto
            instance_destroy();
        }
    }
}