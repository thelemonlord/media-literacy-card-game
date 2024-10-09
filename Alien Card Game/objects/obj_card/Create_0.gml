/// @description Define our card.
// Inherit the parent event
event_inherited();

// Lets get a list of all possible sprites that a card can be.
var _clubs = [spr_clubs_1,spr_clubs_2,spr_clubs_3,spr_clubs_4,spr_clubs_5,spr_clubs_6,spr_clubs_7,spr_clubs_8,spr_clubs_9,spr_clubs_10,spr_clubs_11,spr_clubs_12,spr_clubs_13]
var _spades =[spr_spades_1,spr_spades_2,spr_spades_3,spr_spades_4,spr_spades_5,spr_spades_6,spr_spades_7,spr_spades_8,spr_spades_9,spr_spades_10,spr_spades_11,spr_spades_12,spr_spades_13]

var _diamonds =[spr_diamonds_1,spr_diamonds_2,spr_diamonds_3,spr_diamonds_4,spr_diamonds_5,spr_diamonds_6,spr_diamonds_7,spr_diamonds_8,spr_diamonds_9,spr_diamonds_10,spr_diamonds_11,spr_diamonds_12,spr_diamonds_13]
var _hearts =[spr_hearts_1,spr_hearts_2,spr_hearts_3,spr_hearts_4,spr_hearts_5,spr_hearts_6,spr_hearts_7,spr_hearts_8,spr_hearts_9,spr_hearts_10,spr_hearts_11,spr_hearts_12,spr_hearts_13]

// After getting our list together, lets make a 2d array.
var _cards = [_clubs,_spades,_diamonds,_hearts];

// Finally let's set our suit and number.
// Suit and number are set in the variable definitions in the card,
// And are changed/set by the deck when it creates this card.
card_face = _cards[suit,number];
face = spr_card_back;

// Let's also figure out what are card colour is so we can represent it better.
black = false;
if (suit == 0) || (suit == 1)
{
	black = true;
}

// These are used to set a point to stay at, for example if we're on a stack or somewhere else.
// We need to move to this position then reset it.
goal_x = x;
goal_y = y;
act_depth = depth; // This is our cards normal depth.

// Amount of linear interpolation to apply when moving to our goal.
lerp_amount = 0.2;

// Determines whether we draw an outline around the card or not, aswell as if we can grab it or not.
grabbable = true;

// Used for double click to base functionality.
timer = 0;
double_click = 40; // frames of delay to accept a double c

// What stack we're currently in. 
stack = noone;
deck = noone; // This is so we have the deck's id handy as its a bit unique of a stack.
// If this is toggled to true, we return to the deck, flip back upside down and destroy ourself.
destroy_self = false;

// this is used to disable lerp movement on cards picked up in a stack.
picked_up = false;
/// These are needed to create a card flip effect when pulling a card from our deck.
// Used to create a flipping card effect.
ac_timer = 0;
speed_ac = 1.2;

// Determines if we've flipped our card yet or not.
flipped = true;

// The animation curve of our the flip.
ac = ac_card_flip;

// functions
state_card = function()
{
	// Lerp towards our goal at all times, unless we're picked up by the mouse.
	// This is so if we're dropped in an invalid spot we shoot back to our previous position.
	if !(obj_mouse_manager.grabbed_card == self) 
	{
		if !(picked_up)
		{
			x = lerp(x,goal_x,lerp_amount);
			y = lerp(y,goal_y,lerp_amount);
			if (x < goal_x + 2) && (x > goal_x - 2) && (y < goal_y + 2) && (y > goal_y - 2)
			{
				depth = act_depth;
				// Iterate through everything in our stack.
				for (var _i = 0; _i < array_length(stack.card_holder); _i++)
				{
					// Update their depths too.
					stack.card_holder[_i].depth = depth - _i;
				}
			}
		}

		picked_up = false;
	}
	else // If we're the grabbed card, lets bring everything in the same array as us that's below us.
	{
		picked_up = true;
		depth = -10000;
		var _self = 100;
		var _goal = 0;
		// Iterate through everything in our stack.
		for (var _i = 0; _i < array_length(stack.card_holder); _i++)
		{
			// Until we find ourself
			if (stack.card_holder[_i] = id)
			{
				// After we find ourself, set our _self to where we are in the loop.
				// Now,every loop hereafter is something higher in the stack than us, and so needs to be able
				// to come with.
				_self = _i;
			}
		
			// After we've found ourself		
			if (_i > _self) 
			{
				// Update all cards ahead of us.
				stack.card_holder[_i].picked_up = true;
				stack.card_holder[_i].x = x;
				stack.card_holder[_i].depth = depth - _i;
				
				// Adjust our y draw based on how many cards we're picking up.
				if (-obj_zone.number_of_cards + (array_length(stack.card_holder) - _self) > 0)
				{
					_goal = (-obj_zone.number_of_cards + (array_length(stack.card_holder) - _self)) / obj_zone.adjustment;
				}
			
				stack.card_holder[_i].y = y + ((_i - _self) * (sprite_height/(2 + _goal)));
			}	
		}
	}

}

state_destroy = function()
{
	// If the deck has told us to destroy ourself.
	// Mark ourself as no longer grabbable
	grabbable = false;
	
	// Flip our card again
	face = spr_card_back;
	// Set the animation speed really high so we're flipped by the time we reach the deck.
	speed_ac = 6;
	
	// lerp to the deck.
	x = lerp(x,obj_deck.x,lerp_amount);
	y = lerp(y,obj_deck.y,lerp_amount);
	
	
	// Once we're in a small bounding box around the deck
	if (x < obj_deck.x + 2) && ((x > obj_deck.x - 2)) && (y < obj_deck.y + 2) && ((y > obj_deck.y - 2))
	{
		// Destroy.
		instance_destroy();
	}
}

state = state_card;