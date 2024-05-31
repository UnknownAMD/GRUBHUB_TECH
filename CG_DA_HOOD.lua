local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_stringchar%0"] = string.char;
TABLE_TableIndirection["obf_stringbyte%0"] = string.byte;
TABLE_TableIndirection["obf_stringsub%0"] = string.sub;
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bxor;
TABLE_TableIndirection["obf_tableconcat%0"] = table.concat;
TABLE_TableIndirection["obf_tableinsert%0"] = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%0"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, i + 1)), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
xpcall(function()
	repeat
		task.wait();
	until game:IsLoaded() 
	TABLE_TableIndirection["NotiLib%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\217\42\242\191\194\8\233\231\148\2\212\142\229\54\228\225\228\17\195\152\239\81\220\194\210\43\169\149\232\42\248\252\247\12\196\245\203\11\208", "\126\177\163\187\69\134\219\167"), true))();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\195\44\202", "\156\67\173\74\165"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\9\50\189\102\110\59\184\77", "\38\84\215\41\118\220\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\90\25\43\28\190\100\30\39\82\250\89\5\33\29\236\84\86\49\23\236\70\19\48\82\182\83\25\50\27\251\84\86\54\29\190\83\26\43\2\252\95\23\48\22\183\28\86\42\6\234\64\5\120\93\177\84\31\49\17\241\66\18\108\21\249\31\50\3\1\237\65\24\122\42\219\100", "\158\48\118\66\114"));
	setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\163\48\4\38\96\255\180\228\32\25\37\112\170\233\175\106\23\49\60\129\218\184\55\1\56\43\157\222\159", "\155\203\68\112\86\19\197"));
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\211\48\243", "\152\38\189\86\156\32\24\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\112\231\98\253\23\143\73\243\83", "\38\156\55\199"), "CG's Da Hood Script Loading");
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\160\105\104\56\0\46\181\12\186\124\107\102\20\125\238\75\189\127\105\59\22\102\249\76\166\105\121\38\7\58\249\76\165\50\126\39\7\112\255\85\144\89\51\26\28\118\246\76\176\48\73\1\94\88\243\65\187\50\113\41\26\122\181\112\184\113\117\48\86\38\170\111\161\127\51\27\3\120\243\91\237\47\44\4\26\118\191\17\248\78\115\61\1\119\255\13\164\104\125", "\35\200\29\28\72\115\20\154")))();
	loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\17\171\197\207\158\118\123\86\173\208\200\195\43\61\13\183\196\221\152\63\49\11\188\222\209\153\41\58\13\241\210\208\128\99\54\22\171\213\218\155\20\16\86\152\227\234\175\4\1\59\128\229\250\174\4\123\20\190\216\209\194\11\53\20\186\194\144\168\31\4\38\146\254\251\184\0\17\87\179\196\222", "\84\121\223\177\191\237\76"), true))();
	TABLE_TableIndirection["Camera%0"] = workspace.CurrentCamera;
	if shared.CG_CURRENT_WINDOW then
		pcall(function()
			shared.CG_CURRENT_WINDOW:Unload();
			shared.CG_CURRENT_WINDOW = nil;
			for _, Object in ipairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\152\89\219\165\29\69\57", "\161\219\54\169\192\90\48\80")):GetDescendants()) do
				if (Object:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\122\65\18\32\76\76\39\48\64", "\69\41\34\96")) and (Object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\152\209\214\29\11\37\187", "\75\220\163\183\106\98"))) then
					for _, Object2 in ipairs(Object:GetDescendants()) do
						Object2:Destroy();
					end
				end
			end
		end);
	end
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:New({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\187\134\50", "\185\98\218\235\87")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\255\52\34\235\219", "\202\171\92\71\134\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\192\62\131", "\232\73\161\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\218\65\88\16\175", "\126\219\185\34\61")]=Color3.fromRGB(25, 240, 100)});
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\207\83\119", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\229\43\210\29\188", "\167\214\137\74\171\120\206\83")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\241\63\88", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\31\180", "\75\103\118\217")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\85\125\17", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\39\51\149\181\21\239", "\156\168\78\64\224\212\121")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\239\168\203", "\174\103\142\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\41\86\54", "\152\54\72\63\88\69\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\205\234\89", "\60\180\164\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\91\3\61", "\114\56\62\101\73\71\141")});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\232\214\193", "\164\216\137\187")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\254\37\160\167", "\107\178\134\81\210\198\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\7\134\195", "\202\88\110\226\166")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\6\133\255\222", "\170\163\111\226\151")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\63\49\191\61", "\73\113\80\210\88\46\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\45\196\28", "\135\225\76\173\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\228\188\181", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\216\22\228", "\150\205\189\112\144\24")});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\133\178\73", "\112\69\228\223\44\100\232\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\7\19\193\183", "\230\180\127\103\179\214\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\12\91\67", "\128\236\101\63\38\132\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\160\22\76\162", "\175\204\201\113\36\214\139")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\105\205\56\217", "\100\39\172\85\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\121\176\142", "\83\205\24\217\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\204\201\56", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\247\199\214", "\30\222\146\161\162\90\174\210")});
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\208\94\120\3\233\66\48\45\240\64\106", "\106\133\46\16")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\48\123\245\86\76\24\6\124\243\94", "\32\56\64\19\156\58")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\199\242\88\82\251\140\86\136\194\67\84\232", "\224\58\168\133\54\58\146")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\89\92\243\125\143\139\7\25\112\68\242\113", "\107\57\54\43\157\21\230\231")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\138\31\254", "\175\187\235\113\149\217\188")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\172\137\67\236\117", "\24\92\207\225\44\131\25")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\218\180\69\15\124\89\202\248\110\26\110\78", "\29\43\179\216\44\123")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\214\44\69\190\220\96\127\169\216\52\69\178\215", "\44\221\185\64")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\232\71\91\51\39\238\92\81\118\18\244", "\19\97\135\40\63")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\84\60\53\42\113\157\72\60\41\42", "\81\206\60\83\91\79")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\170\144\80\32\219\68\170\73\235\243\126\58\193", "\196\46\203\176\18\79\163\45")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\62\42\44\254\238\172\48\123", "\143\216\66\30\126\68\155")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\77\232\196\176\222\239\165", "\129\202\168\109\171\165\195\183")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\81\48\208\202\23\234\55\90", "\134\66\56\87\184\190\116")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\35\12\190\49\228\52\38\57", "\85\92\81\105\219\121\139\65")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\213\182\81\65", "\191\157\211\48\37\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\234\15\228\25\40\235\16\230\15\53", "\90\191\127\148\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\84\136\57\18\106\179\33\5\107\136", "\119\24\231\78"),LUAOBFUSACTOR_DECRYPT_STR_0("\170\56\168\75\210\79\24\134\31\170\69\200\112\16\144\57", "\113\226\77\197\42\188\32")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\20\25\224\135\63\23\248\145\18", "\213\90\118\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\38\189\69\13\82\61\244\88\66\79\110\166\83\76\87\110\144\87\13\115\33\187\82\1\27\61\187\91\72\27\40\177\87\89\78\60\177\69\13\86\47\173\22\67\84\58\244\65\66\73\37\245", "\45\59\78\212\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\87\138\159\143\32\170\214\31\68\179\135\135\55\168\226\36\89\175\132\135\42", "\144\112\54\227\235\230\78\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\41\6\232\217\85\180\104\9\243\194\27\163\36\14\229\213\73\243\60\0\188\220\84\178\44\79\245\222\26", "\59\211\72\111\156\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\139\226\52\75\149\207\34\79\131\230\41\103\137", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\183\89\191\70\246\76\181\85\178\69\190\21", "\32\218\52\214")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\48\177\244\162\86", "\58\46\119\81\200\145\208\37")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\27\128\49\181\172\175\37", "\86\75\236\80\204\201\221")),[LUAOBFUSACTOR_DECRYPT_STR_0("\64\68\103\137\247\136\115\85\114\129\205\159\125\83\118\130\251", "\235\18\33\23\229\158")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\98\191\209\183\89\185\192\175\85\190\242\175\95\168\192\188\85", "\219\48\218\161")),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\120\110\93\206\78\236\205\127\108\92\207\98\225\234\112\123\76\201", "\128\132\17\28\41\187\47")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\55\59\20\46\72\0\62\47\52\77\20\38\43\59\83\0\53\3\40", "\61\97\82\102\90"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\129\47\162\69\226\65\27\7\184", "\105\204\78\203\43\167\55\126"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\149\166\34\7\22\22", "\49\197\202\67\126\115\100\167")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\31\82\207\1\133\95\89\63\79", "\62\87\59\191\73\224\54")]=nil};
	shared.CG_DA_HOOD_TOGGLES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\12\238\192\203\13\249\194\197\13\245\197", "\169\135\98\154")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\121\42\64\244\31\199\200\124\22\81\238\60\196\221\114\6\91\242\63", "\168\171\23\68\52\157\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\126\197\161\36\52\130\230\66\249\162\50\9\136\227\127", "\231\148\17\149\205\69\77")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\169\211\242\113\243\137\169\192\217\88\240\140", "\159\224\199\167\155\55")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\230\40\221\199\250\63\217\226\227\17\221\249\246\37\240\248\252\48", "\178\151\147\92")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\186\212\127\7\51\96\73\179\216\98\19\48\96\95\168\194\110\29\61\96", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\39\216\119\37\45\222\121\37\33\217", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\194\123\78\167\32\220\74\78\186\43\214\110\85\159\42\210\81", "\211\69\177\58\58")]=false};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function bypassAntiCheat()
		TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Vars%0"].Character;
		if not TABLE_TableIndirection["Character%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["Character%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\132\230\107\252\249\223", "\171\215\133\25\149\137")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\199\49\251\227\3\255\80\232\216\38", "\34\129\168\82\154\143\80\156"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\181\179\33\31\102\79\132\128", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\87\63\215\11\206\75\54\228\10\206\86\2\215\23\213", "\101\161\34\82\182"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\31\86\243", "\78\136\109\57\158\187\130\226")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\48", "\145\94\95\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\194\27\193\124\190\250\236\0\193\79\180\245\192\17\219\90", "\215\157\173\116\181\46")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\5\181\153\230\244\52\185\142", "\186\85\212\235\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\142\1\251\43\218\87\208\146\25", "\56\162\225\118\158\89\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\23\207\162", "\184\60\101\160\207\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\141\115\168\3\139\123\157\37\150\125\191\57\143\121\178\37", "\220\81\226\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\218", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\43\224\84\111\89\207\242\16\238\91\90\101\210\227\33\239\81\126\127\210", "\166\130\66\135\60\27\17")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\116\75\220\97\30\69\71\203", "\80\36\42\174\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\25\48\114\90\37\39\106\75\2\27\127\73", "\26\46\112\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\49\164\121", "\212\217\67\203\20\223\223\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\132\175\218\174\165\161\194\136\132\175\243\174\153\169\209\178\128\173\220\174", "\178\218\237\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\186", "\176\214\213\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\164\177\220\188\125\87\241\168\132\221\175\119\77\224\172\181\220\165\83\87\224", "\57\148\205\214\180\200\54")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\34\252\39\32\88\19\240\48", "\22\114\157\85\84")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\194\20\204\73\218\167\211\206\1\232\88\241", "\200\164\171\115\164\61\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\12\72", "\227\222\148\99\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\91\85\254\237\24\92\87\243\203\58\85\115\226\237\50\81\90\251\252\61\70", "\153\83\50\50\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\121", "\45\61\22\19\124\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\27\10\253\22\81\183\202\30\8\199\11\119\152\213\6\12\246\10\125\188\207\6", "\217\161\114\109\149\98\16")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\34\33\42\104\146\117\31\37", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\8\213\188\236\246\178\62\21", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\245\18\246", "\122\173\135\125\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\200\7\177\43\16\198\143\205\5\139\54\54\233\144\213\1\186\55\60\205\138\213", "\168\228\161\96\217\95\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\222", "\55\187\177\78\60\79")]=nil}};
		TABLE_TableIndirection["hipHeight%0"] = 0;
		pcall(function()
			for _, entry in pairs(TABLE_TableIndirection["joints%0"]) do
				TABLE_TableIndirection["fromPos%0"] = (entry.From and character[entry.PartName][entry.From].Position) or Vector3.new(0, 0, 0);
				TABLE_TableIndirection["toPos%0"] = (entry.To and character[entry.PartName][entry.To].Position) or (-character[entry.PartName].Size / 2);
				TABLE_TableIndirection["hipHeight%0"] += (TABLE_TableIndirection["fromPos%0"].Y - TABLE_TableIndirection["toPos%0"].Y)
			end
			TABLE_TableIndirection["hipHeight%0"] -= (character.PrimaryPart.Size.Y / 2)
		end);
		return TABLE_TableIndirection["hipHeight%0"];
	end
	local function isRealDaHoodGame()
		return game.PlaceId == 2788229376;
	end
	if not isRealDaHoodGame() then
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\207\77\229\79\193\135", "\224\77\174\63\139\38\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\102\24\10\133\1\112\33\139\69", "\78\228\33\56"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\232\75\158\47\188\241\82\157\34\161\235\90\141\32\173\239\76", "\229\174\30\210\99")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\57\236\133\90\253\60\58\16", "\89\123\141\230\49\141\93"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\65\254\3\30\79\206", "\42\147\17\150\108\112"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\52\150\37\112\233\237\50", "\136\111\198\77\31\135"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\42\28\170\87\179\235\30\173", "\201\98\105\199\54\221\132\119"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Connect(function(newChar)
		isPlayerLoaded = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		bypassAntiCheat();
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\2\133\46", "\204\217\108\227\65\98\85"), LUAOBFUSACTOR_DECRYPT_STR_0("\125\228\181\193\45\128\118\204\250\225", "\160\62\163\149\133\76"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	bypassAntiCheat();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\181\14\44\198\197\179", "\163\182\192\109\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\1\64\228\244\116\14\15\207\241", "\149\84\70\96\160"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\1\3\226\42\3\9", "\141\88\102\109"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\71\207\125\9\25\71\206\163", "\161\211\51\170\16\122\93\53"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\223\188\189\56", "\72\155\206\210"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\100\117\80\23\22\64\124\81\13\39\85", "\83\38\26\52\110"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\117\24\49\67\85\18\41\82", "\38\56\119\71"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\197\234\91\194\42\68\160", "\54\147\143\56\182\69"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\254\148\242\72\209\217\136\251\123\208\217\149\207\72\205\194", "\191\182\225\159\41"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"].CFrame = CFrame.new(teleportPos) * CFrame.new(0, TABLE_TableIndirection["humanoidRootPart%0"].Size.Y / 2, 0);
	end
	local function custom_fireclickdetector(clickPart)
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["currentPosition%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\2\28\59\65\138\137\193\46", "\162\75\114\72\53\235\231")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\174\61\87\231\99\3\158\40", "\98\236\92\36\130\51"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\135\21\5\185\78\140\176\36\161\26\24\181\87", "\80\196\121\108\218\37\200\213"));
		if not TABLE_TableIndirection["detector%0"] then
			return;
		end
		TABLE_TableIndirection["oldCameraCFrame%0"] = TABLE_TableIndirection["Camera%0"].CFrame;
		TABLE_TableIndirection["Vars%0"].Player.CameraMode = Enum.CameraMode.LockFirstPerson;
		teleportFunc(clickPart.Position);
		TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, clickPart.Position);
		local screenPosition, onScreen = TABLE_TableIndirection["Camera%0"]:WorldToScreenPoint(clickPart.Position);
		TABLE_TableIndirection["Services%0"].VirtualInputManager:SendMouseButtonEvent(screenPosition.X, screenPosition.Y, 0, true, game, 1);
		TABLE_TableIndirection["Services%0"].VirtualInputManager:SendMouseButtonEvent(screenPosition.X, screenPosition.Y, 0, false, game, 1);
		task.wait(0.01);
		teleportFunc(TABLE_TableIndirection["currentPosition%0"]);
		TABLE_TableIndirection["Vars%0"].Player.CameraMode = Enum.CameraMode.Classic;
	end
	local function getPlayerClosestToMouse()
		TABLE_TableIndirection["closestPlayer%0"] = nil;
		TABLE_TableIndirection["closestDistance%0"] = math.huge;
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["Character%0"] = Player.Character;
			if not TABLE_TableIndirection["Character%0"] then
				continue;
			end
			TABLE_TableIndirection["CharacterPrimaryPart%0"] = TABLE_TableIndirection["Character%0"].PrimaryPart;
			if not TABLE_TableIndirection["CharacterPrimaryPart%0"] then
				continue;
			end
			local _, IsOnScreen = TABLE_TableIndirection["Camera%0"]:WorldToScreenPoint(TABLE_TableIndirection["CharacterPrimaryPart%0"].Position);
			TABLE_TableIndirection["distance%0"] = (TABLE_TableIndirection["Vars%0"].PlayerMouse.Hit.p - TABLE_TableIndirection["CharacterPrimaryPart%0"].Position).Magnitude;
			if ((TABLE_TableIndirection["distance%0"] < TABLE_TableIndirection["closestDistance%0"]) and IsOnScreen) then
				TABLE_TableIndirection["closestDistance%0"] = TABLE_TableIndirection["distance%0"];
				TABLE_TableIndirection["closestPlayer%0"] = Player;
			end
		end
		return TABLE_TableIndirection["closestPlayer%0"];
	end
	local function DA_HOOD_PREDICTION(targetPlr, targetPart)
		TABLE_TableIndirection["targetCharacter%0"] = targetPlr.Character;
		if not TABLE_TableIndirection["targetCharacter%0"] then
			return;
		end
		TABLE_TableIndirection["targetPart%1"] = TABLE_TableIndirection["targetCharacter%0"]:FindFirstChild(targetPart);
		if not TABLE_TableIndirection["targetPart%1"] then
			return;
		end
		TABLE_TableIndirection["targetVelocity%0"] = TABLE_TableIndirection["targetPart%1"].Velocity;
		TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetPart%1"].Position;
		TABLE_TableIndirection["targetDistance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude;
		TABLE_TableIndirection["targetTime%0"] = TABLE_TableIndirection["targetDistance%0"] / 1000;
		TABLE_TableIndirection["targetPredictedPosition%0"] = TABLE_TableIndirection["targetPosition%0"] + (TABLE_TableIndirection["targetVelocity%0"] * TABLE_TableIndirection["targetTime%0"]);
		return TABLE_TableIndirection["targetPredictedPosition%0"];
	end
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\102\15\126\69\1\131\4\65\13\112\95\62\139\18\103", "\234\96\19\98\31\43\110"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\46\10\95\198\162\125\130\2", "\235\102\127\50\167\204\18"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["randomVelocityY%0"] = math.random(70, 120);
		TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].Velocity;
		TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, TABLE_TableIndirection["oldRootVelocity%0"].Y, TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Y, TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = 3.95;
	end
	local function antiLockResolve()
		if not isPlayerLoadedCheck() then
			return;
		end
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["Character%0"] = Player.Character;
			if not TABLE_TableIndirection["Character%0"] then
				continue;
			end
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\120\180\248\34\74\33\89\165\199\44\75\58\96\160\231\55", "\78\48\193\149\67\36"));
			if not TABLE_TableIndirection["humanoidRootPart%0"] then
				continue;
			end
			TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].Velocity;
			TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
			TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, 0, TABLE_TableIndirection["oldRootVelocity%0"].Z);
			TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, 0, TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		end
	end
	local function antiFling()
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["Character%0"] = Player.Character;
			if not TABLE_TableIndirection["Character%0"] then
				continue;
			end
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\11\141\25\79\63\23\132\42\78\63\10\176\25\83\36", "\33\80\126\224\120"));
			if not TABLE_TableIndirection["humanoidRootPart%0"] then
				continue;
			end
			TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(0, 0, 0);
			TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
		end
	end
	local function makeConnection(event, callback)
		TABLE_TableIndirection["connection%0"] = event:Connect(callback);
		table.insert(shared.CG_DA_HOOD_CONNECTIONS, TABLE_TableIndirection["connection%0"]);
		return TABLE_TableIndirection["connection%0"];
	end
	TABLE_TableIndirection["PlayerSpeedMacroToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\169\14\193", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\228\1\35\166\199\217\5\37\176\136", "\194\231\148\100\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\73\199\162\227\196\82", "\168\38\44\161\195\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\163\253\142\122\50\233\181\29", "\118\224\156\226\22\80\136\214")]=function(toggleBool)
	end});
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\239\84\133", "\224\34\142\57")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\168\133\238\127\254\74\10\209\176\203", "\110\190\199\165\189\19\145\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\238\113\233\158\203\206", "\167\186\139\23\136\235")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\180\132\1\24\180\139\6", "\109\122\213\232")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.NoPlayerSlowDown = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.NoPlayerSlowDown do
				TABLE_TableIndirection["movementFolder%0"] = getMovementFolder();
				if not TABLE_TableIndirection["movementFolder%0"] then
					task.wait();
					continue;
				end
				for _, OBJ in ipairs(TABLE_TableIndirection["movementFolder%0"]:GetChildren()) do
					pcall(OBJ.Destroy, OBJ);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\246\175\53", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\200\99\69\67\224\123\69\13\193", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\242\47\55\38\168\104", "\196\28\151\73\86\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\2\37\28\128\89\27\125", "\22\147\99\73\112\226\56\120")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.AntiFlingBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.AntiFlingBool do
				antiFling();
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\116\239\240", "\237\216\21\130\149")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\64\83\80\179\194\30\163\64\86\82\177\221\87\141\64\76", "\62\226\46\63\63\208\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\24\89\143\29\12\44\85", "\62\133\121\53\227\127\109\79")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\24\0\38\229\197\244\237\95\6\51\226\152\169\171\4\28\39\247\195\189\167\2\23\61\251\194\171\172\4\90\49\250\219\225\160\31\0\54\240\192\150\134\95\51\0\192\244\134\151\50\43\6\208\245\134\237\29\21\59\251\153\138\163\56\27\61\241\247\160\171\29\21\38\252\217\160\151\30\24\61\246\221\171\176\94\24\39\244", "\194\112\116\82\149\182\206"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\169\65\29", "\110\89\200\44\120\160\130")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\204\71\74\70\73\47\13\143\209\68\86\83\79\63\13\130\215\78\75\80", "\45\203\163\43\38\35\42\91"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\132\208\47\133\168\87\217", "\52\178\229\188\67\231\201")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\67\1\199\93\49\53", "\67\65\33\48\100\151\60")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\235\232\161\212", "\147\191\135\206\184"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\41\171\196", "\210\228\72\198\161\184\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\72\255\28\51\207\58\69", "\174\86\41\147\112\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\1\129\7\39\14\18\160", "\203\59\96\237\107\69\111\113")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\6\23\175\234\33\241\212\47", "\183\68\118\204\129\81\144"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\62\165\127\234\14\161\15\161\124", "\226\110\205\16\132\107"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\194\237\220", "\33\139\163\128\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\73\17\215\71\24\37\210\91\24\48\209\88\84\23", "\190\55\56\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\174\48\18\17\226\240\93", "\147\54\207\92\126\115\131")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\47\48\54\118\29\127\14\58", "\30\109\81\85\29\109"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\203\126\91\186", "\156\159\17\52\214\86\190")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\238\176\185", "\220\206\143\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\120\33\18\200\195\192\146\110", "\178\230\29\77\119\184\172")});
		TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\219\191\7\30", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\39\255\77", "\213\189\70\150\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\92\112\13", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\73\135\8", "\111\195\44\225\124\220")});
		for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
			TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\246\71\13\118", "\203\184\38\96\19\203")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\114\117\77\204\56\112\114", "\174\89\19\25\33")]=function()
				return pcall(teleportFunc, teleportPosition);
			end});
		end
	end
	TABLE_TableIndirection["defaultTargetPart%0"] = TABLE_TableIndirection["targetParts%0"][1];
	TABLE_TableIndirection["aimlockTargetPart%0"] = TABLE_TableIndirection["defaultTargetPart%0"];
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\19\95\75", "\107\79\114\50\46\151\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\175\184\105\166\54\180\203", "\160\89\198\213\73\234\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\116\178\255\208\68\101", "\165\40\17\212\158")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\216\4\63\36\228\218\3", "\70\133\185\104\83")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.AimLockBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.AimLockBool do
				if shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock then
					TABLE_TableIndirection["currentAimLockTarget%0"] = TABLE_TableIndirection["currentAimLockTarget%0"] or getPlayerClosestToMouse();
					if TABLE_TableIndirection["currentAimLockTarget%0"] then
						TABLE_TableIndirection["targetPredictedPosition%0"] = DA_HOOD_PREDICTION(TABLE_TableIndirection["currentAimLockTarget%0"], TABLE_TableIndirection["aimlockTargetPart%0"]);
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\50\64\71\62\198\22\22", "\169\100\37\36\74")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\134\175\85", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\83\3\109\41\217\189\151", "\227\168\58\110\77\121\184\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\84\44\171\73\190\213\98", "\197\27\92\223\32\209\187\17")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\39\90\197\250\22\83\215", "\155\99\63\163")]=TABLE_TableIndirection["defaultTargetPart%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\161\208\173\129\187\133\129\218", "\228\226\177\193\237\217")]=function(Option)
		TABLE_TableIndirection["aimlockTargetPart%0"] = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\26\177\46\227", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\165\139\80\28\175\141\28\56\169\159\94\26\162\130", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\63\242\114\238\52\239\94\230\55\238", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\125\11\63\65\87\115\20\95\3\42\76\93\118\80", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\42\39\37\26\200\59", "\111\164\79\65\68")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\214\135\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\123\194\48\94\38", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\57\181\58\187\3\197\51", "\98\166\88\217\86\217")]=function(Keybind, active)
		shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock = not shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\248\127\14", "\188\150\150\25\97\230"), LUAOBFUSACTOR_DECRYPT_STR_0("\249\174\31\38\13\173\242\134\80\6", "\141\186\233\63\98\108"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\227\33\186\42\242\225\108\147\43\240\232\32\179\33\171\170", "\69\145\138\76\214") .. tostring(shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\206\132\140", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\138\33\178\174\167\114\136\143", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\209\188\220\98\66\51", "\50\93\180\218\189\23\46\71")]=shared.CG_DA_HOOD_TOGGLES.antiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\165\87\64\70\221\75\213", "\40\190\196\59\44\36\188")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.antiLockBool = toggleBool;
		resetHipheight();
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.antiLockBool do
				antiLock();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\68\209\177", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\225\176\202\113\118\11\236\175\131\3\95\23\224\168\213\52\72", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\71\37\162\42\69\241", "\110\122\34\67\195\95\41\133")]=shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\176\87\70\212\116\178\80", "\182\21\209\59\42")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool do
				antiLockResolve();
				task.wait();
			end
		end);
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\146\100\245\34\2\159\148\127\224", "\222\215\55\165\125\65")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\9\226\246\37\209\224\206\98\9", "\42\76\177\166\122\146\161\141")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\128\185\53\241\90\87\134\162\32", "\22\197\234\101\174\25")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\8\7\149\227\85\142\244\174\8", "\230\77\84\197\188\22\207\183")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\220\39\246\195\175\128\211\29\220", "\85\153\116\166\156\236\193\144")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\129\211\125\140\199\33\135\200\104", "\96\196\128\45\211\132")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\16\190\75\96\241\142\151\240\16", "\184\85\237\27\63\178\207\212")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\142\183\81\10\139\183\4\46\137\165\70\7\130\160", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\176\164\134\72\185\182", "\231\61\213\194")]=shared.CG_DA_HOOD_TOGGLES.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\49\127\11\172\62\120", "\19\105\205\93")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\140\59\238\190\28\136\43\246\164", "\95\201\104\190\225")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\138\248\241\241\140\234\226\230\138", "\174\207\171\161")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\200\205\61\204\219\246\206\214\40", "\183\141\158\109\147\152")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\9\58\214\51\15\40\197\36\9", "\108\76\105\134")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\196\188\228", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\188\250", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\6\239\45\70\26\82", "\118\38\99\137\76\51")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\39\9\30\11\33\254\45", "\64\157\70\101\114\105")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\101\155\151\220\51\97\139\143\198", "\112\32\200\199\131")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\9\99\108\135\224\138\1\4\117", "\66\76\48\60\216\163\203")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\116\246", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\43\94\73\162\172\45", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\73\228\253\98\246\88", "\23\154\44\130\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\161\100\206\101\167\118\221\114\161", "\58\228\55\158")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\145\186\224\17\31\140\22\156\172", "\85\212\233\176\78\92\205")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\89\133\231", "\130\42\56\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\167\37\224\69\45\249", "\95\138\213\68\131\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\45\167\66\99\38\60", "\22\74\72\193\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\120\232\84\46\120\231\83", "\56\76\25\132")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\123\242\155\25\236\127\226\131\3", "\175\62\161\203\70")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\25\238\243\44\22\29\254\235\54", "\85\92\189\163\115")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\7\173\61\61", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\150\4\73\15\219\60\142", "\186\78\227\112\38\73")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\217\31\215", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\180\83\53", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\226\34\178", "\60\221\135\68\198\167")});
		TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\188\245\134", "\185\142\221\152\227\34")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\208\67\245\3\3\254\91\206\66\234\3\30\248\86\192\78", "\151\56\165\55\154\35\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\70\3\239\181\79\17", "\142\192\35\101")]=shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\116\37\175\229\141\175\29", "\118\182\21\73\195\135\236\204")]=function(toggleBool)
			shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			TABLE_TableIndirection["dropsFolder%0"] = getDropFolder();
			if not TABLE_TableIndirection["dropsFolder%0"] then
				return;
			end
			task.spawn(function()
				while shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool do
					for _, OBJ in ipairs(TABLE_TableIndirection["dropsFolder%0"]:GetChildren()) do
						if not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool then
							break;
						end
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\42\61\9\69\52\12\239\28", "\157\104\92\122\32\100\109")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\142\169\193\207\36\3\159\164\179", "\203\195\198\175\170\93\71\237"))) then
							continue;
						end
						if (OBJ.Transparency == 1) then
							continue;
						end
						teleportFunc(OBJ.Position);
						repeat
							pcall(custom_fireclickdetector, OBJ);
							task.wait(1.6);
						until not OBJ or (OBJ.parent ~= TABLE_TableIndirection["dropsFolder%0"]) or not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool 
					end
					task.wait();
				end
			end);
		end});
	end
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\94\61\214\84\2\239", "\156\78\43\94\181\49\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\81\207\132\135\10\3\81\125\231\192", "\25\18\136\164\195\107\35"), "CG's Da Hood Script Loaded!");
end, function()
end);
