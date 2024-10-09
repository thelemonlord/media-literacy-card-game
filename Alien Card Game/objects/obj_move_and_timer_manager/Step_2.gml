
if (mouse_check_button_released(mb_left))
{
	/// @description Check if Auto Solve.
	fail = false;

	// If the deck is empty.
	if (array_length(obj_deck.card_holder) == 0) && (array_length(obj_deck.array_of_cards) == 0)
	{
		// Go through each of our zones.
		for(var _i = 0; _i < array_length(zones); _i++)
		{
			// go through each card in that zone.
			for(var _j = 0; _j < array_length(zones[_i].card_holder); _j++)
			{
				// If that card isn't flipped
				if !(zones[_i].card_holder[_j].flipped)
				{
					// Cause the autosort to fail.
					fail = true;
				}
			}
		}
	}
	else
	{
		// If the deck isn't empty, fail.
		fail = true;
	}

	// If it didnt fail at any point.
	if !(fail)
	{
		// Create the solve button.
		if !(instance_exists(obj_solve))
		{
			var _layer = layer_get_id("Instances");
			layer_sequence_create(_layer,room_width * 0.925, room_height * 0.925,seq_auto_complete_pop_up);
		}
	}
}