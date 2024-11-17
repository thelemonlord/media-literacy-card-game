/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DD10FEA
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "value" "global.PassValue"
if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D87D6AE
	/// @DnDParent : 3DD10FEA
	/// @DnDArgument : "var" "global.ComboMult"
	/// @DnDArgument : "value" "4"
	if(global.ComboMult == 4){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6D32FD84
		/// @DnDParent : 6D87D6AE
		/// @DnDArgument : "soundid" "snd_correct"
		/// @DnDSaveInfo : "soundid" "snd_correct"
		audio_play_sound(snd_correct, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47279439
		/// @DnDParent : 6D87D6AE
		/// @DnDArgument : "expr" "(100 * 4)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ViewScore"
		global.ViewScore += (100 * 4);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 61333596
		/// @DnDApplyTo : {O_TestCard_1}
		/// @DnDParent : 6D87D6AE
		with(O_TestCard_1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 00DE5CD6
		/// @DnDParent : 6D87D6AE
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "O_TestCard_1"
		/// @DnDSaveInfo : "objectid" "O_TestCard_1"
		instance_create_layer(0, 32, "Instances", O_TestCard_1);}}