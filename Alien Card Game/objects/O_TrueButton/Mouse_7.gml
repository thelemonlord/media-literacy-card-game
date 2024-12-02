/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5786A3C5
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.InputPassValue"
global.InputPassValue = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E0C086D
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "global.PassValue"
if(!(global.InputPassValue == global.PassValue)){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 49434DCE
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "code" "layer_set_visible("E_ScreenShake", 1);$(13_10)"
	layer_set_visible("E_ScreenShake", 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5D79C899
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 60);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 10C5D276
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "soundid" "snd_incorrect"
	/// @DnDSaveInfo : "soundid" "snd_incorrect"
	audio_play_sound(snd_incorrect, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0F4AC763
	/// @DnDInput : 2
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "var" "global.InfoFaceValue"
	/// @DnDArgument : "var_1" "global.InfoNeedsChanged"
	global.InfoFaceValue = 2;
	global.InfoNeedsChanged = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 620FFBBB
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult = 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4F306802
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 3E0C086D
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 560969DA
	/// @DnDApplyTo : {O_ClaimText}
	/// @DnDParent : 3E0C086D
	with(O_ClaimText) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 324A137D
	/// @DnDApplyTo : {O_SourceText}
	/// @DnDParent : 3E0C086D
	with(O_SourceText) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66170C55
	/// @DnDApplyTo : {O_WebsiteName}
	/// @DnDParent : 3E0C086D
	with(O_WebsiteName) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 416C8BE0
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}