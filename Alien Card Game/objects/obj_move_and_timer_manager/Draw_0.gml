/// @description Draw text to screen using our font

// Set the alignment to center.
draw_set_halign(fa_center);

// Set the font.
draw_set_font(fnt_righteous);

// Set the color (this is the same green we use for the buttons.)
draw_set_color(#668F3D);

// Draw some text.
// So here we draw "MOVES:" the + means to concatonate the lines as if they are the same line
// the "\n" means new line.
// Then doing $"{}" allows you to display what's stored in a variable.
draw_text(room_width * 0.925, room_height /3, "MOVES:"+"\n" + $"{moves}");

// Get our seconds by flooring (rounding down) our timer.
var _seconds = floor(timer);

// Get our minutes by div'ing our seconds. div is like dividing, but only returns whole integers. (so 64 div 60 = 1)
var _mins = _seconds div 60;

// Now we need to decide whether or not we need the extra 0 on both our minutes and our seconds.
// As we want our timer to read 00:00, not 0:0. since it would look strange if it were 10:2.

// So lets use the ? operator, which is like a if statement but used in-line.
// Here we're saying IF _mins is >= 10, then just display _mins, otherwise,
// contactonate a 0 + _mins. Here you can also see why the $"{}" is needed as otherwise
// it would try to add "0" + _mins = error.
_mins = (_mins >= 10) ? $"{_mins}" : "0" + $"{_mins}";

// Same as above but a bit more complicated.
// if  the number of seconds >= 10 after accounting for the number of minutes that have passed (as we dont want to count minutes we've already seen)
// then just display the number of seconds, accounting for the minutes that have already passed.
// Otherwise add a "0" to the front!
// It looks complicated but it's really not!
_seconds = ((_seconds - ((_seconds div 60)*60)) >= 10) ? $"{_seconds - ((_seconds div 60)*60)}" : "0" + $"{_seconds - ((_seconds div 60)*60)}";

// Then finally after all our hard work, display the timer.
draw_text(room_width * 0.925, room_height /1.7, _mins + ":" + _seconds);

// And reset our draw alignment.
draw_set_halign(fa_left);