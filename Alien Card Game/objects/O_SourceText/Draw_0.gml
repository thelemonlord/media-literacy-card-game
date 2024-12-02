/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42EF0C3E
/// @DnDArgument : "var" "global.SourceDisplayValue"
/// @DnDArgument : "value" "1"
if(global.SourceDisplayValue == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1A247BE2
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_scrolling(660, 175, global.SourceString, 0.75, 30, snd_drawtextsound);"
	/// @description Execute Code
	draw_text_scrolling(660, 175, global.SourceString, 0.75, 30, snd_drawtextsound);}