/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FA8E13C
/// @DnDArgument : "var" "global.SourceDisplayValue"
/// @DnDArgument : "value" "1"
if(global.SourceDisplayValue == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32622997
	/// @DnDParent : 4FA8E13C
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "1"
	if(global.WebsiteDisplayValue == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18C6F307
		/// @DnDParent : 32622997
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "1"
		if(global.PassValue == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3F738EA2
			/// @DnDParent : 18C6F307
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "24"
			/// @DnDArgument : "max" "28"
			global.RetrieveWebsiteName = floor(random_range(24, 28 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 6DAE1089
			/// @DnDParent : 18C6F307
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 79D21564
			/// @DnDParent : 18C6F307
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 635DAE0E
		/// @DnDParent : 32622997
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "2"
		if(global.PassValue == 2){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 58FB1371
			/// @DnDParent : 635DAE0E
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "29"
			/// @DnDArgument : "max" "31"
			global.RetrieveWebsiteName = floor(random_range(29, 31 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 2B5D4F57
			/// @DnDParent : 635DAE0E
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 7B107411
			/// @DnDParent : 635DAE0E
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B862089
	/// @DnDParent : 4FA8E13C
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "2"
	if(global.WebsiteDisplayValue == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77740BE3
		/// @DnDParent : 0B862089
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "1"
		if(global.PassValue == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 025520F9
			/// @DnDParent : 77740BE3
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "1"
			/// @DnDArgument : "max" "3"
			global.RetrieveWebsiteName = floor(random_range(1, 3 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 1B496941
			/// @DnDParent : 77740BE3
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 0BB26EA8
			/// @DnDParent : 77740BE3
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2455A3F5
		/// @DnDParent : 0B862089
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "2"
		if(global.PassValue == 2){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 203F058C
			/// @DnDParent : 2455A3F5
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "4"
			/// @DnDArgument : "max" "6"
			global.RetrieveWebsiteName = floor(random_range(4, 6 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 76092632
			/// @DnDParent : 2455A3F5
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 5DFE8D29
			/// @DnDParent : 2455A3F5
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75D0BA86
	/// @DnDParent : 4FA8E13C
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "3"
	if(global.WebsiteDisplayValue == 3){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 180FC582
		/// @DnDParent : 75D0BA86
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "1"
		if(global.PassValue == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3D6C35C9
			/// @DnDParent : 180FC582
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "14"
			/// @DnDArgument : "max" "18"
			global.RetrieveWebsiteName = floor(random_range(14, 18 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 068130A2
			/// @DnDParent : 180FC582
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 3E5B4493
			/// @DnDParent : 180FC582
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CB0AB9C
		/// @DnDParent : 75D0BA86
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "2"
		if(global.PassValue == 2){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 085F2051
			/// @DnDParent : 7CB0AB9C
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "19"
			/// @DnDArgument : "max" "23"
			global.RetrieveWebsiteName = floor(random_range(19, 23 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 78524C2D
			/// @DnDParent : 7CB0AB9C
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 358F079E
			/// @DnDParent : 7CB0AB9C
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71D5E522
	/// @DnDParent : 4FA8E13C
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "4"
	if(global.WebsiteDisplayValue == 4){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1227B193
		/// @DnDParent : 71D5E522
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "1"
		if(global.PassValue == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 54F28093
			/// @DnDParent : 1227B193
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "14"
			/// @DnDArgument : "max" "18"
			global.RetrieveWebsiteName = floor(random_range(14, 18 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 0F31EC14
			/// @DnDParent : 1227B193
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 1694CB2C
			/// @DnDParent : 1227B193
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D6FAA41
		/// @DnDParent : 71D5E522
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "2"
		if(global.PassValue == 2){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3F505AB1
			/// @DnDParent : 0D6FAA41
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "19"
			/// @DnDArgument : "max" "23"
			global.RetrieveWebsiteName = floor(random_range(19, 23 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 34CB1953
			/// @DnDParent : 0D6FAA41
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 2B69151F
			/// @DnDParent : 0D6FAA41
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49AD207C
	/// @DnDParent : 4FA8E13C
	/// @DnDArgument : "var" "global.WebsiteDisplayValue"
	/// @DnDArgument : "value" "5"
	if(global.WebsiteDisplayValue == 5){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F5EC996
		/// @DnDParent : 49AD207C
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "1"
		if(global.PassValue == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3175D503
			/// @DnDParent : 5F5EC996
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "7"
			/// @DnDArgument : "max" "10"
			global.RetrieveWebsiteName = floor(random_range(7, 10 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 4B6B9AC0
			/// @DnDParent : 5F5EC996
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 0D3663D9
			/// @DnDParent : 5F5EC996
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61BFF53E
		/// @DnDParent : 49AD207C
		/// @DnDArgument : "var" "global.PassValue"
		/// @DnDArgument : "value" "2"
		if(global.PassValue == 2){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4863DDD1
			/// @DnDParent : 61BFF53E
			/// @DnDArgument : "var" "global.RetrieveWebsiteName"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "11"
			/// @DnDArgument : "max" "13"
			global.RetrieveWebsiteName = floor(random_range(11, 13 + 1));
		
			/// @DnDAction : YoYo Games.Files.Open_Ini
			/// @DnDVersion : 1
			/// @DnDHash : 48792E59
			/// @DnDParent : 61BFF53E
			/// @DnDArgument : "filename" ""CardPrompts.ini""
			ini_open("CardPrompts.ini");
		
			/// @DnDAction : YoYo Games.Files.Ini_Read
			/// @DnDVersion : 1
			/// @DnDHash : 2A6B6182
			/// @DnDParent : 61BFF53E
			/// @DnDArgument : "var" "global.WebsiteName"
			/// @DnDArgument : "section" ""WebsiteNames""
			/// @DnDArgument : "key" "global.RetrieveWebsiteName"
			global.WebsiteName = ini_read_string("WebsiteNames", global.RetrieveWebsiteName, "default");}}}