/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5786A3C5
/// @DnDArgument : "value" "2"
/// @DnDArgument : "var" "global.InputPassValue"
global.InputPassValue = 2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6257D621
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "value" "global.PassValue"
if(global.InputPassValue == global.PassValue){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 664EE26A
	/// @DnDParent : 6257D621
	/// @DnDArgument : "var" "global.ComboMult"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "5"
	if(!(global.ComboMult == 5)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B028F2B
		/// @DnDParent : 664EE26A
		/// @DnDArgument : "expr" "100 * global.ComboMult"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ViewScore"
		global.ViewScore += 100 * global.ComboMult;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C57CE61
		/// @DnDParent : 664EE26A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ComboMult"
		global.ComboMult += 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 15934559
		/// @DnDApplyTo : {O_TestCard_1}
		/// @DnDParent : 664EE26A
		with(O_TestCard_1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7C91E856
		/// @DnDParent : 664EE26A
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "O_TestCard_1"
		/// @DnDSaveInfo : "objectid" "O_TestCard_1"
		instance_create_layer(0, 32, "Instances", O_TestCard_1);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 666B001C
	/// @DnDParent : 6257D621
	/// @DnDArgument : "var" "global.ComboMult"
	/// @DnDArgument : "value" "5"
	if(global.ComboMult == 5){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2531728D
		/// @DnDParent : 666B001C
		/// @DnDArgument : "expr" "100 * 4"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ViewScore"
		global.ViewScore += 100 * 4;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 36C1DA38
		/// @DnDApplyTo : {O_TestCard_1}
		/// @DnDParent : 666B001C
		with(O_TestCard_1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 41A1CAD6
		/// @DnDParent : 666B001C
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "O_TestCard_1"
		/// @DnDSaveInfo : "objectid" "O_TestCard_1"
		instance_create_layer(0, 32, "Instances", O_TestCard_1);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51DB4700
/// @DnDArgument : "var" "global.InputPassValue"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "global.PassValue"
if(!(global.InputPassValue == global.PassValue)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 537B2B9B
	/// @DnDParent : 51DB4700
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.ComboMult"
	global.ComboMult = 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61C3D97A
	/// @DnDApplyTo : {O_TestCard_1}
	/// @DnDParent : 51DB4700
	with(O_TestCard_1) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0EE6D660
	/// @DnDParent : 51DB4700
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "objectid" "O_TestCard_1"
	/// @DnDSaveInfo : "objectid" "O_TestCard_1"
	instance_create_layer(0, 32, "Instances", O_TestCard_1);}