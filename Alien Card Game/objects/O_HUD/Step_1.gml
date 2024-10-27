/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53D6511A
/// @DnDArgument : "var" "global.AlarmCounter"
global.AlarmCounter = alarm_get(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F66A8E0
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "value" "global.PassValue"
if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 022B28E9
	/// @DnDParent : 0F66A8E0
	/// @DnDArgument : "var" "global.ComboMult"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "4"
	if(global.ComboMult < 4){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 231E0375
		/// @DnDParent : 022B28E9
		/// @DnDArgument : "var" "global.AlarmCounter"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "17900"
		if(global.AlarmCounter < 17900){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6217B028
			/// @DnDParent : 231E0375
			/// @DnDArgument : "soundid" "snd_correct"
			/// @DnDSaveInfo : "soundid" "snd_correct"
			audio_play_sound(snd_correct, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43DA2448
			/// @DnDParent : 231E0375
			/// @DnDArgument : "expr" "(100 * global.ComboMult)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.ViewScore"
			global.ViewScore += (100 * global.ComboMult);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C628860
			/// @DnDParent : 231E0375
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "global.ComboMult"
			global.ComboMult += 1;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3CBAA77D
			/// @DnDApplyTo : {O_TestCard_1}
			/// @DnDParent : 231E0375
			with(O_TestCard_1) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 41648B1C
			/// @DnDParent : 231E0375
			/// @DnDArgument : "ypos" "32"
			/// @DnDArgument : "objectid" "O_TestCard_1"
			/// @DnDSaveInfo : "objectid" "O_TestCard_1"
			instance_create_layer(0, 32, "Instances", O_TestCard_1);}}}