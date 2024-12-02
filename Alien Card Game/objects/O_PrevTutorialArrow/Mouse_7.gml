/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7E0361D2
/// @DnDArgument : "obj" "O_TutorialSplash"
/// @DnDSaveInfo : "obj" "O_TutorialSplash"
var l7E0361D2_0 = false;l7E0361D2_0 = instance_exists(O_TutorialSplash);if(l7E0361D2_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B696545
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "var" "global.TutPage"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "12"
	if(!(global.TutPage == 12)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A900C4B
		/// @DnDParent : 5B696545
		/// @DnDArgument : "var" "global.TutPage"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "2"
		if(!(global.TutPage == 2)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 75824A23
			/// @DnDParent : 7A900C4B
			/// @DnDArgument : "soundid" "Collect_Point_01"
			/// @DnDArgument : "gain" "0.25"
			/// @DnDSaveInfo : "soundid" "Collect_Point_01"
			audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 7F9B5A33
			/// @DnDParent : 7A900C4B
			/// @DnDArgument : "value" "-1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.TutPage"
			global.TutPage += -1;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 71164595
			/// @DnDParent : 7A900C4B
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CE381B9
		/// @DnDParent : 5B696545
		/// @DnDArgument : "var" "global.TutPage"
		/// @DnDArgument : "value" "2"
		if(global.TutPage == 2){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 799A7FC9
			/// @DnDParent : 0CE381B9
			/// @DnDArgument : "soundid" "Collect_Point_01"
			/// @DnDArgument : "gain" "0.25"
			/// @DnDSaveInfo : "soundid" "Collect_Point_01"
			audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 336EF989
			/// @DnDParent : 0CE381B9
			/// @DnDArgument : "value" "-1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.TutPage"
			global.TutPage += -1;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 72E9024D
			/// @DnDParent : 0CE381B9
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 5E6B86B4
			/// @DnDParent : 0CE381B9
			exit;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36A6A776
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "var" "global.TutPage"
	/// @DnDArgument : "value" "12"
	if(global.TutPage == 12){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 52B06668
		/// @DnDParent : 36A6A776
		/// @DnDArgument : "soundid" "Collect_Point_01"
		/// @DnDArgument : "gain" "0.25"
		/// @DnDSaveInfo : "soundid" "Collect_Point_01"
		audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 15F273FA
		/// @DnDParent : 36A6A776
		/// @DnDArgument : "value" "-1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.TutPage"
		global.TutPage += -1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6BEA3C33
		/// @DnDParent : 36A6A776
		/// @DnDArgument : "xpos" "345"
		/// @DnDArgument : "ypos" "660"
		/// @DnDArgument : "objectid" "O_NextTutorialArrow"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "O_NextTutorialArrow"
		instance_create_layer(345, 660, "Instances_1", O_NextTutorialArrow);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 432E158A
		/// @DnDParent : 36A6A776
		exit;}}