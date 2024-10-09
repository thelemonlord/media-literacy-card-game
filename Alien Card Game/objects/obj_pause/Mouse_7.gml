/// @description Do something when the button is pressed.
// Assuming the mouse is clicking on us,
if (clicked)
{
	// If the pause button is clicked, set pause to true.
	global.pause = true;
	
	// Play the pause sound.
	audio_play_sound(snd_pause,1,false,1 - global.mute);
}