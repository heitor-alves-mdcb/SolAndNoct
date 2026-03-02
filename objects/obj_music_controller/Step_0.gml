var new_music = -1;

// === escolha por room ===
switch (room) {
    
    case rm_menu:
        new_music = snd_menu;
        break;
        
    case rm_tutorial:
        new_music = snd_ambient;
        break;
	case rm_totems:
    new_music = snd_ambient;
    break;
	
	case rm_cultistas:
    new_music = snd_ambient;
    break;
	
	case rm_caveira:
    new_music = snd_ambient;
    break;
	
	case rm_intro:
    new_music = snd_ambient;
    break;
	
	case rm_final:
    new_music = snd_ambient;
    break;

        
    case rm_boss:
        new_music = snd_boss;
        break;
}

// só troca se for diferente
if (new_music != current_sound) {
    
    // para música antiga
    if (audio_is_playing(current_music)) {
        audio_stop_sound(current_music);
    }
    
    // toca nova
    current_music = audio_play_sound(new_music, 1, true);
    current_sound = new_music;
}