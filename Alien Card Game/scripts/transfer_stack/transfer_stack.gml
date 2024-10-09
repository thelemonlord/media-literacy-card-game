/// @description Transfers a given stack of cards to  another.
/// @param {Id.Instance} _stack_previous The stack we're leaving, it needs to contain the id in argument 3
/// @param {Id.Instance} _stack_new      The stack we're moving to.
/// @param {Id.Instance} _id		     The id to find in the _stack_previous that once found, anything after it in the stack will also be transferred.
function transfer_stack(_stack_previous, _stack_new, _id){
	// Create an empty array to store our popped cards
	var _popped = [];
	// This number needs to be a larger size than our previous stack, since we're going to
	// check anything larger than this - this will be set to i when we find ourselfs in our array
	var _self = array_length(_stack_previous.card_holder) + 1;
	
	// Lets tell our previous array we're no longer there by popping top down until we find ourself,
	// adding any popped values to the array we want to go to.
	// We don't make i a var since we're going to use it outside the scope to determine how many cards are in our previous stack.
	for (i = 0; i < array_length(_stack_previous.card_holder); i++)
	{
		// Are we at our self yet?
		if (_stack_previous.card_holder[i] = _id)
		{
			// If we are, lets update _self so if this loop continues anything after us will also be transferred.
			_self = i;
			// Add to the popped array, which is our list of cards to transfer.
			array_push(_popped,_id)
			// Update our stack, a variable used to keep track of where we are.
			_id.stack = _stack_new;
		}
		
		// Are we further in the loop after finding ourself
		if (i > _self) 
		{
			// If we are, also bring this object with us in the popped array
			array_push(_popped,_stack_previous.card_holder[i])
			// And remember to update our stack, a variable used to keep track of where we are.
			_stack_previous.card_holder[i].stack = _stack_new;
		}
	}
	
	// After doing that, lets get rid of all cards from the previous array that were moved to the new array
	array_delete(_stack_previous.card_holder,_self,i - _self);
	
	// Then finally, add the list of cards we wanted to transfer to our new array.
	_stack_new.card_holder = array_concat(_stack_new.card_holder, _popped);
	
	// Now, let's tell the stacks to update the cards in their stacks.
	with(_stack_previous)
	{
		event_user(0);
	}
	with(_stack_new)
	{
		event_user(0);
	}
	
	// Now if the deck is empty, we need to make a check that the game isn't impossible on every move.
	// On the deck obj
	with(obj_deck)
	{ 
		// If it's card holder and array are empty.
		if (array_length(card_holder) == 0) && (array_length(array_of_cards) == 0)
		{
			// Execute the check.
			check_for_impossible_game();
		}
	}
}