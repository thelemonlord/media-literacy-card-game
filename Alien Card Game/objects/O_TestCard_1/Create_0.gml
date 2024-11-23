/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 30BBA192
/// @DnDArgument : "var" "PassValue"
global.PassValue = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 07689113
/// @DnDArgument : "value" "get_number()"
/// @DnDArgument : "var" "PromptRetrieveNumber"
global.PromptRetrieveNumber = get_number();

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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6F8CDD7E
/// @DnDArgument : "var" "RetrieveWebsiteName"
global.RetrieveWebsiteName = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 280978B8
/// @DnDArgument : "var" "WebsiteName"
global.WebsiteName = 0;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4B9B78AC
/// @DnDApplyTo : {O_WebsiteName}
with(O_WebsiteName) instance_destroy();