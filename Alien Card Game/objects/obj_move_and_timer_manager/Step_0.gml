/// @description Update our timer.
var _timer = get_timer()/1000000 - last_second;
if _timer > 2
{
	last_second = get_timer()/1000000; 
	_timer = get_timer()/1000000 - last_second;
}
if !(global.pause)
{
	timer += _timer;
}

last_second = get_timer()/1000000; 
var _base_no = instance_number(obj_base_parent);
var _bases = []
	
bases_left = 4;
// Check all our bases
for (var _i = 0; _i < _base_no; ++_i;)
{
	_bases[_i] = instance_find(obj_base_parent,_i);
	if (_bases[_i].number_needed > 12)
	{
		bases_left--;
	}
}

if (bases_left <= 0)
{
	global.winner = true;
}



// If the player clicks the solve button this becomes true.
if (bool_solve)
{
	solve();
}

