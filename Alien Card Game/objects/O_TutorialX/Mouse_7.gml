/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5BE7BA08
/// @DnDArgument : "obj" "O_TutorialSplash"
/// @DnDSaveInfo : "obj" "O_TutorialSplash"
var l5BE7BA08_0 = false;l5BE7BA08_0 = instance_exists(O_TutorialSplash);if(l5BE7BA08_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
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
	/// @DnDHash : 6FAB59A3
	/// @DnDApplyTo : {O_NextTutorialArrow}
	/// @DnDParent : 5BE7BA08
	with(O_NextTutorialArrow) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7868A2E3
	/// @DnDApplyTo : {O_PrevTutorialArrow}
	/// @DnDParent : 5BE7BA08
	with(O_PrevTutorialArrow) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25A4E423
	/// @DnDApplyTo : {O_TutorialSplash}
	/// @DnDParent : 5BE7BA08
	with(O_TutorialSplash) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5C7232C5
	/// @DnDParent : 5BE7BA08
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.TutPage"
	global.TutPage = 1;}