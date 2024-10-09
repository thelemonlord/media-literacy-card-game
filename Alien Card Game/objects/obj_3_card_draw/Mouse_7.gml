/// @description Do something when the button is pressed.
// Assuming the mouse is clicking on us,
if (clicked)
{
	// Then the mouse button is released, set the deck to draw 3.
	obj_mouse_manager.card_draw = 3;
	global.pause = false;
	room_restart();
}