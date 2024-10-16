/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25579F92
/// @DnDArgument : "var" "global.ViewGameTimer"
global.ViewGameTimer = alarm_get(0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 217CABF4
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "xscale" "0.1"
/// @DnDArgument : "yscale" "0.1"
/// @DnDArgument : "caption" ""TIME: ""
/// @DnDArgument : "text" "global.ViewGameTimer / 7200"
draw_text_transformed(30, 20, string("TIME: ") + string(global.ViewGameTimer / 7200), 0.1, 0.1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5F29B091
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "xscale" "0.1"
/// @DnDArgument : "yscale" "0.1"
/// @DnDArgument : "caption" ""SCORE: ""
/// @DnDArgument : "text" "global.ViewScore"
draw_text_transformed(500, 20, string("SCORE: ") + string(global.ViewScore), 0.1, 0.1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 050F2D86
/// @DnDArgument : "x" "275"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "xscale" "0.1"
/// @DnDArgument : "yscale" "0.1"
/// @DnDArgument : "caption" ""COMBO: ""
/// @DnDArgument : "text" "global.ComboMult"
draw_text_transformed(275, 20, string("COMBO: ") + string(global.ComboMult), 0.1, 0.1, 0);