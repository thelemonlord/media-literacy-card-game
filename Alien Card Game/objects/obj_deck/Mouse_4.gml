/// @description Spawn a card when clicked. Or reshuffle cards if not.
// Lets first check the deck even has any cards.
if (array_length(array_of_cards) <= 0)
{
	// Check if there are any cards in our holder.
	if (array_length(card_holder) <= 0)
	{
		// If neither of those are true, there's no point executing all the following code.
		exit;
	}
}

// Check that there are cards in the deck, and that we're not paused.
if (array_length(array_of_cards) > 0) && (global.pause == false)
{	
	if (obj_mouse_manager.card_draw > 1) // Then check if we're on draw 1 mode, or draw 3 mode.
	{
		// If we're drawing more than 1 card a click, play the multidraw sound.
		audio_play_sound(snd_three_cards_placed,1,false,1 - global.mute);
	}
	else 
	{
		// Otherwise we're just drawing 1 card, so we'll choose one of 5 variations and play one of them.
		var _sfx = choose(snd_one_card_placed_1,snd_one_card_placed_2,snd_one_card_placed_3,snd_one_card_placed_4);
		audio_play_sound(_sfx,1,false,1 - global.mute);
	}
}

// Now to actually do our card draw, if we're not paused.
if (global.pause == false)
{
	// We want to spawn as many cards, as we have card draws. Default we'll either be drawing 1 or 3 cards.
	for (var _j = 0; _j < obj_mouse_manager.card_draw; _j++)
	{
		// If there are still cards in the deck.
		if (array_length(array_of_cards) > 0)
		{			
			
			// Set a delay for the slide over, so that we don't see it happen.
			delay = delay_act;
			
			// And pop a card.
			var _card = array_pop(array_of_cards);
	
			// Create the instance of the card we want to create.
			var _instance = instance_create_depth(x,y, depth - (depth_offset++), obj_card,{
			// And set it's suit and number to the card we just pulled.
			// You can only set inbuilt variables, or variable definition variables using this method.
			suit : _card.suit,
			number : _card.number
			});
	
			_instance.stack = id;
			_instance.deck = id;
	
			// This will hold ALL cards we pull, and we need to remove cards we play from this, as all these cards get shuffled back into our deck.
			array_push(card_holder,_instance);
		
			// Check if we're out of cards in our deck.
			if (array_length(array_of_cards) <= 0)
			{
				if (array_length(card_holder) <= 0)
				{
					sprite_index = spr_deck_base;
				}
				else
				{
					sprite_index = spr_shuffle_deck_base;
				}
			}
		}
		else if (_j == 0) && (obj_mouse_manager.grabbed_card == noone) // If we've been clicked but we're empty, lets reshuffle the deck. Only if this is our first click on an empty deck.
		{
			_j = -1;
			if !(audio_is_playing(snd_card_deck_shuffle))
			{
				audio_play_sound(snd_card_deck_shuffle,1,false,1 - global.mute);
			}
			
			// Get all deployed cards still in the holding pile.
			var _cur_len = array_length(card_holder);
	
			// Iterate through all cards still in the holding pile.
			for(var _i = 0; _i < _cur_len; _i++)
			{
				// Rebuilt our array of cards using the pile, and our struct.
				var _card = new card(card_holder[_i].suit,card_holder[_i].number);
				array_push(array_of_cards,_card);
				
				// Tell it to destroy itself.
				card_holder[_i].destroy_self = true;
			}
			
			// Reset our card holder.
			card_holder = [];
	
			array_of_cards = array_reverse(array_of_cards);
			
			with(obj_deck)
			{
				check_for_impossible_game();
			}
			
			
			// Reset our sprite
			sprite_index = spr_card_back;
			break;
		}
	}
}

