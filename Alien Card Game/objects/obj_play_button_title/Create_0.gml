/// @description Play the opening chime.
// Set our default and hover sprites
normal_sprite = sprite_index;
hover_sprite = spr_play_button_hover_title;

// Inherit the parent event
event_inherited();

var _mute = global.mute;
global.mute = false;

// Play the chime.
if !(_mute)
{
	audio_play_sound(snd_title_cards_animation,1,false,1 - global.mute);
}

// If the main menu music isn't playing, play it.
audio_play_sound(snd_main_menu_music,1,true,1 - global.mute);

// If our game music is playing, stop it.
if (audio_is_playing(snd_game_music))
{
	audio_stop_sound(snd_game_music);
}

global.mute = _mute;