/// @description Squash and squeeze to our goal.
// Inherit the parent event
event_inherited();

// Only animate if the card should be unlocking
if(face != sprite_index)
{
	
	// Play a flip sound
	if !(audio_is_playing(snd_card_flip_1)) && !(audio_is_playing(snd_card_flip_2))
	{
		var _sfx = choose(snd_card_flip_1,snd_card_flip_2);
		audio_play_sound(_sfx,1,false,1 - global.mute);
	}
	
	
	// Run the animation curve forwards
	// Accounting for delta time.
	ac_timer += delta_time / 200000;
		
	// If the animation timer is complete, it should be effectively "unlocked"
	if(ac_timer >= 1)
	{	
		// Set the sprite to the actual card sprite
		sprite_index = face;
	}	 
}
else
{
	// Otherwise, it should be running backwards so it returns to normal dimensions
	ac_timer -= speed_ac * delta_time / 200000;
		
	// If the animation is complete backwards, mark it as complete
	if(ac_timer <= 0)
	{
		ac_timer = 0;
	}
}

// Set the x scale and y scale according to the animation curve
image_xscale = animcurve_channel_evaluate(animcurve_get_channel(ac, "xScale"), ac_timer);
image_yscale = animcurve_channel_evaluate(animcurve_get_channel(ac, "yScale"), ac_timer);

// Draw our sprite.
draw_self();