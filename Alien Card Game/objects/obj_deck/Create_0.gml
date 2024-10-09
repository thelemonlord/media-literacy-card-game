/// @description Initialise variables and sort out what cards are available.
// Inherit the parent event
event_inherited();

// Cheater mode. For debug.
// Sorts the entire deck in order from top to bottom.
cheater = false;

// Variables.
card_holder =[];  // This is used to hold cards that we have pulled from our deck, but have not entered the play area.
				  
offset = 0.4;	  // This is how offset the spawned cards will be from the deck. It is a % of sprite width.

depth_offset = 1; // How much to offset the depth of a card on creation. Their depth should change depending on situation anyway, this is just for creation.

delay = 0;		  // This delays the cards being shuffled along. Useful for 3 card draw or greater so you dont see unnecisary movement.
delay_act = 3;    // This is what the delay timer is set to.

randomise();

// If the main menu music is playing, stop it.
if (audio_is_playing(snd_main_menu_music))
{
	audio_stop_sound(snd_main_menu_music)
}
// If our game music isn't playing, start it.
if !(audio_is_playing(snd_game_music))
{
	audio_play_sound(snd_game_music,1,true,1 - global.mute);
}


///  On create, lets actually build a deck.
// First, let's define what a card can be using a constructor.
// We're going to iterate through all possible combinations of cards to build a deck.
card = function(_suit, _number) constructor
{
    suit = _suit;
	number = _number;
} 

// Lets make an array to store all of our created cards.
array_of_cards = [];

// Let's iterate through each possible suit.
for (var _suit = 0; _suit < 4; _suit++)
{
	// Iterate through each possible number.
	for (var _number = 0; _number < 13; _number++)
	{
		// Now lets generate a card.
		var _card = new card(_suit,_number);
			
		// And push it at the end of our array.
		array_push(array_of_cards, _card);
	}
}

// Lets set up a game!
var _zone = noone;

// iterate as many times as we have zones
for (var _i = 0; _i < instance_number(obj_zone); _i++)
{
	// Find our zones.
    _zone = instance_find(obj_zone,_i);
	
	// Iterate as many times as we have through zones.
	for (var _j = 0; _j < _i + 1; _j++)
	{
		// Shuffle the deck,
		if (!cheater)
		{
			array_of_cards = array_shuffle(array_of_cards);
		}
		
		// And pop a card.
		var _card = array_pop(array_of_cards);
		
		// Create the instance of the card we want to create.
		var _instance = instance_create_depth(x,y, depth - (depth_offset++), obj_card,{
		// And set it's suit and number to the card we just pulled.
		// You can only set inbuilt variables, or variable definition variables using this method.
		suit : _card.suit,
		number : _card.number
		});
		
		// Make some cards hidden.
		if (_j != _i + 1)
		{
			_instance.flipped = false;
		}
		
		// Then set it's stack, to our current zone.
		_instance.stack = _zone;
		_instance.deck = id;
		array_push(_zone.card_holder, _instance);
	}
	
	// Tell the zone to update the position of cards in it's stack.
	// Since the update
	with(_zone)
	{
		event_user(0);
	}
}

			
// Start of game, shuffle the deck
// (If we're not a cheater!)
if (!cheater)
{
	array_of_cards = array_shuffle(array_of_cards);
}

