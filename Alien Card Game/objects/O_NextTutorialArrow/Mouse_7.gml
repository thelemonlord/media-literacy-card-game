/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7E0361D2
/// @DnDArgument : "obj" "O_TutorialSplash"
/// @DnDSaveInfo : "obj" "O_TutorialSplash"
var l7E0361D2_0 = false;l7E0361D2_0 = instance_exists(O_TutorialSplash);if(l7E0361D2_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 428F672B
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "soundid" "Collect_Point_01"
	/// @DnDArgument : "gain" "0.25"
	/// @DnDSaveInfo : "soundid" "Collect_Point_01"
	audio_play_sound(Collect_Point_01, 0, 0, 0.25, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 123D4B4A
	/// @DnDApplyTo : {O_TutorialSplash}
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "spriteind" "S_TutorialPage2"
	/// @DnDSaveInfo : "spriteind" "S_TutorialPage2"
	with(O_TutorialSplash) {
	sprite_index = S_TutorialPage2;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 37F82ED0
	/// @DnDParent : 7E0361D2
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 333B242F
	/// @DnDParent : 7E0361D2
	/// @DnDArgument : "xpos" "325"
	/// @DnDArgument : "ypos" "635"
	/// @DnDArgument : "objectid" "O_PrevTutorialArrow"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "O_PrevTutorialArrow"
	instance_create_layer(325, 635, "Instances_1", O_PrevTutorialArrow);}