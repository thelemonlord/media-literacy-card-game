/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 2DE9D1AF
/// @DnDArgument : "soundid" "snd_EmpySpace"
/// @DnDSaveInfo : "soundid" "snd_EmpySpace"
audio_stop_sound(snd_EmpySpace);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 21014DBA
/// @DnDArgument : "soundid" "snd_continue"
/// @DnDArgument : "pitch" "0.8"
/// @DnDSaveInfo : "soundid" "snd_continue"
audio_play_sound(snd_continue, 0, 0, 1.0, undefined, 0.8);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 1BA0DF91
/// @DnDArgument : "room" "ACG_FinalScore"
/// @DnDSaveInfo : "room" "ACG_FinalScore"
room_goto(ACG_FinalScore);