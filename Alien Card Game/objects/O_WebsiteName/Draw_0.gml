/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DF21EF6
/// @DnDArgument : "var" "global.SourceDisplayValue"
/// @DnDArgument : "value" "1"
if(global.SourceDisplayValue == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5A715070
	/// @DnDParent : 6DF21EF6
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_scrolling_website(660, 70, global.WebsiteName, 0.75, 30, undefined);$(13_10)"
	/// @description Execute Code
	draw_text_scrolling_website(660, 70, global.WebsiteName, 0.75, 30, undefined);}