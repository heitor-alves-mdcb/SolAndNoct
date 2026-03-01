
// Movimento
y += vsp;

// Se colidir com o teto, desce
if (place_meeting(x, y - 4, obj_colisor)) {
    vsp = 5;
}

// Se colidir com o chão, sobe
if (place_meeting(x, y + 4, obj_colisor)) {
    vsp = -5;
}

