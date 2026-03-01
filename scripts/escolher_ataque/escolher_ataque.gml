function escolher_ataque(_boss)
{
    if (random(1) < _boss.special_chance)
    {
        _boss.state = "attack_ranged";
    }
    else
    {
        _boss.state = "attack";
    }
}