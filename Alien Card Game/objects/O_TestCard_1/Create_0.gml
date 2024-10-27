/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 30BBA192
/// @DnDArgument : "var" "PassValue"
global.PassValue = 0;

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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 441C3B36
/// @DnDArgument : "var" "InputPassValue"
global.InputPassValue = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0777D6D9
/// @DnDArgument : "var" "SourceDisplayValue"
global.SourceDisplayValue = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2202AB89
/// @DnDArgument : "var" "SourceString"
global.SourceString = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0B8A6F96
/// @DnDArgument : "var" "WebsiteDisplayValue"
global.WebsiteDisplayValue = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2283AA8D
/// @DnDArgument : "var" "global.PromptRetrieveNumber"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "24"
global.PromptRetrieveNumber = floor(random_range(1, 24 + 1));