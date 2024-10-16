/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5786A3C5
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.InputPassValue"
global.InputPassValue = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09A1BD98
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "value" "global.PassValue"
if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 768DD62E
	/// @DnDParent : 09A1BD98
	/// @DnDArgument : "var" "global.ComboMult"
	/// @DnDArgument : "value" "1"
	if(global.ComboMult == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BADBA96
		/// @DnDParent : 768DD62E
		/// @DnDArgument : "expr" "(100 * global.ComboMult)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ViewScore"
		global.ViewScore += (100 * global.ComboMult);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66423539
		/// @DnDParent : 768DD62E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ComboMult"
		global.ComboMult += 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 494C1795
		/// @DnDApplyTo : {O_TestCard_1}
		/// @DnDParent : 768DD62E
		with(O_TestCard_1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F5E2CA2
		/// @DnDParent : 768DD62E
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "O_TestCard_1"
		/// @DnDSaveInfo : "objectid" "O_TestCard_1"
		instance_create_layer(0, 32, "Instances", O_TestCard_1);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 644B990B
/// @DnDArgument : "var" "global.ComboMult"
/// @DnDArgument : "value" "2"
if(global.ComboMult == 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7621397C
	/// @DnDParent : 644B990B
	/// @DnDArgument : "expr" "(100 * global.ComboMult)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ViewScore"
	global.ViewScore += (100 * global.ComboMult);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6447E3D6
	/// @DnDParent : 644B990B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1A4A0C77
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 644B990B
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 266E0669
	/// @DnDParent : 644B990B
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 235BC34C
/// @DnDArgument : "var" "global.ComboMult"
/// @DnDArgument : "value" "3"
if(global.ComboMult == 3){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03CFBEAC
	/// @DnDParent : 235BC34C
	/// @DnDArgument : "expr" "(100 * global.ComboMult)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ViewScore"
	global.ViewScore += (100 * global.ComboMult);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C264A82
	/// @DnDParent : 235BC34C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult = 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4CFCCD90
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 235BC34C
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 324C8609
	/// @DnDParent : 235BC34C
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D3929C6
/// @DnDArgument : "var" "global.ComboMult"
/// @DnDArgument : "value" "4"
if(global.ComboMult == 4){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74A2209C
	/// @DnDParent : 4D3929C6
	/// @DnDArgument : "expr" "(100 * global.ComboMult)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ViewScore"
	global.ViewScore += (100 * global.ComboMult);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 601C68EE
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 4D3929C6
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5DD0A4DE
	/// @DnDParent : 4D3929C6
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}

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
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult += 1;

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