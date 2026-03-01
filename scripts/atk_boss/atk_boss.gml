function atacar(_boss)
{
    if (!instance_exists(_boss.target)) exit;

    if (point_distance(_boss.x, _boss.y, _boss.target.x, _boss.target.y) <= _boss.attack_range)
    {
        with (_boss.target)
        {
            hp -= 1;
        }
    }
}