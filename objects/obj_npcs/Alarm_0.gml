global.fome_atual--;

// Garante que a fome não seja menor que 0
if (global.fome_atual < 0) {
    global.fome_atual = 0;
}

// Reinicia o alarme para o ciclo continuar
alarm[0] = room_speed;