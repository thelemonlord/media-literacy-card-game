/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 350A6D90
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "PassValue_True"
global.PassValue_True = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2FA0C27A
/// @DnDArgument : "value" "2"
/// @DnDArgument : "var" "PassValue_False"
global.PassValue_False = 2;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 30BBA192
/// @DnDArgument : "var" "PassValue"
global.PassValue = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 441C3B36
/// @DnDArgument : "var" "InputPassValue"
global.InputPassValue = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 07689113
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "PromptRetrieveNumber"
global.PromptRetrieveNumber = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 512B6D8A
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "PromptString"
global.PromptString = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 49CCD326
/// @DnDArgument : "var" "global.PromptRetrieveNumber"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "4"
global.PromptRetrieveNumber = floor(random_range(1, 4 + 1));