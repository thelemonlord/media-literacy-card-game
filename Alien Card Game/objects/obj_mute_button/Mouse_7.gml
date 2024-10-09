/// @description Do something when the button is pressed.
// Assuming the mouse is clicking on us,
if (clicked)
{
	// Then the mouse button is released, let's toggle between volume modes.
	global.mute = !global.mute;
	frame = global.mute;
	
	// If our game music isn't playing, start it.
	if (audio_is_playing(snd_main_menu_music))
	{
		audio_sound_gain(snd_main_menu_music,1 - global.mute,0);
	}
}