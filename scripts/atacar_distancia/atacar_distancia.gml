function atacar_distancia(_boss)
{
    if (!instance_exists(_boss.target)) exit;

    var dir = point_direction(_boss.x, _boss.y, _boss.target.x, _boss.target.y);

    var b = instance_create_layer(_boss.x, _boss.y, "Instances_1", obj_bullet_enemy);
    b.direction = dir;
    b.speed = 4;
}