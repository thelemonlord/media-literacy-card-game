/// @description figure out states
// Inherit first
event_inherited();

// If we've not yet flipped, make sure we're not grabbable, and out face is spr_card_back.
if (flipped = false)
{
	face = spr_card_back;
	grabbable = false;
}
else // Otherwise we've flipped update our face!
{
	// Since we made fancy code in our draw, doing this will automatically flip and reveal our card.
	// Neat!
	face = card_face;
}

// If the deck has told us to destroy ourself
if (destroy_self)
{
	// Switch our state over to do so.
	state = state_destroy;
}

// Call our (small) state machine.
state();
timer--;
