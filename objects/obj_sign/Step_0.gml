if (global.world == 0)
{
    sprite_index = spr_black_sign;
}
else
{
    sprite_index = spr_white_sign;
}

var _player = instance_nearest(x, y, obj_noct);

if (instance_exists(_player)) {
    var _dist = point_distance(x, y, _player.x, _player.y);
    global.show_text = (_dist <= range);
}