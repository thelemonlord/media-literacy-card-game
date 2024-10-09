/// @description Initialise variables.
// We want to only ever be able to grab 1 card at a time.
grabbed_card = noone;

// This lerp is used to make the card "snap" its center to the cursor.
// Doing it in a lerp means it wont happen in a single frame, and if the player moves their
// cursor very fast it will "lag" behind. We keep this high, as we want it to be basically
// instant.
lerp_amount = 0.55;

// Initialise our global pause variable.
global.pause = false;
// Default our audio on.
global.mute = false;

// This is used to tell what card we're looking at. This is used, in the scenario there are multiple cards
// Ontop of one another, we want to only pick the top most one.
looking_at = noone;

// As this object is persistent, we want to use this to keep track of our card draw.
card_draw = 1;

// This is set up as a function so that if you are on a mobile device, and click a card - when you initially
// click you wouldn't have been looking at anything since you don't have a mouse!
// So, let's also call this function when we click a card. That way, even if we're not looking at anything and
// click a card, it still works.
update_looking_at = function()
{
	// Create a list to store everything we're looking at.
		var _list = ds_list_create();

		var _num = collision_point_list(mouse_x,mouse_y,obj_cards_parent,false,true,_list,false);

		// Create a variable to hold the lowest depth we've seen at this point.
		var _lowest = noone;

		// If we've detected something
		if (_num > 0)
		{
			// If it does, lets go through the list of things we've just hit.
			for (var _i = 0; _i < _num; ++_i;)
			{
				// If lowest doesn't equal no object
				if (_lowest != noone)
				{
					// If the current iteration has a lower depth
				    if (_list[| _i].depth < _lowest.depth)
					{
						// Store it's id.
						_lowest = _list[| _i];
					}
				}
				else // Lowest is empty, lets fill it.
				{
					_lowest = _list[| _i];
				}
			}
			// After figuring out the lowest depth, store it.
			looking_at = _lowest;
		}
		else // If we've detected nothing.
		{
			// We're not looking at anything!
			looking_at = noone;
		}

		ds_list_destroy(_list);
}