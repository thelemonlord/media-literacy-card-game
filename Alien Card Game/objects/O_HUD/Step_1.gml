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
	if(global.ComboMult < 4){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43DA2448
		/// @DnDParent : 022B28E9
		/// @DnDArgument : "expr" "(100 * global.ComboMult)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ViewScore"
		global.ViewScore += (100 * global.ComboMult);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C628860
		/// @DnDParent : 022B28E9
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.ComboMult"
		global.ComboMult += 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3CBAA77D
		/// @DnDApplyTo : {O_TestCard_1}
		/// @DnDParent : 022B28E9
		with(O_TestCard_1) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 41648B1C
		/// @DnDParent : 022B28E9
		/// @DnDArgument : "ypos" "32"
		/// @DnDArgument : "objectid" "O_TestCard_1"
		/// @DnDSaveInfo : "objectid" "O_TestCard_1"
		instance_create_layer(0, 32, "Instances", O_TestCard_1);}}