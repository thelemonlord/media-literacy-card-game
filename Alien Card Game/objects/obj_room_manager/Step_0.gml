// Run a different function depending on whether or not we're paused.

// Define the layers we should hide, and unhide.
pause_instances_id = layer_get_id("Pause_Instances");
pause_assets_id = layer_get_id("Pause_screen");

if (global.pause == true)
{
	state_paused();
}
else
{
	if (global.winner == true)
	{
		// Progress the timer
		timer -= delta_time / 200000;
			
		// Is the timer finished?
		if (timer <= 0)
		{
			// Then display the win!
			state_winner();
		}
	}
	else if (global.loser == true)
	{
		state_loser();
	}
	else
	{
		state_unpaused();
	}
}

if (keyboard_check_pressed(vk_escape))
{
	window_set_fullscreen(!window_get_fullscreen());
}

