/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3F241B10
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 64D99CFF
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "xscale" "0.1"
/// @DnDArgument : "yscale" "0.1"
/// @DnDArgument : "caption" ""Claim: ""
/// @DnDArgument : "text" "global.PromptString"
draw_text_transformed(30, 15, string("Claim: ") + string(global.PromptString), 0.1, 0.1, 0);