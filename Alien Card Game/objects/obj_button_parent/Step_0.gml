/// @description If we're clicked.
goal_y = y + 20;

if (collision_point(mouse_x,mouse_y,self,false,false)) 
{
	if (looking_at_me == false)
	{
		audio_play_sound(snd_button_hover,1,false,1 - global.mute);
	}
	
	looking_at_me = true;
}
else
{
	// Update that the cursor is no longer moused over us.
	looking_at_me = false;
}

// If the mouse is on our hitbox, and they click.
if (looking_at_me) && (mouse_check_button(mb_left))
{
	if (clicked == false)
	{
		audio_play_sound(snd_button_press,1,false,1 - global.mute);
	}
		
	// Then set clicked to true, as we're being clicked!
	clicked = true;
	
	// Make the button lerp down to our goal y to make a really nice click when the button is pressed.
	y_coordinate = lerp(y_coordinate, goal_y, lerp_amount);
}
else
{
	// If we're not being clicked, or we were being clicked but now the mouse has moved off us,
	// set it so we're unclicked.
	clicked = false;
	
	// Make the button lerp back to our normal y to make a really nice click when the button is pressed.
	y_coordinate = lerp(y_coordinate, y, lerp_amount);
}
