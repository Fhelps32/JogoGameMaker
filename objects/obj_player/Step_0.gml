if global.pause{
	exit;	
}
script_execute(state);


roda_estado();

show_debug_message(string(dir));

if (keyboard_check_pressed(ord("E"))) {
    inventario_aberto = !inventario_aberto;
    
    if (inventario_aberto) {
        instance_create_layer(x, y, "GUI", obj_inventario);
    } else {
        with (obj_inventario) instance_destroy();
    }
}


