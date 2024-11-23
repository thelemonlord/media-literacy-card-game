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

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 28C6FC0F
/// @DnDArgument : "soundid" "snd_EmpySpace"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_EmpySpace"
audio_play_sound(snd_EmpySpace, 0, 1, 1.0, undefined, 1.0);