// Here we're going to see if the board state has made an impossible game.
check_for_impossible_game = function()
{
	// We'll do this by checking each card in the deck, and seeing if it has somewhere it could go (Including on the bases!)
	var _zones = [];
	var _bases = [];
	var _zone_no = instance_number(obj_zone);
	var _base_no = instance_number(obj_base_parent);
	
	var _my_cards = array_concat(array_of_cards, card_holder);
	
	// First lets get all of our zones, and bases together.
	// Find all our zones.
	for (var _i = 0; _i < _zone_no; ++_i;)
	{
		_zones[_i] = instance_find(obj_zone,_i);
	}
	
	// Find all our bases.
	for (var _i = 0; _i < _base_no; ++_i;)
	{
		_bases[_i] = instance_find(obj_base_parent,_i);
	}
	
	// Go through each card in the deck.
	for (var _i = 0; _i < array_length(_my_cards) - 1; _i++)
	{
		// For each card in the deck, go through each zone.
		for (var _j = 0; _j < _zone_no; _j++)
		{
			// Get the last card in that zones array.
			var _last_card = array_last(_zones[_j].card_holder);
			if (_last_card == undefined) 
			{
				if (_my_cards[_i].number == 13) exit;
				show_debug_message("Stage 0: You have a playable card in deck, it is a king for creating a new zone.");
			}
			else
			{
				// If its the correct number, and correct colour
				if (_last_card.number == _my_cards[_i].number+1) && ((_my_cards[_i].suit <= 1) != (_last_card.suit <= 1))
				{
					// Then we've hit a playable card, and can exit the function.
					show_debug_message("Stage 1: You still have a playable card in deck, it's suit is: " + $"{[_my_cards[_i].suit]}" + " and it's number is "+ $"{[_my_cards[_i].number]}");
					exit;
				}
			}
		}
		
		// For each card in the deck, go through each base.
		for (var _j = 0; _j < _base_no; _j++)
		{
			// If its the correct number, and correct colour
			if (_bases[_j].number_needed == _my_cards[_i].number) && (_bases[_j].suit_needed == _my_cards[_i].suit)
			{
				// Then we've hit a playable card, and can exit the function.
				show_debug_message("Stage 2: You still have a playable card in deck that can be moved to a base, it's suit is: " + $"{[_my_cards[_i].suit]}" + " and it's number is "+ $"{[_my_cards[_i].number]}");
				exit;
			}
		}
	}
	
	// After checking each card in the deck, if we've exited those loops we've still not found a playable card.
	// Lets check to see if something on one of the stacks can be moved to reveal a new card.
	// Go through each zone.
	for (var _i = 0; _i < _zone_no; _i++)
	{
		// For each card in that zone.
		for (var _j = 0; _j < array_length(_zones[_i].card_holder) -1; _j++)
		{
			// find the first unflipped card.
			if (_zones[_i].card_holder[_j].flipped)
			{
				// Check it against each other zone.
				for (var _k = 0; _k < _zone_no; _k++)
				{
					var _last_card = array_last(_zones[_k].card_holder);
					if (_last_card != undefined) 
					{
						// If the card can be moved to the new zone
						if (_last_card.number == _zones[_i].card_holder[_j].number + 1) && (_last_card.black != _zones[_i].card_holder[_j].black)
						{
							// Then we've found a playable move, we can exit.
							show_debug_message("Stage 3: You have a stack of cards on the board that can be moved to reveal a new card. It's suit is: " + $"{[_zones[_i].card_holder[_j].suit]}" + " and it's number is "+ $"{[_zones[_i].card_holder[_j].number]}");
							exit;
						}
					}
				}
				break;
			}
		}
	}
	
	// If we've STILL not found a playable move, our last resort is to check if any of the bases have a card we can bring onto the board.
	// Go through each base.
	for (var _i = 0; _i < _base_no; ++_i;)
	{
		// For the top card in each base.
		var _last_card = array_last(_bases[_i].card_holder);
		if (_last_card != undefined) 
		{
			// Check to see if it can be moved into any zone.
			for (var _k = 0; _k < _zone_no; _k++)
			{
				var _last_card_zone = array_last(_zones[_k].card_holder);
				if (_last_card_zone != undefined) 
				{
					// If the card can be moved to the new zone
					if (_last_card_zone.number == _last_card.number+1) && (_last_card_zone.black != (_last_card.suit <= 1))
					{
						// Then we've found a playable move, we can exit.
						show_debug_message("Stage 3: You have a card in your bases that can be moved onto the board - potentialy revealing new moves. It's suit is: " + $"{[_last_card.suit]}" + " and it's number is "+ $"{[_last_card.number]}");
						exit;
					}
				}
			}
		}
	}
	
	// Game over.
	// Create the lose button.
	if !(instance_exists(obj_lose_button))
	{
		var _layer = layer_get_id("Instances");
		layer_sequence_create(_layer,room_width * 0.925, room_height * 0.925, seq_you_lose_button_pop_up);
	}
}