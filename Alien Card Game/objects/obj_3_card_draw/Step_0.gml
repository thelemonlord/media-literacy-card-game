/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Make the button lerp down to our goal y to make a really nice click when the button is pressed.
if (obj_mouse_manager.card_draw == 3)
{
	clicked = true;
	y_coordinate = lerp(y_coordinate, goal_y, lerp_amount);
}