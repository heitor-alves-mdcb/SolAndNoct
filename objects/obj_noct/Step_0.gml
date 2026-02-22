// =====================================
// 1. INPUT
// =====================================
if (keyboard_check_pressed(ord("Z")))
{
    player_form = 1 - player_form;
}

// =====================================
// 2. LÓGICA DE MOVIMENTO (sem sprite aqui!)
// =====================================

// exemplo de leitura
var move = keyboard_check(vk_left) - keyboard_check(vk_right);

// =====================================
// 3. COMPATIBILIDADE
// =====================================
can_move = (player_form == global.world);

if (!can_move)
{
    hspeed = 0;
    vspeed = 0;
}

// =====================================
// 4. MOVIMENTO (só se puder)
// =====================================
if (can_move)
{
    var _right		= keyboard_check(ord("A"));
	var _left		= keyboard_check(ord("D"));
	var _up			= keyboard_check(ord("W"));
	var _down		= keyboard_check(ord("S"));

	var _xinput		= _left - _right;
	var _yinput		= _down - _up;

	move_and_collide(_xinput * velh, _yinput * velv, obj_colisor);
	
	if (player_form ==0){
		if(_right){sprite_index = spr_noct_run; image_xscale =-1;}
		if(_left){sprite_index = spr_noct; image_xscale =1;}
		if(_up){sprite_index = spr_noct_run_back;}
		if(_down){sprite_index = spr_noct_run_front;}
	}else{
		if(_right){sprite_index = spr_sol; image_xscale = -1;}
		if(_left){sprite_index = spr_sol; image_xscale = 1;}
	}
}

// =====================================
//  5. DEFINIÇÃO FINAL DA SPRITE (ÚNICO LUGAR)
// =====================================
if (player_form == 0){
	sprite_index = spr_noct;
}else{
	sprite_index = spr_sol;
}


var moving = abs(hspeed) > 0.1;