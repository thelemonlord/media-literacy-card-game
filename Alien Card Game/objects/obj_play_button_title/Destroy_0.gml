/// @description Insert description here
// If our game music is playing, stop it.
if (audio_is_playing(snd_main_menu_music))
{
	audio_stop_sound(snd_main_menu_music);
}