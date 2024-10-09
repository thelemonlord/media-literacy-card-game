/// @description Draw the zone if the user is holding a king.

// We only want to do this if we have a king grabbed, so first, lets check if we have a card grabbed at all.
if (obj_mouse_manager.grabbed_card != noone)
{
	// If the card we have grabbed is a king.
	if (obj_mouse_manager.grabbed_card.number == 12)
	{
		// Calculate our alpha based on the distance from the mouse in respects to the radius of the room.
		alpha = 1 - (distance_to_point(mouse_x,mouse_y) / (room_width * alpha_multiplier));
		
		// Clamp the lower bound of our alpha to be at least 0.1 so we can always see it when holding a king.
		if (alpha < 0.1) alpha = 0.1;
		
		// Draw our zone, passing in our determined alpha.
		draw_sprite_ext(spr_card_stroke,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
	}
}