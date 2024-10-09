/// @description Move the grabbed card.
if (global.pause == false)
{
	// We do it in this manner so we can handle card stacks, as well as the mouse cursor moving
	// quickly and causing the cursor to exit the bbox of the card and dropping the card prematurely.
	if (grabbed_card != noone)
	{
		// As long as we're actually grabbing a card.
		// Set its x and y to the mouse cursor.
		grabbed_card.x = lerp(grabbed_card.x, mouse_x, lerp_amount);
		grabbed_card.y = lerp(grabbed_card.y, mouse_y, lerp_amount);
		looking_at = grabbed_card.id;
	}
	else
	{
		// Run our looking at function.
		update_looking_at();
	}

	if !(mouse_check_button(mb_left))
	{
		/// Reset grabbed card when not holding anything.
		grabbed_card = noone;
	}

}