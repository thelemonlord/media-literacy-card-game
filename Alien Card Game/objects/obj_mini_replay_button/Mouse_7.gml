/// @description Do something when the button is pressed.
// Assuming the mouse is clicking on us,
if (clicked)
{
	global.pause = false;
	// Then the mouse button is released, restart the room.
	room_restart();
}