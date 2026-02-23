if (instance_exists(obj_noct)) {
    var _dist = point_distance(x, y, obj_noct.x, obj_noct.y);

    switch (estado) {
        case "parado":
            sprite_index = spr_cultist; // sprite parado
            if (foi_atacado && _dist <= distancia_visao) {
                estado = "perseguindo";
            }
            break;

        case "perseguindo":
            sprite_index = spr_cultist; // sprite correndo
            
            // Movimentação
            var _dir = point_direction(x, y, obj_noct.x, obj_noct.y);
            x += lengthdir_x(v_velocidade, _dir);
            y += lengthdir_y(v_velocidade, _dir);

            // Condição para Atacar
            if (_dist <= distancia_ataque && pode_atacar) {
                estado = "atacando";
                pode_atacar = false;
                ja_deu_dano = false; // Reseta o dano para o novo soco
                image_index = 0;     // Começa a animação do frame zero
                alarm[0] = timer_ataque; 
            }
            
            // Condição para Desistir
            if (_dist > distancia_visao) estado = "parado";
            break;

        case "atacando":
    sprite_index = spr_cultist_attack; 
    
    // Se a animação estiver entre o frame 2 e 4 (ajuste conforme sua animação)
    if (image_index >= 1 && image_index <= 4 && !ja_deu_dano) {
        var _inst = instance_place(x, y, obj_noct);
        
        if (_inst != noone) {
            _inst.vida_player -= 1;
            ja_deu_dano = true; // Impede o dano múltiplo no mesmo soco
        }
    }

            // Quando a animação acabar, volta a perseguir
            if (image_index >= image_number - 1) {
                estado = "perseguindo";
            }
            break;
    }
}

if (vida_enemy == 0) instance_destroy();