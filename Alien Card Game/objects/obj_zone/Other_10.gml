/// @description This event is called when a card either moved from or to our stack.
// We do this here, so we're not running it every frame creating a bunch of unnecissary checks.
// Get the length of our array, that holds all cards in our stack.
var _cur_len = array_length(card_holder);
	
for(var _j = _cur_len; _j > 0; _j--)
{		
	// If there are cards in our stack.
	if (_cur_len > 0)
	{
		// Iterate through all them.
		for(var _i = _cur_len; _i > 0; _i--)
		{		
			// Create a temporary goal variable which will hold our figured out goal.
			var _goal = y;
		
			// Crete a temporary modifier variable, which will hold a variable we'll use for dynamic stack resizing.
			var _modifier = 0;
		
			// If i-1 is less than 0, that means there's no card above us in the stack, so we're the top most
			// card - that means we don't even need to figure out our y - it's just the zones y!
			if !(_i-2 < 0)
			{
				// If we're flipped.
				if (card_holder[_i-1].flipped)
				{		
					// If the card above us in the stack is flipped.
					if !(card_holder[_i -2].flipped)
					{
						// Set our goal to be it's goal, + an offset.
						_goal = card_holder[_i-2].goal_y + unflipped_offset;
					}   
					else 
					{				
						// If our length is longer than our set number of cards, then that means its time
						// to dynamically compress the stack.
						if (-number_of_cards + array_length(card_holder) > 0)
						{
							// Take the difference divided by our adjustement to get a modifier that gets biggeras the difference does.
							_modifier = (-number_of_cards + array_length(card_holder)) / adjustment;
						}
					
						// Set our goal to be the card
						_goal = card_holder[_i -2].goal_y + (sprite_height/(2 + _modifier));
					}
				}
				else // If we're not flipped.
				{
					// Just set our goal to be the goal of the also unflipped card above us + an offset.
					_goal = card_holder[_i -2].goal_y + unflipped_offset;
				}
			}
		
			// Finalise our goal_y.
			card_holder[_i-1].goal_y = _goal;
		
			// Set our goal x to the zones x.
			card_holder[_i-1].goal_x = x;
		
			// Set our depth to be the depth of the zone, - where we are in the stack.
			card_holder[_i-1].act_depth = depth -_i;
		
			// Set the top card to be flipped, and grabbable.
			card_holder[_cur_len-1].flipped = true;
			card_holder[_cur_len-1].grabbable = true;
		}
	}
}