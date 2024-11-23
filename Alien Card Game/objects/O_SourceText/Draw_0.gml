/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42EF0C3E
/// @DnDArgument : "var" "global.SourceDisplayValue"
/// @DnDArgument : "value" "1"
if(global.SourceDisplayValue == 1){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1A247BE2
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 175, global.SourceString, 250, 4000, 0.15, 0.15, 0)"
	/// @description Execute Code
	draw_text_ext_transformed(660, 175, global.SourceString, 250, 4000, 0.15, 0.15, 0)

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6E221128
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 70, global.WebsiteName, 250, 4000, 0.2, 0.2, 0)"
	/// @description Execute Code
	draw_text_ext_transformed(660, 70, global.WebsiteName, 250, 4000, 0.2, 0.2, 0)

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CE3A6E2
	/// @DnDDisabled : 1
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "1"
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04450C0A
	/// @DnDDisabled : 1
	/// @DnDParent : 2CE3A6E2
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "1"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 431FF15C
	/// @DnDDisabled : 1
	/// @DnDParent : 04450C0A
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "24"
	/// @DnDArgument : "max" "28"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 1FF848BE
	/// @DnDDisabled : 1
	/// @DnDParent : 04450C0A
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 0DAF7EFE
	/// @DnDDisabled : 1
	/// @DnDParent : 04450C0A
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EDD70E4
	/// @DnDDisabled : 1
	/// @DnDParent : 2CE3A6E2
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "2"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7DA6FB04
	/// @DnDDisabled : 1
	/// @DnDParent : 2EDD70E4
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "min" "29"
	/// @DnDArgument : "max" "31"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 49D9DBED
	/// @DnDDisabled : 1
	/// @DnDParent : 2EDD70E4
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 56709B7E
	/// @DnDDisabled : 1
	/// @DnDParent : 2EDD70E4
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 299A5A22
	/// @DnDDisabled : 1
	/// @DnDParent : 2EDD70E4
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CC61C97
	/// @DnDDisabled : 1
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "2"
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56512EE2
	/// @DnDDisabled : 1
	/// @DnDParent : 2CC61C97
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "1"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 4C8DE303
	/// @DnDDisabled : 1
	/// @DnDParent : 56512EE2
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "3"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 39600321
	/// @DnDDisabled : 1
	/// @DnDParent : 56512EE2
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 3CDA09AC
	/// @DnDDisabled : 1
	/// @DnDParent : 56512EE2
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 07CF6FEE
	/// @DnDDisabled : 1
	/// @DnDParent : 56512EE2
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E950E06
	/// @DnDDisabled : 1
	/// @DnDParent : 2CC61C97
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "2"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 42183AE5
	/// @DnDDisabled : 1
	/// @DnDParent : 4E950E06
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "4"
	/// @DnDArgument : "max" "6"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 6DFB439B
	/// @DnDDisabled : 1
	/// @DnDParent : 4E950E06
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 7E324080
	/// @DnDDisabled : 1
	/// @DnDParent : 4E950E06
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 142D3F6C
	/// @DnDDisabled : 1
	/// @DnDParent : 4E950E06
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09405AD5
	/// @DnDDisabled : 1
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "3"
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FFBD646
	/// @DnDDisabled : 1
	/// @DnDParent : 09405AD5
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "1"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7CEC6D20
	/// @DnDDisabled : 1
	/// @DnDParent : 4FFBD646
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "14"
	/// @DnDArgument : "max" "18"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 0FAB24E5
	/// @DnDDisabled : 1
	/// @DnDParent : 4FFBD646
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 1827B3FA
	/// @DnDDisabled : 1
	/// @DnDParent : 4FFBD646
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2750BC89
	/// @DnDDisabled : 1
	/// @DnDParent : 4FFBD646
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FED4342
	/// @DnDDisabled : 1
	/// @DnDParent : 09405AD5
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "2"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2E7EAE23
	/// @DnDDisabled : 1
	/// @DnDParent : 6FED4342
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "19"
	/// @DnDArgument : "max" "23"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 1CA16551
	/// @DnDDisabled : 1
	/// @DnDParent : 6FED4342
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 5B15B503
	/// @DnDDisabled : 1
	/// @DnDParent : 6FED4342
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 776906A3
	/// @DnDDisabled : 1
	/// @DnDParent : 6FED4342
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C47AC8E
	/// @DnDDisabled : 1
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "4"
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CC0C6A3
	/// @DnDDisabled : 1
	/// @DnDParent : 2C47AC8E
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "1"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 78E42DDA
	/// @DnDDisabled : 1
	/// @DnDParent : 1CC0C6A3
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "14"
	/// @DnDArgument : "max" "18"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 0F5E8B4B
	/// @DnDDisabled : 1
	/// @DnDParent : 1CC0C6A3
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 7FD8C2D1
	/// @DnDDisabled : 1
	/// @DnDParent : 1CC0C6A3
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3C5F48CD
	/// @DnDDisabled : 1
	/// @DnDParent : 1CC0C6A3
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1780DF02
	/// @DnDDisabled : 1
	/// @DnDParent : 2C47AC8E
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "2"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 36474873
	/// @DnDDisabled : 1
	/// @DnDParent : 1780DF02
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "19"
	/// @DnDArgument : "max" "23"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 2BBA1E7A
	/// @DnDDisabled : 1
	/// @DnDParent : 1780DF02
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 2630894B
	/// @DnDDisabled : 1
	/// @DnDParent : 1780DF02
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4106C9C1
	/// @DnDDisabled : 1
	/// @DnDParent : 1780DF02
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B23B10E
	/// @DnDDisabled : 1
	/// @DnDParent : 42EF0C3E
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "5"
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BD54507
	/// @DnDDisabled : 1
	/// @DnDParent : 1B23B10E
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "1"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6ED9D3B0
	/// @DnDDisabled : 1
	/// @DnDParent : 0BD54507
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "7"
	/// @DnDArgument : "max" "10"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 6196EA6F
	/// @DnDDisabled : 1
	/// @DnDParent : 0BD54507
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 13732518
	/// @DnDDisabled : 1
	/// @DnDParent : 0BD54507
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 692FAD42
	/// @DnDDisabled : 1
	/// @DnDParent : 0BD54507
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"
	
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 361283D5
	/// @DnDDisabled : 1
	/// @DnDParent : 1B23B10E
	/// @DnDArgument : "var" "global.PassValue"
	/// @DnDArgument : "value" "2"
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 08C81490
	/// @DnDDisabled : 1
	/// @DnDParent : 361283D5
	/// @DnDArgument : "var" "global.RetrieveWebsiteName"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "11"
	/// @DnDArgument : "max" "13"
	
	
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 3F168466
	/// @DnDDisabled : 1
	/// @DnDParent : 361283D5
	/// @DnDArgument : "filename" ""CardPrompts.ini""
	
	
	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 394C4153
	/// @DnDDisabled : 1
	/// @DnDParent : 361283D5
	/// @DnDArgument : "var" "global.WebsiteName"
	/// @DnDArgument : "section" ""WebsiteNames""
	/// @DnDArgument : "key" "global.RetrieveWebsiteName"
	
	
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 48EED978
	/// @DnDDisabled : 1
	/// @DnDParent : 361283D5
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext_transformed(660, 100, global.WebsiteName, 250, 4000, 0.15, 0.15, 0)"}