/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5786A3C5
/// @DnDArgument : "value" "2"
/// @DnDArgument : "var" "global.InputPassValue"
global.InputPassValue = 2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5021EAF2
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "global.PassValue"
if(!(global.InputPassValue == global.PassValue)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 514592D0
	/// @DnDParent : 5021EAF2
	/// @DnDArgument : "soundid" "snd_incorrect"
	/// @DnDSaveInfo : "soundid" "snd_incorrect"
	audio_play_sound(snd_incorrect, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14D7A6ED
	/// @DnDParent : 5021EAF2
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult = 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E4266A8
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 5021EAF2
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6A1E1040
	/// @DnDParent : 5021EAF2
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}