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
if(!(global.InputPassValue == global.PassValue)){	/// @DnDAction : YoYo Games.Common.Variable
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

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 416C8BE0
	/// @DnDParent : 3E0C086D
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}