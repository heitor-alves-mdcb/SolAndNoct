// se player não existir, para
if (!instance_exists(target)) exit;

// distância e direção
var dist = point_distance(x, y, target.x, target.y);
var dir  = point_direction(x, y, target.x, target.y);

// reduz cooldown
if (attack_timer > 0) attack_timer--;

// =========================
// MACHINE STATE
// =========================
switch (state)
{
    case "chase":
    {
        // movimento em direção ao player
        x += lengthdir_x(spd, dir);
        y += lengthdir_y(spd, dir);

        // hora de atacar?
        if (attack_timer <= 0)
        {
            if (dist <= attack_range)
            {
                escolher_ataque(id);
            }
            else if (dist <= ranged_range)
            {
                escolher_ataque(id);
            }
        }
    }
    break;

    case "attack":
    {
        atacar(id);
        attack_timer = attack_cooldown;
        state = "chase";
    }
    break;

    case "attack_ranged":
    {
		show_debug_message("ATAQUE RANGED DISPAROU");
        atacar_distancia(id);
        attack_timer = attack_cooldown; // especial mais lento
        state = "chase";
    }
    break;
}

// ===== DANO POR CONTATO =====
if (place_meeting(x, y, target))
{
    with (target)
    {
        vida_player -= 1;
    }
}

// Verifica se ele se moveu para a direita ou esquerda neste frame
if (x != xprevious) { 
    // Se a posição atual for maior que a anterior, ele foi para a direita
    image_xscale = (x > xprevious) ? 1 : -1;
}