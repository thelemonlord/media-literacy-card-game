/// @description Update If we've been clicked
// Inherit the parent event
event_inherited();

// If we've been clicked
if (obj_move_and_timer_manager.bool_solve)
{
	// Update our clicked.
	clicked = true;
}