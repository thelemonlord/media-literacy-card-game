/// @description Let's figure out if we need to do something based on what just happened.

var _collided = instance_place(x,y,obj_zone);

// If we've collided with a zone.
if (_collided) && (obj_mouse_manager.grabbed_card == self) && (number == 12) && (array_length(_collided.card_holder) == 0)
{
	// Then transfer from our current stack, to the new one.
	transfer_stack(stack,_collided,id);
	obj_move_and_timer_manager.moves++;
}

// For card collisions we need a list, as we could be colliding with any number of cards.
var _card_list = ds_list_create();
// So, lets check our position and save all id's in our list.
_collided = instance_place_list(x,y,obj_card,_card_list,true);

// When using Instance_place_list _collided simply returns the number of collisions, instead of any ID's.
// All ID's are stored within our ds_list.
if (_collided > 0) && (obj_mouse_manager.grabbed_card == self)
{
	// iterate through our list of collided objects.
	for (var _i = 0; _i < _collided; _i++)
	{
		// If the thing we have collided with isn't in our stack. (since if it was, it would be picked up.)
		// And it is upright, not a card back.
		if (_card_list[| _i].picked_up == false) && (_card_list[| _i].flipped)
		{
			// Get the last card in that card's array.
			var _last_card = array_last(_card_list[| _i].stack.card_holder);
			// If its the correct number, correct colour, and NOT the deck and NOT a base
			if (_last_card.number == number + 1) && (_last_card.black != black) && (_card_list[| _i].stack != deck) && !(place_meeting(x,y, obj_base_parent))
			{
				// Then transfer from our current stack, to the new one.
				transfer_stack(stack,_card_list[| _i].stack,id);
				obj_move_and_timer_manager.moves++;
			}
		}
	}
}

ds_list_destroy(_card_list);

// We collided with a base
_collided = instance_place(x,y,obj_base_parent);

if (_collided) && (obj_mouse_manager.grabbed_card == self) && (array_last(stack.card_holder) == id)
{
	if (number == _collided.number_needed) && (suit == _collided.suit_needed)
	{
		// Then transfer from our current stack, to the new one.
		transfer_stack(stack,_collided,id);
		obj_move_and_timer_manager.moves++;
	}
}

// If we've been clicked we need to start a timer to see if we've been double clicked.
if (timer < 0) 
{
	timer = double_click;
}
else
{
	// We just double clicked!
	// Lets see if the card we just double clicked, can zip to a base.
	var _base_no = instance_number(obj_base_parent);
	var _base = noone;
	
	// Check all our bases
	for (var _i = 0; _i < _base_no; ++_i;)
	{
	    _base = instance_find(obj_base_parent,_i);
		if (number == _base.number_needed) && (suit == _base.suit_needed) && (array_last(stack.card_holder) == id)
		{
			// Then transfer from our current stack, to the new one.
			transfer_stack(stack,_base,id);
			obj_move_and_timer_manager.moves++;
		}
	}
}

