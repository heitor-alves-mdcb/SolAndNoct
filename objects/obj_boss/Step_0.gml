// Se player não existe, para
if (!instance_exists(target)) exit;

// Distância até o player
var dist = point_distance(x, y, target.x, target.y);

// Cooldown do ataque
if (attack_timer > 0) attack_timer--;

// ===== ESTADOS =====
switch (state)
{
    case "chase":
    {
        // Movimento em direção ao player
        var dir = point_direction(x, y, target.x, target.y);
        
        x += lengthdir_x(bspd, dir);
        y += lengthdir_y(bspd, dir);
        
        // Se estiver perto, atacar
        if (dist <= attack_range && attack_timer <= 0)
        {
            state = "attack";
        }
    }
    break;
    
    case "attack":
    {
        // Executa ataque
        atacar();
        
        attack_timer = attack_cooldown;
        state = "chase";
    }
    break;
}
if (hp == 0) instance_destroy();