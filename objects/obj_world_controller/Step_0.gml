switch_timer--;

if (switch_timer <= 0)
{
    switch_timer = room_speed * 5;
    
    // alterna o mundo
    global.world = 1 - global.world;
    
    // avisa todo mundo que o mundo mudou
    with (all)
    {
        event_user(0); // evento customizado
    }
}

