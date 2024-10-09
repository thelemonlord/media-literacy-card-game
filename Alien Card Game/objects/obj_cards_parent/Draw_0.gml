/// @description Draw a card highlight when moused over.
// If the player is mousing over this card, make it moused.
if (moused) && (obj_mouse_manager.looking_at = id) && (grabbable = true) || (moused) && (obj_mouse_manager.looking_at = id) && (menu = true)
{
	// Draw a stroke around the card.
	draw_sprite_ext(spr_card_stroke_with_blur,0,x+1,y+2,scale,scale,image_angle,c_white,0.5);
}