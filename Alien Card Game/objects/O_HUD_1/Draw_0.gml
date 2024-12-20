/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B3DBEA0
/// @DnDArgument : "value" "alarm[0] / 60"
var temp = alarm[0] / 60;

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 217CABF4
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "xscale" "0.15"
/// @DnDArgument : "yscale" "0.15"
/// @DnDArgument : "caption" ""TIME: ""
/// @DnDArgument : "text" "temp - frac(temp) + 1"
draw_text_transformed(30, 20, string("TIME: ") + string(temp - frac(temp) + 1), 0.15, 0.15, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5F29B091
/// @DnDArgument : "x" "440"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "xscale" "0.15"
/// @DnDArgument : "yscale" "0.15"
/// @DnDArgument : "caption" ""SCORE: ""
/// @DnDArgument : "text" "global.ViewScore"
draw_text_transformed(440, 20, string("SCORE: ") + string(global.ViewScore), 0.15, 0.15, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 050F2D86
/// @DnDArgument : "x" "240"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "xscale" "0.15"
/// @DnDArgument : "yscale" "0.15"
/// @DnDArgument : "caption" ""COMBO: ""
/// @DnDArgument : "text" "global.ComboMult"
draw_text_transformed(240, 20, string("COMBO: ") + string(global.ComboMult), 0.15, 0.15, 0);