/// @description Declare variables

// We need to store all cards in our stack.
// Cards need to be stored in our stack in the order they were placed in.
// The name needs to be card_holder for the stack to function with the transfer_stack script.
card_holder = [];

image_xscale = 0.95;
image_yscale = 0.95;

// This will store what our current alpha should be, when the player brings their mouse near it, it should get brighter.
alpha = 0;

// This is used to make the alpha stronger or weaker based on distance. Lower number means it will fade much quicker.
alpha_multiplier = 0.09;

// This is the amount of cards until we have to start adjusting our cards position to make sure they all fit.
number_of_cards = 7;

// This is the amount to adjust the cards by when the above amount condition is met.
adjustment = 2.2;
unflipped_offset = 60;