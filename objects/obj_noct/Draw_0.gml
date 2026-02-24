draw_self();


draw_set_colour(c_gray);
/*
draw_text(x, y - 64, "world: " + string(global.world));
draw_text(x, y - 48, "form: " + string(player_form));
draw_text(x, y - 32, "move: " + string(can_move));
*/

draw_text(x, y, "vida: " + string(vida_player));
draw_set_colour(-1);