/// @description Check if we should play PFX
// If we collide, and the stack of the card is our id, and a card has been added,
if (other.stack = id) && (increased)
{
	// Disable increased so we don't trigger our pfx over and over.
	increased = false;
	
	// Create our PFX
	var _pfx = part_system_create(pfx);
	
	// Set it's position to ours.
	part_system_position(_pfx, x, y);
}