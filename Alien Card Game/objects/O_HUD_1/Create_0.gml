/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 41F8DEDE
/// @DnDArgument : "steps" "18000"
alarm_set(0, 18000);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 652A0D3F
/// @DnDArgument : "var" "ViewScore"
global.ViewScore = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 655D9837
/// @DnDArgument : "var" "AlarmCounter"
global.AlarmCounter = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 11E414EE
/// @DnDDisabled : 1
/// @DnDArgument : "code" "global.number_list = ds_list_create()$(13_10)var i = 0;$(13_10)repeat(10) { // the random number you will get will be from 0 to 10$(13_10)    ds_list_add(global.number_list, i)$(13_10)    i++;$(13_10)}$(13_10)ds_list_shuffle(global.number_list);"