/// @description Figure out what we're doing if we're paused.
// Lets initialise our globals which are fairly self-explanatory.
global.pause = false; // If we're paused or not.
global.winner = false; // If we've won or not.
global.loser = false; // If we've lost or not.

// seq holds whatever menu we need to have up, whether that be paused, winner or loser.
seq = NaN;

// These layers each hold assets used in the respective screens. Mainly the dim black background.
pause_instances_id = layer_get_id("Pause_Instances");
pause_assets_id = layer_get_id("Pause_screen");
win_assets_id = layer_get_id("Win_screen");
win_instances_id = layer_get_id("Win_Instances");

// After winning, let's add this delay, so that it's more satisfying getting to look at the completed board state.
timer = 6; 

state_paused = function()
{
	// Make them visible.
	if (is_nan(seq))
	{
		seq = layer_sequence_create(pause_instances_id,room_width/2,room_height/2,seq_pause_pop_up);
	}
	
	layer_set_visible(pause_assets_id, true);
}

state_unpaused = function()
{
	layer_sequence_destroy(seq);
	seq = NaN;
	
	// Make them invisible.
	layer_set_visible(pause_assets_id, false);
	
}

state_winner = function()
{
	// Stop our game music.
	if (audio_is_playing(snd_game_music))
	{
		audio_stop_sound(snd_game_music);
	}
	

	// Make them visible.
	if (is_nan(seq))
	{
		// Play our victory music.
		if !(audio_is_playing(snd_game_win))
		{
			audio_play_sound(snd_game_win,1,false,1 - global.mute);
		}
	
		seq = layer_sequence_create(win_instances_id,room_width/2,room_height/2,seq_you_win_pop_up);
	}
	
	layer_set_visible(win_assets_id, true);
}

state_loser = function()
{
	// Stop our game music.
	if (audio_is_playing(snd_game_music))
	{
		audio_stop_sound(snd_game_music);
	}
	

	// Make them visible.
	if (is_nan(seq))
	{
		// Play our victory music.
		if !(audio_is_playing(snd_game_lose))
		{
			audio_play_sound(snd_game_lose,1,false,1 - global.mute);
		}
	
		seq = layer_sequence_create(win_instances_id,room_width/2,room_height/2,seq_you_lose);
	}
	
	layer_set_visible(win_assets_id, true);
}