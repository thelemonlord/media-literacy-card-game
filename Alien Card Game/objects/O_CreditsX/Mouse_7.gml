/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5BE7BA08
/// @DnDArgument : "obj" "O_CreditsSplash"
/// @DnDSaveInfo : "obj" "O_CreditsSplash"
var l5BE7BA08_0 = false;l5BE7BA08_0 = instance_exists(O_CreditsSplash);if(l5BE7BA08_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0BE4F671
	/// @DnDParent : 5BE7BA08
	/// @DnDArgument : "soundid" "Collect_Point_01"
	/// @DnDArgument : "gain" "0.25"
	/// @DnDArgument : "pitch" "0.5"
	/// @DnDSaveInfo : "soundid" "Collect_Point_01"
	audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 0.5);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6102BD79
	/// @DnDParent : 5BE7BA08
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25A4E423
	/// @DnDApplyTo : {O_CreditsSplash}
	/// @DnDParent : 5BE7BA08
	with(O_CreditsSplash) instance_destroy();}