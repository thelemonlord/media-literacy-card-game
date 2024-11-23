/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 261878C3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.SourceDisplayValue"
global.SourceDisplayValue = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1B42D0FB
/// @DnDArgument : "soundid" "snd_sourcedisplay"
/// @DnDSaveInfo : "soundid" "snd_sourcedisplay"
audio_play_sound(snd_sourcedisplay, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 49B66936
/// @DnDArgument : "objectid" "O_WebsiteName"
/// @DnDArgument : "layer" ""Instances_1""
/// @DnDSaveInfo : "objectid" "O_WebsiteName"
instance_create_layer(0, 0, "Instances_1", O_WebsiteName);