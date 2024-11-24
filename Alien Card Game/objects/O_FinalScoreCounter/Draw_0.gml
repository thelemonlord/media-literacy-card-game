/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2FCF300A
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "xscale" "0.6"
/// @DnDArgument : "yscale" "0.6"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" ""TIME'S UP!""
draw_text_transformed(400, 160, "" + string("TIME'S UP!"), 0.6, 0.6, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2B5074B8
/// @DnDArgument : "x" "550"
/// @DnDArgument : "y" "360"
/// @DnDArgument : "xscale" "0.15"
/// @DnDArgument : "yscale" "0.15"
/// @DnDArgument : "caption" ""FINAL SCORE: ""
/// @DnDArgument : "text" "global.FinalScoreTick"
draw_text_transformed(550, 360, string("FINAL SCORE: ") + string(global.FinalScoreTick), 0.15, 0.15, 0);