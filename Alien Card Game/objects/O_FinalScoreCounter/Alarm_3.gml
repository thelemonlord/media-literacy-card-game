/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3D1BE50E
/// @DnDArgument : "soundid" "Jingle_Achievement_01"
/// @DnDArgument : "gain" "0.5"
/// @DnDSaveInfo : "soundid" "Jingle_Achievement_01"
audio_play_sound(Jingle_Achievement_01, 0, 0, 0.5, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 14D4A53A
/// @DnDArgument : "xpos" "340"
/// @DnDArgument : "ypos" "544"
/// @DnDArgument : "objectid" "O_FinalScoreClickToContinue"
/// @DnDSaveInfo : "objectid" "O_FinalScoreClickToContinue"
instance_create_layer(340, 544, "Instances", O_FinalScoreClickToContinue);