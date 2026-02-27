
function atacar(){
if (point_distance(x, y, target.x, target.y) <= attack_range)
{
    with (target)
    {
        vida_player -= 1; // dano
    }
}}
