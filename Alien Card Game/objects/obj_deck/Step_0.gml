/// @description Update the pulled cards every frame.
// Inherit the parent event
event_inherited();

// Get the length of our array of all cards pulled.
var _cur_len = array_length(card_holder);
	
// If the delay timer is completed.
if (delay < 1)
{
	//// Iterate through all them.
	for(var _i = 0; _i < _cur_len; _i++)
	{
		// Update how grabbable they are.
		card_holder[_i].grabbable = false;
		// Update their goal_x.
		card_holder[_i].goal_x = x + obj_card.sprite_width * (1 + offset);
		// Update their goal_y
		card_holder[_i].goal_y = y;
	}
}
else 
{
	// Increment the delay timer accounting for delta time.
	delay -= delta_time / 200000;
}


// Update the top card to have grabbable set to true.
if (_cur_len > 0)
{
	card_holder[_cur_len -1].grabbable = true;
	card_holder[_cur_len -1].goal_x = x + obj_card.sprite_width * (1.6 + offset);
}	
// Update the second from top card.
if (_cur_len > 1)
{
	card_holder[_cur_len -2].goal_x = x + obj_card.sprite_width * (1.3 + offset);
}
// Update the 3rd card.
if (_cur_len > 2)
{
	card_holder[_cur_len -3].goal_x = x + obj_card.sprite_width * (1 + offset);
}