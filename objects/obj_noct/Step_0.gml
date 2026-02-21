var _right		= keyboard_check(vk_right) or keyboard_check(ord("A"));
var _left		= keyboard_check(vk_left) or keyboard_check(ord("D"));
var _up			= keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down		= keyboard_check(vk_down) or keyboard_check(ord("S"));

var _xinput		= _left - _right;
var _yinput		= _down - _up;

move_and_collide(_xinput * velh, _yinput * velv, obj_colisor);

if (_left){
	sprite_index = spr_noct_run;
	image_xscale = 1;
}else{
	sprite_index = spr_noct;	
}

if (_right){
	sprite_index = spr_noct_run;
	image_xscale =-1;
}

if (_up){
	sprite_index = spr_noct_run_back;
}

if (_down){
	sprite_index = spr_noct_run_front
}