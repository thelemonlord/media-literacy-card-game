/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7E0361D2
/// @DnDArgument : "obj" "O_TutorialSplash"
/// @DnDSaveInfo : "obj" "O_TutorialSplash"
var l7E0361D2_0 = false;l7E0361D2_0 = instance_exists(O_TutorialSplash);if(l7E0361D2_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C9212C6
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "var" "global.TutPage"
	/// @DnDArgument : "value" "1"
	if(global.TutPage == 1){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 428F672B
		/// @DnDParent : 6C9212C6
		/// @DnDArgument : "soundid" "Collect_Point_01"
		/// @DnDArgument : "gain" "0.25"
		/// @DnDSaveInfo : "soundid" "Collect_Point_01"
		audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2BBB85BF
		/// @DnDParent : 6C9212C6
		/// @DnDArgument : "value" "2"
		/// @DnDArgument : "var" "global.TutPage"
		global.TutPage = 2;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 333B242F
		/// @DnDParent : 6C9212C6
		/// @DnDArgument : "xpos" "40"
		/// @DnDArgument : "ypos" "660"
		/// @DnDArgument : "objectid" "O_PrevTutorialArrow"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "O_PrevTutorialArrow"
		instance_create_layer(40, 660, "Instances_1", O_PrevTutorialArrow);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 3C7476F5
		/// @DnDParent : 6C9212C6
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 207BFAAA
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "var" "global.TutPage"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "1"
	if(!(global.TutPage == 1)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36253739
		/// @DnDParent : 207BFAAA
		/// @DnDArgument : "var" "global.TutPage"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "11"
		if(!(global.TutPage == 11)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 15F2E39C
			/// @DnDParent : 36253739
			/// @DnDArgument : "soundid" "Collect_Point_01"
			/// @DnDArgument : "gain" "0.25"
			/// @DnDSaveInfo : "soundid" "Collect_Point_01"
			audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 30654B12
			/// @DnDParent : 36253739
			/// @DnDArgument : "value" "+1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.TutPage"
			global.TutPage += +1;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 31A31789
			/// @DnDParent : 36253739
			exit;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16B56A07
		/// @DnDParent : 207BFAAA
		/// @DnDArgument : "var" "global.TutPage"
		/// @DnDArgument : "value" "11"
		if(global.TutPage == 11){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0A4DC8E7
			/// @DnDParent : 16B56A07
			/// @DnDArgument : "soundid" "Collect_Point_01"
			/// @DnDArgument : "gain" "0.25"
			/// @DnDSaveInfo : "soundid" "Collect_Point_01"
			audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 6C34B4F4
			/// @DnDParent : 16B56A07
			/// @DnDArgument : "value" "+1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "global.TutPage"
			global.TutPage += +1;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0CC2CA5A
			/// @DnDParent : 16B56A07
			instance_destroy();}}}