/// @description Intitialise variables.

// This parent object can be assigned to a button to make it compress when clicked.
clicked = false;

// This will be used to hold our y coordinate for lerping our position when we're clicked.
y_coordinate = y;

// This will be our goal y when we're clicked.
goal_y = y + 20;

// The amount of smoothing that should be done on the button when it's clicked.
// Try playing around with the number, the lower it is, the more "Mushy" the button feels.
lerp_amount = 0.6;

// If the button has an animation, this controls what frame it is on.
frame = 0;

// Used to determine weather or not we should play a sfx if the cursor is over us.
looking_at_me = false;