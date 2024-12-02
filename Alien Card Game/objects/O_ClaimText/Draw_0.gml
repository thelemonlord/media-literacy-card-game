/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E620687
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_scrolling(30, 80, global.PromptString, 0.75, 30, snd_drawtextsound);$(13_10)if(!(global.InputPassValue == 0))$(13_10){$(13_10)	draw_text_reset();$(13_10)}"
/// @description Execute Code
draw_text_scrolling(30, 80, global.PromptString, 0.75, 30, snd_drawtextsound);
if(!(global.InputPassValue == 0))
{
	draw_text_reset();
}