/// @description Initialise our mute function variable
// Inherit the parent event
event_inherited();

// Since theres only 2 frames, and frames start at 0,
// we can use the bool to represent what frame we're on.
frame = global.mute;

// Set our default and hover sprites
normal_sprite = sprite_index;
hover_sprite = spr_mute_button_hover;
