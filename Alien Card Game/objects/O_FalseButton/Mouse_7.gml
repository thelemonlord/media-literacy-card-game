/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5786A3C5
/// @DnDArgument : "value" "2"
/// @DnDArgument : "var" "global.InputPassValue"
global.InputPassValue = 2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2638A4C5
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "value" "global.PassValue"
if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02986192
	/// @DnDParent : 2638A4C5
	/// @DnDArgument : "var" "global.ComboMult"
	/// @DnDArgument : "value" "1"
	if(global.ComboMult == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 717F007D
		/// @DnDParent : 02986192
		/// @DnDArgument : "expr" "(100 * global.ComboMult)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ViewScore"
		global.ViewScore += (100 * global.ComboMult);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33B0A233
		/// @DnDParent : 02986192
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ComboMult"
		global.ComboMult += 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 78F2B768
		/// @DnDApplyTo : {O_TestCard_1}
		/// @DnDParent : 02986192
		with(O_TestCard_1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0B874678
		/// @DnDParent : 02986192
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "O_TestCard_1"
		/// @DnDSaveInfo : "objectid" "O_TestCard_1"
		instance_create_layer(0, 32, "Instances", O_TestCard_1);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 325F90E5
/// @DnDArgument : "var" "global.ComboMult"
/// @DnDArgument : "value" "2"
if(global.ComboMult == 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 509F510C
	/// @DnDParent : 325F90E5
	/// @DnDArgument : "expr" "(100 * global.ComboMult)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ViewScore"
	global.ViewScore += (100 * global.ComboMult);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FDB2D12
	/// @DnDParent : 325F90E5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05F1D8E2
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 325F90E5
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6113A198
	/// @DnDParent : 325F90E5
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 016C02FB
/// @DnDArgument : "var" "global.ComboMult"
/// @DnDArgument : "value" "3"
if(global.ComboMult == 3){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7541AA39
	/// @DnDParent : 016C02FB
	/// @DnDArgument : "expr" "(100 * global.ComboMult)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ViewScore"
	global.ViewScore += (100 * global.ComboMult);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BB7307D
	/// @DnDParent : 016C02FB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B825DDD
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 016C02FB
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3840D70C
	/// @DnDParent : 016C02FB
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01C3329C
/// @DnDArgument : "var" "global.ComboMult"
/// @DnDArgument : "value" "4"
if(global.ComboMult == 4){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65D9E298
	/// @DnDParent : 01C3329C
	/// @DnDArgument : "expr" "(100 * global.ComboMult)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ViewScore"
	global.ViewScore += (100 * global.ComboMult);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0D82B07D
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 01C3329C
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 21310D2B
	/// @DnDParent : 01C3329C
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D47BE30
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "global.PassValue"
if(!(global.InputPassValue == global.PassValue)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7281D94C
	/// @DnDParent : 5D47BE30
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 257AF340
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 5D47BE30
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5CEC1DBF
	/// @DnDParent : 5D47BE30
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}