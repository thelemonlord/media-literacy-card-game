/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42EF0C3E
/// @DnDArgument : "var" "global.SourceDisplayValue"
/// @DnDArgument : "value" "1"
if(global.SourceDisplayValue == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1A247BE2
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(330, 50, global.SourceString, 250, 2900, 0.1, 0.1, 0)"
	/// @description Execute Code
	draw_text_ext_transformed(330, 50, global.SourceString, 250, 2900, 0.1, 0.1, 0)

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 409EA267
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "1"
	if(global.WebsiteDisplayValue == 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7939F051
		/// @DnDParent : 409EA267
		/// @DnDArgument : "x" "445"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "sprite" "T"
		/// @DnDSaveInfo : "sprite" "T"
		draw_sprite(T, 0, 445, 300);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E6A57BB
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "2"
	if(global.WebsiteDisplayValue == 2){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6223A275
		/// @DnDParent : 2E6A57BB
		/// @DnDArgument : "x" "445"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "sprite" "F"
		/// @DnDSaveInfo : "sprite" "F"
		draw_sprite(F, 0, 445, 300);}}