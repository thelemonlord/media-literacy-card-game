/// @description This event is called when a card either moved from or to our stack.
// We do this here, so we're not running it every frame creating a bunch of unnecissary checks.

// Get the length of our array, which holds all cards in our stack.
var _cur_len = array_length(card_holder);

// Check if our number needed is equal to our cur_len before updating it.
// That way we can check if a card just got added because of the -1.
if (number_needed == _cur_len-1)
{
	// A card just got added!
	increased = true;
}

// If there are cards in our stack.
if (_cur_len > 0)
{
	// Iterate through all them.
	for(var _i = _cur_len; _i > 0; _i--)
	{		
		// Update their goal_x to be ours.
		card_holder[_i -1].goal_x = x;
		// Update their goal_y to be ours.
		card_holder[_i -1].goal_y = y;
		
		// Lets set our depth to be really high so it's above everything - that way when the player
		// hits the auto solve button near the end of the game and every card is added to this stack,
		// their depth is high enough that they render over each card not yet moved, rather than under.
		card_holder[_i -1].act_depth = depth -_i - 2000;
	}
	// Set the top most card to be flipped just incase it isn't.
	card_holder[_cur_len-1].flipped = true;
	
	// Set the top most card to be grabbable just incase it isn't.
	card_holder[_cur_len-1].grabbable = true;
}

// Lets set our number needed equal to our current length. Since arrays start at 0, this is basically saying
// our top card +1, since array_length returns whole integers starting from 1 for each item in the array. 
number_needed = _cur_len;

// Update what PFX we use when a card is added here.
if (number_needed > 11)
{
	pfx = ps_all_cards_in_deck;
}