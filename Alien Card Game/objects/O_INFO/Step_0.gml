/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F4D89F1
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "not" "1"
if(!(global.InputPassValue == 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D1F68E8
	/// @DnDParent : 0F4D89F1
	/// @DnDArgument : "var" "global.InputPassValue"
	/// @DnDArgument : "value" "global.PassValue"
	if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6FDD97D1
		/// @DnDParent : 6D1F68E8
		/// @DnDArgument : "spriteind" "SPR_InfoHappy"
		/// @DnDSaveInfo : "spriteind" "SPR_InfoHappy"
		sprite_index = SPR_InfoHappy;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 27165CD2
		/// @DnDParent : 6D1F68E8
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 09485B66
		/// @DnDParent : 6D1F68E8
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 180);}}