// diminui o timer
if (timer > 0) timer--;

// procura o player
var p = instance_nearest(x, y, obj_noct);

if (instance_exists(p))
{
    var dist = point_distance(x, y, p.x, p.y);
    
    if (dist <= range && timer <= 0)
    {
        // causa dano no player
        with (p)
        {
            vida_player -= other.damage;
        }
        
        timer = cooldown;
    }
}
