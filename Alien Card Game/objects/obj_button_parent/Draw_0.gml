/// @description Draw differently when clicked.
// Switch to a on-hover sprite.
if (looking_at_me)
{
	sprite_index = hover_sprite;
}
else
{
	sprite_index = normal_sprite;
}

// Draw our sprite: We do it differently depending on whether or not we've been clicked.
// If we haven't been clicked.
if !(clicked)
{
	// Set our color to draw as, as c_white. Which will make it render as normal.
	draw_sprite_ext(sprite_index,frame,x,y_coordinate,image_xscale,image_yscale,0,c_white,1);
}
else
{
	// Otherwise, if we have been clicked.
	// Set our colour to grey, which will grey the button out slightly.
	draw_sprite_ext(sprite_index,frame,x,y_coordinate,image_xscale,image_yscale,0,c_grey,1);
}

