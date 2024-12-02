/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6AA2CAAB
/// @DnDArgument : "soundid" "Collect_Point_02"
/// @DnDArgument : "gain" "0.25"
/// @DnDSaveInfo : "soundid" "Collect_Point_02"
audio_play_sound(Collect_Point_02, 0, 0, 0.25, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 12EFCE09
/// @DnDArgument : "xpos" "30"
/// @DnDArgument : "ypos" "210"
/// @DnDArgument : "objectid" "O_TutorialSplash"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "O_TutorialSplash"
instance_create_layer(30, 210, "Instances_2", O_TutorialSplash);