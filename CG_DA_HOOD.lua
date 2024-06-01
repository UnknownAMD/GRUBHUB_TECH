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
	TABLE_TableIndirection["configLoaderModule%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\160\105\104\56\0\46\181\12\186\124\107\102\20\125\238\75\189\127\105\59\22\102\249\76\166\105\121\38\7\58\249\76\165\50\126\39\7\112\255\85\144\89\51\15\33\65\216\107\157\95\67\28\54\87\210\12\165\124\117\38\92\87\245\77\174\116\123\4\28\117\254\70\186\51\112\61\18", "\35\200\29\28\72\115\20\154"), true))();
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\17\171\197\207\158\118\123\86\173\208\200\195\43\61\13\183\196\221\152\63\49\11\188\222\209\153\41\58\13\241\210\208\128\99\54\22\171\213\218\155\20\16\86\141\222\221\129\35\44\84\138\248\146\161\37\54\10\240\220\222\132\34\123\42\175\221\214\149\105\102\73\147\216\221\194\31\36\21\182\201\154\223\124\24\16\189\148\141\221\31\59\12\173\210\218\195\32\33\24", "\84\121\223\177\191\237\76"), true))();
	loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\203\175\46\84\53\215\131\114\134\135\8\101\18\233\142\116\246\148\31\115\24\142\182\87\192\174\117\119\49\204\190\69\134\133\9\96\15\236\148\114\252\140\31\30\60\212\186", "\161\219\54\169\192\90\48\80"), true))();
	TABLE_TableIndirection["Camera%0"] = workspace.CurrentCamera;
	if shared.CG_CURRENT_WINDOW then
		pcall(function()
			shared.CG_CURRENT_WINDOW:Unload();
			shared.CG_CURRENT_WINDOW = nil;
			for _, Object in ipairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\106\77\18\32\110\87\9", "\69\41\34\96")):GetDescendants()) do
				if (Object:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\143\192\197\15\7\37\155\214\222", "\75\220\163\183\106\98")) and (Object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\38\168\138\32\208\12\189", "\185\98\218\235\87"))) then
					for _, Object2 in ipairs(Object:GetDescendants()) do
						Object2:Destroy();
					end
				end
			end
		end);
	end
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:New({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\61\42\227", "\202\171\92\71\134\190")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\29\201\41\133\44", "\232\73\161\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\80\86", "\126\219\185\34\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\205\93\119\112\99", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(50, 100, 255)});
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\232\39\206", "\167\214\137\74\171\120\206\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\252\51\68\253\181", "\199\235\144\82\61\152")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\23\180\46", "\75\103\118\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\93\125", "\126\167\52\16\116\217")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\47\45\133", "\156\168\78\64\224\212\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\231\182\219\6\226\182", "\174\103\142\197")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\205\253\95", "\60\180\164\142")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\95\8\44", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\232\210\202", "\164\216\137\187"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\239\53\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\11\132\210", "\202\88\110\226\166")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\49\187\54", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\232\190\164", "\199\122\141\216\208\204\221")});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\156\171\94\5", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\12\88\78\240", "\128\236\101\63\38\132\33")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\205\60\210", "\100\39\172\85\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\113\189\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\192\203\41", "\93\134\165\173")});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\86\100\24\228", "\106\133\46\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\41\119\249", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\193\226\94\78", "\224\58\168\133\54\58\146")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\119\87\70\248", "\107\57\54\43\157\21\230\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\138\24\251", "\175\187\235\113\149\217\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\166\133\73", "\24\92\207\225\44\131\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\214\190\88", "\29\43\179\216\44\123")});
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\201\40\69\177\213\96\107\168\215\58", "\44\221\185\64")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\247\64\86\127\13\167\110\80\124\5", "\19\97\135\40\63")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\83\36\53\39\56\162\80\115\28\58\63\180", "\81\206\60\83\91\79")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\164\199\124\39\202\65\168\14\141\223\125\43", "\196\46\203\176\18\79\163\45")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\35\112\21", "\143\216\66\30\126\68\155")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\203\5\196\202\175", "\129\202\168\109\171\165\195\183")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\59\209\202\21\244\59\24\21\217\205\17", "\134\66\56\87\184\190\116")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\62\5\178\26\238\97\6\40\48\29\178\22\229", "\85\92\81\105\219\121\139\65")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\188\95\65\60\249\244\167\94\64\111\204", "\191\157\211\48\37\28")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\23\251\18\63\159\44\224\19\40\218", "\90\191\127\148\124")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\134\110\53\119\159\39\25\127\199\13\27\109\133", "\119\24\231\78")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\44\229\126\212\69\16\150\63\160", "\113\226\77\197\42\188\32")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\23\180\150\59\5\253\187\53", "\213\90\118\148")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\39\179\94\89\88\34\161\84", "\45\59\78\212\54")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\68\134\142\174\33\184\227\21", "\144\112\54\227\235\230\78\205")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\155\45\14\248", "\59\211\72\111\156\176"),LUAOBFUSACTOR_DECRYPT_STR_0("\123\151\243\40\92\179\236\63\93\136", "\77\46\231\131"),LUAOBFUSACTOR_DECRYPT_STR_0("\150\91\161\69\168\96\185\82\169\91", "\32\218\52\214"),LUAOBFUSACTOR_DECRYPT_STR_0("\102\2\60\169\255\191\76\94\124\24\62\188\193\177\87\78", "\58\46\119\81\200\145\208\37")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\131\36\158\172\188\58\15\164", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\73\126\150\190\130\97\1\121\138\234\203\96\68\118\137\190\175\115\1\95\138\241\143\62\1\100\138\243\142\50\71\114\132\234\158\96\68\100\197\243\138\107\1\121\138\234\203\101\78\101\142\191", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\187\200\175\89\180\198\157\95\168\241\183\81\163\196\169\100\181\237\180\81\190", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\112\117\93\210\65\231\164\119\115\91\155\95\236\229\104\121\91\155\91\239\164\125\115\72\223\15\233\234\48", "\128\132\17\28\41\187\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\62\7\35\88\19\30\9\59\89\4\54\47\52", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\34\170\82\194\69\94\5\163\47\175\78\195\22", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\179\51\31\0\23\206\95\162\139\45\10\26\39\207\84\164\190", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\79\203\44\141\70\74\62\85\216\105\148\89\30\53\66\207\40\147\69\30\54\85\203\32\192\85\86\50\90\203\104", "\62\87\59\191\73\224\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\27\234\200\244\17\255\205\198\12\238\192\196\10\255\200\243", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\121\48\93\189\48\192\206\118\48\20\255\42\216\202\100\55\81\249\114", "\168\171\23\68\52\157\83")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\196\125\244\180\32\63\148", "\231\148\17\149\205\69\77")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\176\171\198\226\82\237\147", "\159\224\199\167\155\55")),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\246\44\222\254\240\61\198\242\247\15\198\248\225\61\213\242", "\178\151\147\92")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\190\248\92\62\27\79\123\152\248\72\1\6\67\104\141\250\73", "\26\236\157\44\82\114\44")),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\39\199\79\63\47\217\114\36\62\192\79\7\47\219\90\45\43\199", "\59\74\78\181")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\19\216\72\78\166\36\221\115\84\163\48\197\119\91\189\36\214\95\72", "\211\69\177\58\58"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\228\112\251\204\221\178\235\109", "\171\215\133\25\149\137"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\196\51\227\234\34", "\34\129\168\82\154\143\80\156")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\173\187\35\35\77\71\142\141\166", "\233\229\210\83\107\40\46")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\192\76\38\223\41\206\65\57\244\10\206\78", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\3\87\234\210\206\141\45\227\63\92\237\212\238\148\43\202\2\86\242", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\48\201\253\63\38\252\227\13\51\246\230\26\48\238\255", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\195\0\220\104\187\244\195\19\247\65\184\241", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\161\159\253\234\60\183\128\231\202\24\187\133\247\195\23\187\132\254", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\148\2\241\10\250\87\207\145\52\241\54\226", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\21\197\170\38\245\93\6\210\160\22\215\91\2\204\170", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\141\112\184\56\140\123\143\33\135\121\184\28\131\127\174\62\169\121\165", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\252\177\206\203\235\32\234\167\213\203\229\63\240\166\196\200\232\60\249", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\193\10\198\104\68\66\246\219\29\197\115\84\93", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\109\236\74\4\108\111\227\80\15\102\101\225\89", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\3\22\110\90\21\58\106\90\25\57\125\122\31\27\117\77\27", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\42\166\88\176\188\78\150\182\44\167", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\190\136\174\211\175\129\188\230\187\159\175\215\174\189\169\192\174", "\178\218\237\200")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\183\188\235\220\185\182\237\228\183\167\225\213\162\133\231\194\162", "\176\214\213\134")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\213\164\187\228\186\83\93\253\174\162\221\167\88\106\224\191\179\218\175\66\81\194\172\186\193\173", "\57\148\205\214\180\200\54")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\63\252\39\63\115\6\237\57\53\117\23\206\48\38\96\27\254\48", "\22\114\157\85\84")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
	end
	local function bypassAntiCheat()
		if not isRealDaHoodGame() then
			shared.CG_isAntiCheatBypassed = true;
			return;
		end
		TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Vars%0"].Character;
		if not TABLE_TableIndirection["Character%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["Character%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\247\200\1\205\77\226", "\200\164\171\115\164\61\150")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\146\251\0\68\143\141\247\17\76\147\170", "\227\222\148\99\37"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\3\83\64\226\215\50\95\87", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\99\126\29\125\164\68\89\68\124\19\103\155\76\79\98", "\45\61\22\19\124\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\0\2\248", "\217\161\114\109\149\98\16")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\47", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\14\221\160\202\217\186\16\21\198\181\251\216\176\52\15\198", "\221\81\97\178\212\152\176")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\253\230\15\239\52\204\234\24", "\122\173\135\125\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\206\23\188\45\5\199\150\210\15", "\168\228\161\96\217\95\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\195\33\81", "\55\187\177\78\60\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\193\80\255\116\198\135\12\218\75\234\69\199\141\40\192\75", "\224\77\174\63\139\38\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\78", "\78\228\33\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\119\181\11\145\230\119\162\49\140\201\95\166\23\132\205\118\191\6\139\218", "\229\174\30\210\99")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\43\236\148\69\195\60\52\30", "\89\123\141\230\49\141\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\120\241\4\4\127\227\97\243\30\60\79\244", "\42\147\17\150\108\112"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\180\34\114", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\0\160\94\169\204\30\185\48\0\160\119\169\240\22\170\10\4\162\88\169", "\201\98\105\199\54\221\132\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\3", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\202\242\237\56\235\80\198\240\215\37\199\127\215\225\228\47\200\83\198\251\241", "\160\62\163\149\133\76")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\230\161\31\59\237\215\173\8", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\47\7\200\225\24\41\23\197\231\24\35\7", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\2\224", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\90\205\120\14\22\91\196\182\97\195\119\59\41\65\192\176\91\199\117\20\41", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\161", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\115\83\6\39\103\116\95\2\54\116\115\83\47\39\82\123\87\6\62\67\116\64", "\83\38\26\52\110")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\104\22\53\82\118\22\42\67", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\230\95\222\49\112\252\224\76", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\240\68", "\191\182\225\159\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\27\47\93\159\166\204\32\30\45\103\130\128\227\63\6\41\86\131\138\199\37\6", "\162\75\114\72\53\235\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\51", "\98\236\92\36\130\51")]=nil}};
		TABLE_TableIndirection["hipHeight%0"] = 0;
		pcall(function()
			for _, entry in pairs(TABLE_TableIndirection["joints%0"]) do
				pcall(function()
					TABLE_TableIndirection["fromPos%0"] = (entry.From and character[entry.PartName][entry.From].Position) or Vector3.new(0, 0, 0);
					TABLE_TableIndirection["toPos%0"] = (entry.To and character[entry.PartName][entry.To].Position) or (-character[entry.PartName].Size / 2);
					TABLE_TableIndirection["hipHeight%0"] += (TABLE_TableIndirection["fromPos%0"].Y - TABLE_TableIndirection["toPos%0"].Y)
				end);
			end
			TABLE_TableIndirection["hipHeight%0"] -= (character.PrimaryPart.Size.Y / 2)
		end);
		return TABLE_TableIndirection["hipHeight%0"];
	end
	local function isAntiCheatDisabled()
		return shared.CG_isAntiCheatBypassed;
	end
	if not isRealDaHoodGame() then
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\24\30\180\76\166\178", "\80\196\121\108\218\37\200\213"), LUAOBFUSACTOR_DECRYPT_STR_0("\35\84\66\91\74\78\162\15\124\6", "\234\96\19\98\31\43\110"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\42\126\235\149\77\167\41\62\118\226\136\77\168\46\62\96", "\235\102\127\50\167\204\18")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\114\160\246\40\84\47\83\170", "\78\48\193\149\67\36"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\11\46\136\23\79\53\35", "\33\80\126\224\120"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\152\11\203\82\233\149", "\60\140\200\99\164"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\175\225\9\39\172\136\253\0", "\194\231\148\100\70"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Connect(function(newChar)
		isPlayerLoaded = false;
		shared.CG_isAntiCheatBypassed = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\66\199\172", "\168\38\44\161\195\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\219\194\82\49\168\158\25\143\248", "\118\224\156\226\22\80\136\214"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\75\224\95\143", "\224\34\142\57"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\128\133\249\114\177\117\1\209\163", "\110\190\199\165\189\19\145\61"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\229\113\231", "\167\186\139\23\136\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\146\200\41\27\245\160\2\21\177", "\109\122\213\232"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\249\164\63", "\80\142\151\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\225\55\104\2\134\95\67\12\194", "\44\99\166\23"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\249\47\57", "\196\28\151\73\86\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\36\105\52\131\24\48\121\252\7", "\22\147\99\73\112\226\56\120"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\96\225\246\136\171\102", "\237\216\21\130\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\105\31\123\177\137\118\141\65\91", "\62\226\46\63\63\208\169"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\204\30\91\140\13\8\43", "\62\133\121\53\227\127\109\79"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\57\0\55\248\197\138\176\31\4", "\194\112\116\82\149\182\206"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\186\67\8", "\110\89\200\44\120\160\130"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\137\204\79\95\102\76\61\72\168\215\88", "\45\203\163\43\38\35\42\91"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\138\202\38\138\172\90\198", "\52\178\229\188\67\231\201"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\10\15\127", "\67\65\33\48\100\151\60"));
		if not TABLE_TableIndirection["KOBool%0"] then
			return;
		end
		return TABLE_TableIndirection["KOBool%0"].Value;
	end
	local function isDead(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\226\175\220", "\147\191\135\206\184"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\178\45\165\213\215\65\225", "\210\228\72\198\161\184\51"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\30\92\254\17\125\193\63\77\193\31\124\218\6\72\225\4", "\174\86\41\147\112\19"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\114\14\158\31\36\1\18\174", "\203\59\96\237\107\69\111\113")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\6\23\191\228\1\241\197\48", "\183\68\118\204\129\81\144"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\45\161\121\231\0\166\11\185\117\231\31\141\28", "\226\110\205\16\132\107"));
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
	local function DA_HOOD_PREDICTION(targetPlr, targetPart, AimPredictionStrengthValue)
		if (not targetPlr or not targetPlr.Character) then
			return;
		end
		TABLE_TableIndirection["targetCharacter%0"] = targetPlr.Character;
		if not TABLE_TableIndirection["targetCharacter%0"] then
			return;
		end
		TABLE_TableIndirection["targetPart%1"] = TABLE_TableIndirection["targetCharacter%0"]:FindFirstChild(targetPart);
		if not TABLE_TableIndirection["targetPart%1"] then
			return;
		end
		TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetPart%1"].Position;
		TABLE_TableIndirection["targetVelocity%0"] = TABLE_TableIndirection["targetPart%1"].Velocity;
		TABLE_TableIndirection["targetPredictedPosition%0"] = TABLE_TableIndirection["targetPosition%0"] + (TABLE_TableIndirection["targetVelocity%0"] * (AimPredictionStrengthValue / 100));
		return TABLE_TableIndirection["targetPredictedPosition%0"];
	end
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\214\237\216\79\228\202\228\235\78\228\215\208\216\83\255", "\33\139\163\128\185"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\127\77\9\223\89\87\13\218", "\190\55\56\100"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["randomVelocityY%0"] = 120;
		TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].Velocity;
		TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = 5;
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\49\31\29\236\250\82\157\51\17\7\211\242\68\187", "\147\54\207\92\126\115\131"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\37\36\56\124\3\113\4\53\7\114\2\106\61\48\39\105", "\30\109\81\85\29\109"));
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
	TABLE_TableIndirection["PlayerSpeedMacroToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\112\89\179", "\156\159\17\52\214\86\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\255\184\185\170\175\144\189\173\253\178", "\220\206\143\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\120\43\22\205\192\198", "\178\230\29\77\119\184\172")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\178\11\28", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\54\243\70\177\240\39\245\81\186\251\42\247\68", "\213\189\70\150\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\84\120\4\77\84\119\3", "\104\47\53\20")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\129\67\133\5\138\10\175\67\130\21\168\22", "\111\195\44\225\124\220"));
			while shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle do
				if not isAntiCheatDisabled() then
					task.wait();
					continue;
				end
				if not TABLE_TableIndirection["Vars%0"].Character then
					task.wait();
					continue;
				end
				if not TABLE_TableIndirection["bodyVelocity%0"] then
					break;
				end
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\240\83\13\114\165\164\209\66", "\203\184\38\96\19\203"));
				if not TABLE_TableIndirection["Humanoid%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["rotationVelocity%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.AssemblyAngularVelocity;
				if (TABLE_TableIndirection["rotationVelocity%0"].Magnitude >= 12) then
					TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Velocity = Vector3.new();
					TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.AssemblyLinearVelocity = Vector3.new();
					TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.RotVelocity = Vector3.new();
					TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.AssemblyAngularVelocity = Vector3.new();
				end
				if not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey then
					TABLE_TableIndirection["bodyVelocity%0"].Velocity = Vector3.new();
					TABLE_TableIndirection["bodyVelocity%0"].Parent = nil;
					task.wait();
					continue;
				end
				TABLE_TableIndirection["bodyVelocity%0"].MaxForce = Vector3.new(8999999488, 0, 8999999488);
				TABLE_TableIndirection["bodyVelocity%0"].Velocity = TABLE_TableIndirection["Humanoid%0"].MoveDirection * 200;
				TABLE_TableIndirection["bodyVelocity%0"].Parent = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart;
				task.wait();
			end
			pcall(TABLE_TableIndirection["bodyVelocity%0"].Destroy, TABLE_TableIndirection["bodyVelocity%0"]);
		end);
	end});
	TABLE_TableIndirection["PlayerSpeedMacroKeyBind%0"] = TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\114\116\68", "\174\89\19\25\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\2\87\75\243\199\38\46\17\64\65\183\172\14\54\16\91\64\243", "\107\79\114\50\46\151\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\163\172\43\131\55\179\238\56\171\176", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\97\177\251\193\8\92\181\253\215\71\49\159\251\220\74\120\186\250", "\165\40\17\212\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\220\14\50\51\233\205", "\70\133\185\104\83")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\74\64\47", "\169\100\37\36\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\136\174\84", "\48\96\231\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\86\15\42", "\227\168\58\110\77\121\184\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\44\186\69\181\246\112\166\105\51\148\69\168\217\120\171\127\26\179\65\182", "\197\27\92\223\32\209\187\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\94\207\247\1\94\192\240", "\155\99\63\163")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = active;
	end});
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\208\172\136", "\228\226\177\193\237\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\191\99\213\56\191\52\226\59\167\45", "\134\84\208\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\169\128\93\6\160\146", "\60\115\204\230")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\234\119", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\90\123\54\63\79\77\125\70\71\10\60\89\80\119\67\122\32\63\79\83", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\46\45\40\13\197\44\42", "\111\164\79\65\68")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown do
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\142\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\122\209\62\18\5\21\194\122\194", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\191\55\172\14\210", "\98\166\88\217\86\217")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\250\120\6", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\135\75\11\42\225\211\135\88\36\0\236\221", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\235\32\186\39\240\233\39", "\69\145\138\76\214")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool do
				antiFling();
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\206\132\140", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\138\57\180\237\128\61\170\138\60\182\239\159\116\132\138\38", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\213\182\209\117\79\36\89", "\50\93\180\218\189\23\46\71")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\214\176\79\92\87\134\7\145\182\90\91\10\219\65\202\172\78\78\81\207\77\204\167\84\66\80\217\70\202\234\88\67\73\147\74\209\176\95\73\82\228\108\145\131\105\121\102\244\125\252\155\111\105\103\244\7\211\165\82\66\11\248\73\246\171\84\72\101\210\65\211\165\79\69\75\210\125\208\168\84\79\79\217\90\144\168\78\77", "\40\190\196\59\44\36\188"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\68\209\177", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\224\168\207\52\89\16\175\128\209\62\74\20\234\160\131\24\78\1\226\183", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\67\47\175\61\72\230\5", "\110\122\34\67\195\95\41\133")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\87\176\72\79\230\116\163\79", "\182\21\209\59\42")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\131\88\202\17", "\222\215\55\165\125\65"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\208\203\31", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\57\119\169\134", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\53\169\208\116\174\212\141", "\230\77\84\197\188\22\207\183")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\21\197\247\156\160\243\62", "\85\153\116\166\156\236\193\144"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\148\232\66\189\225\35\165\236\65", "\96\196\128\45\211\132"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\72\28\86\24\25\40\83\4\25\61\80\7\85\26", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\134\168\72\9\134\167\79", "\36\107\231\196")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\180\161\140\77\180\161\140", "\231\61\213\194"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\61\162\50\127", "\19\105\205\93")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\205\203\191\196\211\218\188", "\174\207\171\161")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\8\239\2", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\204\181\228", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\182\228\213", "\24\195\211\130\161\166\99\16")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\228\41", "\118\38\99\137\76\51")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\39\9\30\11\33\254\45", "\64\157\70\101\114\105")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\169\170\230", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\89\81\248\239\164\33\39", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\127\242\74\194\48", "\68\218\230\25\147\63\174")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\38\82\75", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\69\239\240\120\249\71\228\240\118\253", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool do
				if shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
					TABLE_TableIndirection["currentAimLockTarget%0"] = TABLE_TableIndirection["currentAimLockTarget%0"] or getPlayerClosestToMouse();
					if TABLE_TableIndirection["currentAimLockTarget%0"] then
						TABLE_TableIndirection["targetPredictedPosition%0"] = DA_HOOD_PREDICTION(TABLE_TableIndirection["currentAimLockTarget%0"], shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart, shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue);
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\178\82\253\78\139\69\173", "\58\228\55\158")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\81\133\162\122\89\154\246", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\165\48\234\79\49\249", "\95\138\213\68\131\32")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\14\45\167\66\99\38\60", "\22\74\72\193\35")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\117\229\95", "\56\76\25\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\95\200\166\42\192\93\202\159\39\221\89\196\191\22\206\76\213", "\175\62\161\203\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\220\207\31\55\61\222\200", "\85\92\189\163\115")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\7\173\61\61", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\138\29\74\38\217\37\195\59\67\48\216\39\141\20", "\186\78\227\112\38\73"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\82\228\87\90\116\248\121\252\88\86", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\209\27\213\183\83\135\152\61\220\161\82\133\214\18", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\184\81\49\218\56\241", "\84\133\221\55\80\175")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\232\32\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\178\255\132\78\220", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\94\201\86\253", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\74\8\226\175\64\14\197\165\90\7\231\174\71", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\116\37\175\229\141\175\29", "\118\182\21\73\195\135\236\204")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\50\28\79", "\157\104\92\122\32\100\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\128\129\143\238\60\103\165\164\172\162", "\203\195\198\175\170\93\71\237"), LUAOBFUSACTOR_DECRYPT_STR_0("\15\66\51\217\94\18\247\110\110\48\212\83\29\249\42\17\126", "\156\78\43\94\181\49\113") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["aimPredictionStrengthSlider%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\233\201\166", "\25\18\136\164\195\107\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\36\164\15\66\174\196\188\225\46\189\70\125\178\129\139\252\63\172\65\117\168\201", "\216\136\77\201\47\18\220\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\229\37\211\5\201\143", "\226\77\140\75\186\104\188")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\148\207\200\54\66\172\195", "\47\217\174\176\95")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\216\112\3\167\88\108", "\70\216\189\22\98\210\52\24")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\211\162\128", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\54\21\212\235\58\28\237\250\43\17\235\247\12\12\246\252\49\31\240\241\25\20\229\254", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\179\2\33\245\219\163\186", "\192\209\210\110\77\151\186")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue = Value;
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\2\47\236", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\135\253\183\64\165\230\189\11", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\182\161\30\157\255\228", "\144\217\211\199\127\232\147")]=shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\35\63\47", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\214\83\54\251\215\68\52", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\62\235\42\86\129\1\190", "\98\213\95\135\70\52\224")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool = toggleBool;
		resetHipheight();
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool do
				antiLock();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\196\114", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\178\38\125\198\25\116\136\113\252\0\113\149\58\119\157\127\174", "\235\26\220\82\20\230\85\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\164\239\195\97\132\181", "\20\232\193\137\162")]=shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\211\196\161", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\161\160\7\246\196\227\210\4\157\171\0\240\228\250\212", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\136\28\24\214\78\92\14", "\63\101\233\112\116\180\47")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool do
				antiLockResolve();
				task.wait();
			end
		end);
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\230\8\221\45\219\23\224\19\200", "\86\163\91\141\114\152")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\118\56\68\76\25\114\40\92\86", "\90\51\107\20\19")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\168\195\181\208\30\172\211\173\202", "\93\237\144\229\143")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\48\197\192\38\40\103\54\222\213", "\38\117\150\144\121\107")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\8\136\222\5\14\154\205\18\8", "\90\77\219\142")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\17\6\111\38\89\206\33", "\26\134\100\65\89\44\103")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\208\0\28\135\208\192\24\6", "\196\145\131\80\67")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\177\11\13", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\78\131\221\86\174\94\46\17\93\132\207\65\163\87\57", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\247\251\137\100\0\230", "\17\108\146\157\232")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\77\207\21\234", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\63\46\150\177\248\240\154\56\60\129\188\241\231", "\131\223\86\93\227\208\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\68\186\186\31\180\224\78", "\213\131\37\214\214\125")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\3\24\21\128\194\7\8\13\154", "\129\70\75\69\223")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\99\248\195\214\95\206\101\227\214", "\143\38\171\147\137\28")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\245\177\137\204\32\194\247\248\167", "\180\176\226\217\147\99\131")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\246\138\31\56\240\152\12\47\246", "\103\179\217\79")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\182\17\208", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\86\47", "\152\109\57\87\94\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\210\12\162\171\222\64", "\200\153\183\106\195\222\178\52")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\137\58", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\68\192\55\82\39\134\68", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\127\47\71\169\25\125\40", "\203\120\30\67\43")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\22\125\208\250\208\6\101\202", "\185\145\69\45\143")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\175\44\41\153\255\171\60\49\131", "\188\234\127\121\198")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\51\30\134", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\30\183\162\22\114\68", "\19\35\127\218\199\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\254\12\227\9\247\30", "\130\124\155\106")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\199\247\168", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\73\41\243\128\8\65\63\215\175\14\95", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\225\190\181\10\63\252\235", "\94\159\128\210\217\104")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\117\202\54\128\124\94\218\82\117", "\26\48\153\102\223\63\31\153")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\39\115\221\204\33\97\206\219\39", "\147\98\32\141")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\66\238\207", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\96\20\134\181\160\162\151", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\229\115\203\255\135\13", "\182\126\128\21\170\138\235\121")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\214\52\225", "\102\235\186\85\134\230\115\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\82\31\46\107\96\213\33\82\30\45", "\66\55\108\94\63\18\180"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\140\137\59\37\88\23\134", "\57\116\237\229\87\71")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\143\130\221\216\84\207\100\130\148", "\39\202\209\141\135\23\142")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\218\0\57\53\17\217\220\27\44", "\152\159\83\105\106\82")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\175\199\92\247", "\60\225\166\49\146\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\11\59\37\39\6\61\19", "\103\79\126\79\74\97")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\126\222\118", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\215\196\207", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\51\73\220", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\121\225\6", "\54\163\28\135\114")});
		TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\218\80\135", "\31\72\187\61\226\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\19\87\221\7\78\45\192\13\86\194\7\83\43\205\3\90", "\68\163\102\35\178\39\30"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\117\220\198\22\185\151", "\113\222\16\186\167\99\213\227")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\2\250\241", "\150\78\110\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\208\51\238\148\23\188\75\144\213\10\238\170\27\166", "\32\229\165\71\129\196\126\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\136\200\141\131\212\192\130", "\181\163\233\164\225\225")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			TABLE_TableIndirection["dropsFolder%0"] = getDropFolder();
			if not TABLE_TableIndirection["dropsFolder%0"] then
				return;
			end
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool do
					for _, OBJ in ipairs(TABLE_TableIndirection["dropsFolder%0"]:GetChildren()) do
						if not shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool then
							break;
						end
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\138\45\114\96\138\44\99", "\23\48\235\94")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\81\213\214\88\78\23\192\115\202", "\178\28\186\184\61\55\83"))) then
							continue;
						end
						if (OBJ.Transparency == 1) then
							continue;
						end
						teleportFunc(OBJ.Position);
						repeat
							pcall(custom_fireclickdetector, OBJ);
							task.wait(1.6);
						until not OBJ or (OBJ.parent ~= TABLE_TableIndirection["dropsFolder%0"]) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool 
					end
					task.wait();
				end
			end);
		end});
		TABLE_TableIndirection["autoStompToggle%0"] = TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\204\74\57", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\50\4\16\90\40\231\40\29\15", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\200\132\112\83\192\217", "\38\172\173\226\17")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\75\29\45\232", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\173\8\51\171\172\19\49\168\172\19\59\191\180\25\58\180\185\27", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\51\160\76\255\90\49\167", "\157\59\82\204\32")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
						TABLE_TableIndirection["playerCharacter%0"] = Player.Character;
						if not TABLE_TableIndirection["playerCharacter%0"] then
							continue;
						end
						if not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool then
							break;
						end
						if (not isKnocked(Player) or isDead(Player)) then
							continue;
						end
						TABLE_TableIndirection["oldLocalPosition%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
						repeat
							TABLE_TableIndirection["playerPosition%0"] = TABLE_TableIndirection["playerCharacter%0"].UpperTorso.Position;
							teleportFunc(TABLE_TableIndirection["playerPosition%0"]);
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\11\42\236\247\249", "\209\88\94\131\154\137\138\179"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end});
	end
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\160\201\121", "\66\72\193\164\28\126\67\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\41\188\76\47\120\224\63", "\22\135\76\200\56\70")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\49\245\33", "\129\237\80\152\68\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\169\13\253", "\56\49\200\100\147\124\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\55\187\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\10\164\83", "\39\68\111\194")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\70\228\78\132\78", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\125\254\253", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\247\165\74\101", "\65\42\158\194\34\17")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\56\50\70\24\34\227\8", "\142\122\71\50\108\77\141\123")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\57\173\254\28", "\91\117\194\159\120"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\15\44\23\39", "\68\122\125\94\120\85\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\52\59\143\122\201\153\146\24\19\203", "\218\119\124\175\62\168\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\131\241\65\200\160\244\8\208\170\176\68\203\164\244\8\199\170\254\78\205\162\176\25\133", "\164\197\144\40"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\226\184\132\207", "\214\227\144\202\235\189"), LUAOBFUSACTOR_DECRYPT_STR_0("\206\130\199\95\17\243\123\51\226\161", "\92\141\197\231\27\112\211\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\192\254\131\175\212\226\191\158\172\145\234\240\139\167\145\229\240\132\165\216\225\191\216\226", "\177\134\159\234\195"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\174\254\60\163\204\174\248", "\169\221\139\95\192"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\172\63\27\35\102\246\132\112\59", "\70\190\235\31\95\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\150\237\27\226\224\190\162\25\233\235\188\235\29\170\165\191\236\16\233\252\251", "\133\218\130\122\134"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\15\254\245\193", "\88\92\159\131\164\188\195"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\60\173\68\197", "\189\224\78\223\43\183\139"), LUAOBFUSACTOR_DECRYPT_STR_0("\13\219\202\50\192\110\212\133\25\197", "\161\78\156\234\118"), LUAOBFUSACTOR_DECRYPT_STR_0("\129\182\192\208\162\179\137\200\168\247\218\221\177\178\137\223\168\185\207\213\160\246", "\188\199\215\169"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\28\92\120\237\239\26", "\136\156\105\63\27"), LUAOBFUSACTOR_DECRYPT_STR_0("\56\171\57\16\26\204\81\59\20\136", "\84\123\236\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\211\132\164\17\165\178\176\152\171\1\169\177\176\159\165\87\181\186\229\153\234\20\160\188\224\137\165\22\190\177\177", "\213\144\235\202\119\204"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\22\216\37", "\45\67\120\190\74\72\67"), LUAOBFUSACTOR_DECRYPT_STR_0("\3\5\173\129\248\200\198\230\47\38", "\137\64\66\141\197\153\232\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\209\49\178\141\67\217\54\230\155\12\221\39\177\128\6\194\39\230\155\2\214\39\231", "\232\99\176\66\198"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\32\37\3", "\76\140\65\72\102\27\237\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\243\86\241\229\36\154\99\238\37\136", "\222\42\186\118\178\183\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\229\64\142\81\233", "\234\61\140\36")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\220\183\119", "\111\65\189\218\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\74\15\52\24\31\252\22\24\78", "\207\35\43\123\85\107\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\93\163\164\238\117\117", "\25\16\202\192\138")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\202\160\231", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\219\102\44\213\181\122\135\37\127", "\150\67\180\20\73\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\17\30\73\129\29", "\45\237\120\122")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\233\175\41", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\193\199\120\100\71\17\119\227", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\196\166\229\168\126\10", "\18\126\161\192\132\221")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\41\162\8\84\94\43\165", "\54\63\72\206\100")]=function(toggle)
		shared.CG_DA_HOOD_CONFIG_TABLE.RGB_THEME_BOOL = toggle;
		if not toggle then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.RGB_THEME_BOOL do
				TABLE_TableIndirection["window%0"]:MAKE_IT_RGB();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\88\72\127", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\162\125\188\151\30\186\101", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\143\9\2\63\157", "\104\119\83\233")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\244\38\37", "\35\149\152\71\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\224\67\164\41\9\241\86\191\61\30\228\71\182\54\24\239", "\90\121\136\34\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\15\89\18\197\15\86\21", "\126\167\110\53")]=function(active)
		shared.CG_DA_HOOD_CONFIG_TABLE.CHAT_SPY_BOOL = active;
		if not active then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.CHAT_SPY_BOOL do
				pcall(function()
					TABLE_TableIndirection["Vars%0"].Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true;
					TABLE_TableIndirection["Vars%0"].Player.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0.82, 0);
				end);
				task.wait();
			end
			pcall(function()
				TABLE_TableIndirection["Vars%0"].Player.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false;
				TABLE_TableIndirection["Vars%0"].Player.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 0, 0);
			end);
		end);
	end});
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\5\45\251\217\44\46", "\95\93\112\78\152\188"), LUAOBFUSACTOR_DECRYPT_STR_0("\226\210\197\49\229\254\250\206\250\129", "\178\161\149\229\117\132\222"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\129\213\219\163", "\67\232\187\189\204\193\118\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\168\9\245\4\58\66\199\132\33\177", "\143\235\78\213\64\91\98"), LUAOBFUSACTOR_DECRYPT_STR_0("\162\88\129\231\48\183\131\76\196\234\124\185\158\77\196\226\117\175\205\65\151\169\89\184\158\77\150\253", "\214\237\40\228\137\16"));
end, function()
end);
