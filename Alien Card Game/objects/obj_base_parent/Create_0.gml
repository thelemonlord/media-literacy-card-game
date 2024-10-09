/// @description Declare variables

// We need to store all cards in our stack.
// Cards need to be stored in our stack in the order they were placed in.
card_holder = [];

// These are initialised here, but are set in our childrens inherited create event.
number_needed = 0; // This will hold what number we need.
suit_needed = 0;   // This will hold what suit we need.
pfx = 0;		   // This is set to 0 as a holder, but it should be a pfx.
increased = false; // Used to tell our pfx to trigger.