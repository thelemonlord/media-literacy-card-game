/// @description Do something when the button is pressed.
// Assuming the mouse is clicking on us,
if (clicked)
{
	// Then the mouse button is released, go to the previous screen.
	room_restart();
	room_goto(0);
	global.pause = false;
}