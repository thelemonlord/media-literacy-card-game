/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FAB4586
/// @DnDArgument : "var" "global.InfoNeedsChanged"
/// @DnDArgument : "value" "1"
if(global.InfoNeedsChanged == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05FCD1A5
	/// @DnDParent : 3FAB4586
	/// @DnDArgument : "var" "global.InfoFaceValue"
	if(global.InfoFaceValue == 0){	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 72817CEF
		/// @DnDParent : 05FCD1A5
		/// @DnDArgument : "speed" "0.1"
		image_speed = 0.1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 22E870CB
		/// @DnDParent : 05FCD1A5
		/// @DnDArgument : "spriteind" "SPR_InfoNeutral"
		/// @DnDSaveInfo : "spriteind" "SPR_InfoNeutral"
		sprite_index = SPR_InfoNeutral;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0CFA55C9
		/// @DnDParent : 05FCD1A5
		/// @DnDArgument : "var" "global.InfoNeedsChanged"
		global.InfoNeedsChanged = 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79169B19
	/// @DnDParent : 3FAB4586
	/// @DnDArgument : "var" "global.InfoFaceValue"
	/// @DnDArgument : "value" "1"
	if(global.InfoFaceValue == 1){	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3DE37803
		/// @DnDParent : 79169B19
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 302B12FA
		/// @DnDParent : 79169B19
		/// @DnDArgument : "spriteind" "SPR_InfoHappy"
		/// @DnDSaveInfo : "spriteind" "SPR_InfoHappy"
		sprite_index = SPR_InfoHappy;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0C8714B8
		/// @DnDParent : 79169B19
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 180);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 51085715
		/// @DnDParent : 79169B19
		/// @DnDArgument : "var" "global.InfoNeedsChanged"
		global.InfoNeedsChanged = 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D524E1E
	/// @DnDParent : 3FAB4586
	/// @DnDArgument : "var" "global.InfoFaceValue"
	/// @DnDArgument : "value" "2"
	if(global.InfoFaceValue == 2){	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3BAD1579
		/// @DnDParent : 2D524E1E
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 75D888E8
		/// @DnDParent : 2D524E1E
		/// @DnDArgument : "spriteind" "SPR_InfoAngry"
		/// @DnDSaveInfo : "spriteind" "SPR_InfoAngry"
		sprite_index = SPR_InfoAngry;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5F73A889
		/// @DnDParent : 2D524E1E
		/// @DnDArgument : "steps" "180"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 180);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 60BE9B4B
		/// @DnDParent : 2D524E1E
		/// @DnDArgument : "var" "global.InfoNeedsChanged"
		global.InfoNeedsChanged = 0;}}