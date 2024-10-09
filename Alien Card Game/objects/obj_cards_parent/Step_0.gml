/// @description Check if the cursor is over us.
// If the cursor is over us
if (collision_point(mouse_x,mouse_y,self,false,false))
{
	// Set moused to true
	moused = true;
}
else
{
	// Otherwise, to false.
	moused = false;
}