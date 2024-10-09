/// @description Stay pressed if option chosen.
// Inherit the parent event
event_inherited();
// If we're chosen.
if (obj_mouse_manager.card_draw == 1)
{
	// Stay clicked.
	clicked = true;
	// And move our draw to our goal_y
	y_coordinate = lerp(y_coordinate, goal_y, lerp_amount);
}