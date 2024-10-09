/// @description Do something when the button is pressed.
// Assuming the mouse is clicking on us,
if (clicked)
{
	// Then the mouse button is released, draw 1	
	obj_mouse_manager.card_draw = 1;
	global.pause = false;
	room_restart();
}