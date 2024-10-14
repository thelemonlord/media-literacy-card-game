/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 31AD6AC3
/// @DnDArgument : "filename" ""CardPrompts.ini""
ini_open("CardPrompts.ini");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 79567FCA
/// @DnDArgument : "var" "global.PromptString"
/// @DnDArgument : "section" ""Claims""
/// @DnDArgument : "key" ""1""
global.PromptString = ini_read_string("Claims", "1", "default");

/// @DnDAction : YoYo Games.Files.Ini_Read
/// @DnDVersion : 1
/// @DnDHash : 021CCB60
/// @DnDArgument : "var" "global.PassValue"
/// @DnDArgument : "section" ""Answers""
/// @DnDArgument : "key" ""1""
global.PassValue = ini_read_string("Answers", "1", "default");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4FF80933
/// @DnDArgument : "color" "$FF00CC00"
draw_set_colour($FF00CC00 & $ffffff);
var l4FF80933_0=($FF00CC00 >> 24);
draw_set_alpha(l4FF80933_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6CE365A9
/// @DnDArgument : "font" "AgencyFB"
/// @DnDSaveInfo : "font" "AgencyFB"
draw_set_font(AgencyFB);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 43791981
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 29369023
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 444FFB15
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "value" "global.PassValue"
if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 136E96CC
	/// @DnDParent : 444FFB15
	/// @DnDArgument : "objind" "O_TestCard_2"
	/// @DnDSaveInfo : "objind" "O_TestCard_2"
	instance_change(O_TestCard_2, true);}