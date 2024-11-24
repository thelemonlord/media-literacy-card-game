/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12591BFD
/// @DnDArgument : "var" "global.FinalScoreTick"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "global.ViewScore"
if(!(global.FinalScoreTick == global.ViewScore)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5E54F0A9
	/// @DnDParent : 12591BFD
	/// @DnDArgument : "soundid" "snd_correct"
	/// @DnDArgument : "gain" ".5"
	/// @DnDSaveInfo : "soundid" "snd_correct"
	audio_play_sound(snd_correct, 0, 0, .5, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2F935854
	/// @DnDParent : 12591BFD
	/// @DnDArgument : "value" "+100"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.FinalScoreTick"
	global.FinalScoreTick += +100;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 023F9980
	/// @DnDParent : 12591BFD
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 15);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47DCF8AB
/// @DnDArgument : "var" "global.FinalScoreTick"
/// @DnDArgument : "value" "global.ViewScore"
if(global.FinalScoreTick == global.ViewScore){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6AA53858
	/// @DnDParent : 47DCF8AB
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 30);}