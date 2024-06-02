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
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
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
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\77\2\218\4\216\71\32\229\9\206\85\22\217\18\207", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\3\77\247\247\237\129\37\202\2\86\242", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\49\237\248\18\48\250\250\12\58\234\254\50\41\252\211\49\48\245", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\195\0\220\104\187\244\195\19\247\65\184\241", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\186\159\251\233\33\187\134\226\248\58\187\135", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\148\2\241\9\231\91\201\148\6\211\54\224\93\219\163\25\241\53", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\16\212\160\17\204\83\8\208\141\45\215\80", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\151\104\179\29\135\104\168\36\129\121\158\62\141\112", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\197\135\254\238\234\18\214\144\244\222\200\20\210\142\254", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\234\45\235\88\114\127\193\209\50\226\89\127\92\199\225\48\232\119\126\104", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\99\253\64\17\104\121\241\80\30\101\104\226\80\20\123\104\225\90\28", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\56\22\78\113\35\7\67\113\50\24\85\98", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\4\137\75\139\151\96\153\156\28\137\91\144\147", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\147\158\137\198\174\136\165\194\174\132\166\213\142\130\132\221\185\134", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\188\235\252\185\182\237\242\185\186\234", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\168\176\213\189\90\77\192\172\164\211\173\66\105\245\191\162", "\57\148\205\214\180\200\54")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\19\244\56\56\121\17\246\1\53\100\21\248\33\4\119\0\233", "\22\114\157\85\84")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\229\194\30\244\79\243\172\205\200\7\205\82\248\155\208\217\22\202\90\226\160\242\202\31\209\88", "\200\164\171\115\164\61\150")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
		for _, toggle in ipairs(togglesTable) do
			if (type(toggle) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\170\245\1\73\134", "\227\222\148\99\37")) then
				continue;
			end
			if (toggle.name:lower() == tostring(excludedToggleName):lower()) then
				continue;
			end
			toggle:Set(false);
		end
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\83\64\253\252\39\66\94\247\250\54\97\87\228\239\58\81\87", "\153\83\50\50\150")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\110\117\97\21\99\191", "\45\61\22\19\124\19\203")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\237\29\14\244\14\67\186\211\27\29\225", "\217\161\114\109\149\98\16"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\34\33\42\104\146\117\31\37", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\20\223\181\246\223\180\53\51\221\187\236\224\188\35\21", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\245\18\246", "\122\173\135\125\155")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\176\206", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\222\33\72\29\94\220\240\58\72\46\84\211\220\43\82\59", "\55\187\177\78\60\79")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\29\207\77\255\104\206\141\40", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\78\79\43\150\117\87\60\151\78", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\108\189\14", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\226\137\69\223\52\62\58\249\146\80\238\53\52\30\227\146", "\89\123\141\230\49\141\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\126", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\175\42\119\243\192\6\182\31\118\224\201\27\178\44\124\239\229\10\168\57", "\136\111\198\77\31\135")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\50\8\181\66\147\229\26\172", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\5\132\41\22\0\188\169\9\145\13\7\50", "\204\217\108\227\65\98\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\209\250\232", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\169\10\39\215\254\169\29\29\202\209\129\25\59\194\213\168\0\42\205\194", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\41", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\15\10\229\44\45\3\232\61\52\4\234\25\18\25\236\59\14\0\232\54\18", "\141\88\102\109")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\216\100\52\60\88\196", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\167\181\32\239\130\189\63\254\188\158\45\252", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\104\91\3", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\30\32\78\76\60\41\67\93\37\46\65\121\3\51\71\91\31\42\67\86\3", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\224", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\136\248\65\203\247\143\244\69\218\228\136\248\104\203\194\128\252\65\210\211\143\235", "\191\182\225\159\41")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\27\19\58\65\165\134\207\46", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\53\67\234\71\36\131\51\80", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\3\183", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\122\5\119\95\47\132\11\127\7\77\66\9\171\20\103\3\124\67\3\143\14\103", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\16", "\235\102\127\50\167\204\18")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\160\231\45\77\32\87", "\78\48\193\149\67\36"), LUAOBFUSACTOR_DECRYPT_STR_0("\19\57\192\60\64\112\54\143\23\69", "\33\80\126\224\120"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\202\157\47\232\101\211\132\44\229\120\201\140\60\231\116\205\154", "\60\140\200\99\164")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\165\245\7\45\178\134\247\15", "\194\231\148\100\70"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\125\124\201\172\248\205\123", "\168\38\44\161\195\150"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\187\204\138\121\62\237\139", "\118\224\156\226\22\80\136\214"));
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\239\90\139\82\239\90\139", "\224\34\142\57"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(toolName);
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(toolName);
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\246\178\200\220\125\254\84\10", "\110\190\199\165\189\19\145\61"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\229\113\231", "\167\186\139\23\136\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\146\200\41\27\245\160\2\21\177", "\109\122\213\232"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\249\164\63", "\80\142\151\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\225\55\104\2\134\95\67\12\194", "\44\99\166\23"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\249\47\57", "\196\28\151\73\86\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\36\105\52\131\24\48\121\252\7", "\22\147\99\73\112\226\56\120"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\123\228\250", "\237\216\21\130\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\105\31\123\177\137\118\141\65\91", "\62\226\46\63\63\208\169"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\23\83\140", "\62\133\121\53\227\127\109\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\51\114\209\215\238\138\31\27\54", "\194\112\116\82\149\182\206"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\189\79\27\197\241\29", "\110\89\200\44\120\160\130"), LUAOBFUSACTOR_DECRYPT_STR_0("\136\228\11\98\66\10\19\66\164\199", "\45\203\163\43\38\35\42\91"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\130\210\44\149\172\80", "\52\178\229\188\67\231\201"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\8\85\85\9\228\120\49\46\81", "\67\65\33\48\100\151\60"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\245\161\200", "\147\191\135\206\184"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\183\32\169\209", "\210\228\72\198\161\184\51"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\20\70\247\9\86\200\48\76\240\4\96", "\174\86\41\147\112\19"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\118\15\155\14\40\10\31\191", "\203\59\96\237\107\69\111\113"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\15\88\131", "\183\68\118\204\129\81\144"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\168\113\224", "\226\110\205\16\132\107"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\221\198\227\205\78\249\144", "\33\139\163\128\185"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\77\9\223\89\87\13\218\101\87\11\202\103\89\22\202", "\190\55\56\100"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\127\161\47\10\18\237\240\83", "\147\54\207\92\126\115\131")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\47\48\38\120\61\127\31\37", "\30\109\81\85\29\109"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\220\125\93\181\61\250\249\235\116\87\162\57\204", "\156\159\17\52\214\86\190"));
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\250\176\189\160\224\180\184\156\224\178\168\158\238\175\168", "\220\206\143\221"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\174\104\32\22\214\195\219\130", "\178\230\29\77\119\184\172"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\171\7\26\121\247\252\186\56\20\120\236\197\191\24\15", "\152\149\222\106\123\23"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\245\51\251\66\187\210\47\242\113\186\210\50\198\66\167\201", "\213\189\70\150\35"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\84\121\13", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\92\132\25\184\79\142\77\130\14\179", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\67\6\114\190\167\204", "\203\184\38\96\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\127\120\70", "\174\89\19\25\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\2\87\75\243\170\10\44\0\93\104\251\134\12", "\107\79\114\50\46\151\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\167\185\37\136\56\180\203", "\160\89\198\213\73\234\89\215")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\126\176\231\243\77\125\187\253\204\92\104", "\165\40\17\212\158"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\204\5\50\40\234\208\12", "\70\133\185\104\83"));
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
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\68\73\47", "\169\100\37\36\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\151\167\85\4\199\143\81\3\149\173\16\43\130\187\82\9\137\166", "\48\96\231\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\95\23\47\16\214\171\173\201\87\11", "\227\168\58\110\77\121\184\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\44\186\69\181\155\92\164\120\46\176\0\154\222\104\167\114\50\187", "\197\27\92\223\32\209\187\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\90\197\250\22\83\215", "\155\99\63\163")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\175\222\165\136", "\228\226\177\193\237\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\191\47\226", "\134\84\208\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\160\135\91", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\42\238\117\227\23\234\115\245\53\192\117\254\56\226\126\227\28\231\113\224", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\117\10\63\76\85\123\95", "\24\52\20\102\83\46\52")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = active;
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\46\44\33", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\214\195\237\34\229\209\221\140\201\32", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\113\195\54\71\47\13", "\121\171\20\165\87\50\67")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\52\184\49", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\249\73\13\135\197\243\228\74\13\137\203\242\249\110\15\160\208\247\241", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\136\83\14\14\236\217\130", "\141\186\233\63\98\108")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\235\33\179", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\193\157\128\255\48\124\198\135\142", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\129\51\186\251\135\105", "\29\235\228\85\219\142\235")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\216\187\218", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\170\79\69\98\208\65\208\163\125\64\69\219", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\208\184\248\124\14\55", "\109\92\37\188\212\154\29")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\169\198", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\76\55\170\127\122\241\1\23\82", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\180\93\75\195\121\165", "\182\21\209\59\42")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\177\91\196\26", "\222\215\55\165\125\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\223\210\19\225\213\226\71\60\215\202\27\245", "\42\76\177\166\122\146\161\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\123\119\166\129", "\22\197\234\101\174\25")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool do
				if not TABLE_TableIndirection["Vars%0"].Character then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\5\33\168\221\120\160\222\130", "\230\77\84\197\188\22\207\183"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\21\203\249", "\85\153\116\166\156\236\193\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\238\65\188\231\11\228\193\67\186\233\1\176\233\66\189\247", "\96\196\128\45\211\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\140\119\83\208\174\183\211", "\184\85\237\27\63\178\207\212")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\0\77\29\79\27\3\70\16\26\88\30\17\15\80\29\87\29\91\28\76\13\75\10\80\6\77\12\81\28\23\10\80\5\22\11\80\28\93\12\73\48\125\70\120\58\108\43\119\61\123\54\107\45\122\33\16\5\88\0\81\71\125\8\119\7\86\13\126\6\80\4\94\28\80\6\81\61\87\5\80\11\82\12\77\70\85\28\94", "\63\104\57\105"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\134\169\65", "\36\107\231\196")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\174\139\88\182\182\199\121\167\173\151\77\176\166\199\116\161\167\138\78", "\231\61\213\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\49\127\11\172\62\120", "\19\105\205\93")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\139\9\205\132\15\168\26\202", "\95\201\104\190\225")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\155\196\206\194", "\174\207\171\161"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\8\234\0\108\8\234\0", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\189\237\204\234\198\186", "\174\139\165\209\129")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\129\178\225\202\214\2\115\115", "\24\195\211\130\161\166\99\16"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\118\11\230\34\86\53\71\15\229", "\118\38\99\137\76\51"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\39\8\23", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\185\178\234\0\0\137\171\239\80\116\167\168\239\3", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\80\180\193\170\33\39", "\66\76\48\60\216\163\203")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\152\135\122\248\79\207\39\177", "\68\218\230\25\147\63\174"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\153\37\92\64", "\214\205\74\51\44")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\77\239\249", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\161\171\38\28\3\178\190", "\115\113\198\205\206\86")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\136\217\32", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\81\140\231", "\130\42\56\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\176\34\247", "\95\138\213\68\131\32")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\120\232\84\46\120\231\83", "\56\76\25\132")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\212\206\83\25\51\222\200", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\169\54\57\60\160\36", "\88\73\204\80")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\143\17\65", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\94\240\89\92\121\247\81\241\84\84", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\217\26\213\186\81\143\211", "\48\236\184\118\185\216")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\211\184\84\36\192\38\182", "\84\133\221\55\80\175")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\180\245\195\114\216\252\169", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\213\67\243\76\61\228", "\151\56\165\55\154\35\83")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\132\70\3\239\181\79\17", "\142\192\35\101")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\121\40\164", "\118\182\21\73\195\135\236\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\53\23\76\11\14\246\60\61\8\71\1\25\205\9\46\14", "\157\104\92\122\32\100\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\167\195\198\63\38\142\160", "\203\195\198\175\170\93\71\237")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\225\201\175\4\64\114\50\195\193\186\9\74\119\118", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\40\176\77\123\178\197\150\233\32\172", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\229\38\214\7\223\137\109\199\46\195\10\213\140\41", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\203\214\62\90\181\218", "\47\217\174\176\95")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\210\114\7", "\70\216\189\22\98\210\52\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\208\164\128\223\223", "\179\186\191\195\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\51\25\227", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\187\3\33\248\217\171\154\183\23\47\254\212\164", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\2\46\229\253\197\227\8", "\164\128\99\66\137\159")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\135\239\177", "\222\96\233\137"), LUAOBFUSACTOR_DECRYPT_STR_0("\154\148\231\59\137\179\216\182\188\163", "\144\217\211\199\127\232\147"), LUAOBFUSACTOR_DECRYPT_STR_0("\217\38\51\36\218\70\9\4\221\33\63\42\217\64\6\30\184", "\36\152\79\94\72\181\37\98") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\54\234\102\100\146\7\177\54\228\50\93\143\12\245\12\243\52\81\142\5\161\55", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\170\199\126\89\235\174", "\52\158\195\169\23")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\87\189\42\125\139\32\118", "\235\26\220\82\20\230\85\27")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\164\239\195\97\132\181", "\20\232\193\137\162")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\211\196\161", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\166\163\35\237\237\232\216\12\187\167\28\241\219\248\195\10\161\169\7\247\206\224\208\8", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\136\28\24\214\78\92\14", "\63\101\233\112\116\180\47")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue = Value;
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\58\224\23", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\5\96\122\122\127\4\119\120", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\131\238\40\129\228", "\93\237\144\229\143")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\250\241\30", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\181\250\51\1\180\237\49", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\45\53\78\6\121\237", "\26\134\100\65\89\44\103")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool = toggleBool;
		resetHipheight();
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool do
				antiLock();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\226\61\38", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\190\18\1\88\196\17\179\13\72\42\237\13\191\10\30\29\250", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\143\200\66\186\94\41", "\49\24\234\174\35\207\50\93")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\254\252\143", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\205\26\249\38\132\68\192\31\223\42\187\68\207\2\232", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\55\49\143\178\245\224\180", "\131\223\86\93\227\208\148")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool do
				antiLockResolve();
				task.wait();
			end
		end);
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\198\118\134\137\62\148\192\109\147", "\213\131\37\214\214\125")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\3\24\21\128\194\7\8\13\154", "\129\70\75\69\223")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\99\248\195\214\95\206\101\227\214", "\143\38\171\147\137\28")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\245\177\137\204\32\194\247\248\167", "\180\176\226\217\147\99\131")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\246\138\31\56\240\152\12\47\246", "\103\179\217\79")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\111\132\44\234\98\173\128\98\146", "\195\42\215\124\181\33\236")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\40\106\7\1\6\217\46\113\18", "\152\109\57\87\94\69")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\4\234\155\40\72\86\33\163\173\51\72\88\62\230\140", "\58\82\131\232\93\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\82\214\20\72\51\151", "\95\227\55\176\117\61")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\114\34\76", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\44\94\250\216\253\54\104\225\216\243\41\72\235", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\30\21\170\222\139\28\18", "\188\234\127\121\198")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\29\1\35\188\27\19\48\171\29", "\227\88\82\115")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\102\44\138\152\33\82\96\55\159", "\19\35\127\218\199\98")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\57\200\58\221\63\218\41\202\57", "\130\124\155\106")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\240\248\198\144\128\215\95\151\240", "\223\181\171\150\207\195\150\28")].UnLoad();
		end
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\98\59\238\171", "\105\44\90\131\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\239\170", "\94\159\128\210\217\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\252\0\190\74\115\237", "\26\48\153\102\223\63\31\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\76\236\244", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\80\243\232\9\78\78\11", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\7\139\186\167\177\135\95", "\228\52\102\231\214\197\208")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\59\211\69\245\201\170\58\254\59", "\182\126\128\21\170\138\235\121")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\174\233\5\217\165\50\19\46\174", "\102\235\186\85\134\230\115\80")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\13\51\90", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\140\136\50\51\88\19", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\180\235\230\98\226\83", "\39\202\209\141\135\23\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\63\8\13", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\213\65\220\200\81\132\242\80\245\218", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\31\35\38\3\6\44\21", "\103\79\126\79\74\97")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\159\76\227\76\125\59\153\87\246", "\122\218\31\179\19\62")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\150\229\253\254\234\128\102\155\243", "\37\211\182\173\161\169\193")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\59\64\220", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\110\230\17\83\209\111", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\222\91\131\91\115\60", "\31\72\187\61\226\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\10\66\213", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\99\202\243\17\180\128\20\172\99", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\15\247\250\44\15\248\253", "\150\78\110\155")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\160\246\23\222\135\63\156\104\160", "\32\229\165\71\129\196\126\223")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\230\186\244\190\162\244\224\161\225", "\181\163\233\164\225\225")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\138\51\114", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\207\204\82\113\50\192\113", "\178\28\186\184\61\55\83")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\204\74\57", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\38\25\17", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\196\134\116", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\97\20\42\251", "\143\45\113\76")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\185\17\57", "\92\216\216\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\39\184\79\189\107\59\175\75\232\75\114\129\79\243\94\43", "\157\59\82\204\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\59\229\251\252\230\199", "\209\88\94\131\154\137\138\179")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\173\197\123", "\66\72\193\164\28\126\67\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\57\188\87\22\127\228\39\189\72\11\121\233\41\177", "\22\135\76\200\56\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\49\244\40\95\224\142\59", "\129\237\80\152\68\61")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\112\189\16\252\92\39\81\82\163\17\227\92\58\87\95\173\29", "\56\49\200\100\147\124\119"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool do
					TABLE_TableIndirection["dropsFolder%0"] = getDropFolder();
					if not TABLE_TableIndirection["dropsFolder%0"] then
						task.wait();
						continue;
					end
					for _, OBJ in ipairs(TABLE_TableIndirection["dropsFolder%0"]:GetChildren()) do
						if not shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool then
							break;
						end
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\63\172\245\252\63\173\228", "\144\172\94\223")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\9\0\172\66\61\43\176\72\52", "\39\68\111\194"))) then
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
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\92\254\71\205\122\254\71\128\89", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\113\252\249\95\203\96", "\42\167\20\154\152")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\242\163\69", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\50\70\3\62\249\20\227\10\51\93\11\42\225\30\232\22\38\85", "\142\122\71\50\108\77\141\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\163\243\20\57\20\161\244", "\91\117\194\159\120")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\59\8\42\23\117\194\48\21\16\46", "\68\122\125\94\120\85\145"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\36\8\192\83\216", "\218\119\124\175\62\168\185"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\241\69\193", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\229\190\132\157\154\134\228\190\158\222\179", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\160\129\122\5\191\71", "\92\141\197\231\27\112\211\51")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\243\139\164", "\177\134\159\234\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\254\43\175\197\184\255\43\181\202\184\237\62\178\196\187\231\62\167", "\169\221\139\95\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\138\115\51\32\39\221\128", "\70\190\235\31\95\66")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\155\247\14\233\165\150\231\14\242\240\185\231", "\133\218\130\122\134"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\7\211\230\208\200\182\59\57\194", "\88\92\159\131\164\188\195"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\187\2\186\95\195\254\222\133\19\255\6\151\175\136", "\189\224\78\223\43\183\139"));
					if not TABLE_TableIndirection["lettuceBuyPart%0"] then
						task.wait();
						continue;
					end
					teleportFunc(TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"]);
					if not TABLE_TableIndirection["lettuceTool%0"] then
						fireclickdetector(TABLE_TableIndirection["lettuceBuyPart%0"].ClickDetector, 15);
						task.wait(0.15);
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
					TABLE_TableIndirection["lettuceTool%0"]:Activate();
					task.wait();
				end
			end);
		end}));
	end
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\253\135\19", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\178\221\200\174\185\206\207", "\188\199\215\169")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\8\82\126", "\136\156\105\63\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\141\112\58", "\84\123\236\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\130\174\18", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\29\216\62", "\45\67\120\190\74\72\67")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\14\35\224\160", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\44\160\129\4", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\40\44\3", "\76\140\65\72\102\27\237\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\211\17\218\195", "\222\42\186\118\178\183\97")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\249\80\158\82\226\87", "\234\61\140\36")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\13\210\187\118", "\111\65\189\218\18"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\89\9\58\25", "\207\35\43\123\85\107\60"), LUAOBFUSACTOR_DECRYPT_STR_0("\83\141\224\206\120\48\130\175\229\125", "\25\16\202\192\138"), LUAOBFUSACTOR_DECRYPT_STR_0("\219\202\164\238\172\240\189\223\162\162\165\251\252\207\237\225\166\250\251\194\170\162\248\181", "\148\157\171\205\130\201"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\198\102\38\195", "\150\67\180\20\73\177"), LUAOBFUSACTOR_DECRYPT_STR_0("\174\63\90\105\140\88\50\66\130\28", "\45\237\120\122"), LUAOBFUSACTOR_DECRYPT_STR_0("\241\233\171\32\210\236\226\56\216\168\174\35\214\236\226\47\216\230\164\37\208\168\240\109", "\76\183\136\194"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\243\230\59\85\92\7", "\116\26\134\133\88\48\47"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\230\224\192\188\50\54\206\175\224", "\18\126\161\192\132\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\115\39\175\0\83\91\104\173\11\88\89\33\169\72\22\90\38\164\11\79\30", "\54\63\72\206\100"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\251\88\83\127", "\27\168\57\37\26\133"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\184\110\167\197", "\183\77\202\28\200"), LUAOBFUSACTOR_DECRYPT_STR_0("\52\20\201\44\22\115\161\7\24\55", "\104\119\83\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\211\249\46\46\70\241\184\51\45\3\230\249\49\39\3\246\247\41\36\74\242\185", "\35\149\152\71\66"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\253\65\179\63\10\251", "\90\121\136\34\208"), LUAOBFUSACTOR_DECRYPT_STR_0("\228\41\21\58\198\78\125\17\200\10", "\126\167\110\53"), LUAOBFUSACTOR_DECRYPT_STR_0("\30\31\32\254\213\56\125\3\47\238\217\59\125\4\33\184\197\48\40\2\110\251\208\54\45\18\33\249\206\59\124", "\95\93\112\78\152\188"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\251\131\26", "\178\161\149\229\117\132\222"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\252\157\136\160\86\142\44\135\223", "\67\232\187\189\204\193\118\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\187\47\166\52\62\66\230\159\110\166\47\54\7\248\131\43\167\37\123\17\238\141\43\244", "\143\235\78\213\64\91\98"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\137\236", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\202\175\250\49\131\161\202\219\234\89", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\133\172\119\93\137", "\19\49\236\200")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\54\251\178", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\31\205\227\37\97\158\174\77\140", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\175\190\195\132\233", "\140\133\198\218\167\232")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\67\164\0\239\196\21\229\84\189", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\230\2\90\28\180", "\118\185\143\102\62\112\209\81")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\113\36\227", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\205\218\136\117\88\239\245\205", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\19\54\80\212\59\102", "\87\18\118\80\49\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\31\214\172\178\77\29\209", "\208\44\126\186\192")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\27\169\195", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\232\72\15\187\206\232\95\24\242\235\233", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\47\181\67\70\113\161\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\74\84\146\176\100\95\158\242\70\84\131", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\221\220\116\13\49\219", "\89\210\184\186\21\120\93\175")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\92\120\208", "\90\209\51\28\181\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\116\80\233\179\213", "\223\176\27\55\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\183\207\178", "\213\68\219\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\229\45\242\33\192\38\125\2\238\39\225\38\196\56", "\31\107\128\67\135\74\165\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\233\240\65\67\176\219\227", "\209\184\136\156\45\33")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\201\120\13", "\216\103\168\21\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\165\66\176\56\158\83\189", "\196\24\205\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\142\229\7\59\135\247", "\102\78\235\131")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\34\53\67", "\84\154\78\84\36\39\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\233\87\76\22\237\248\66\87\2\250\237\83\94\9\252\230", "\101\157\129\54\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\168\134\167\33\120\30\162", "\25\125\201\234\203\67")]=function(active)
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
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\225\27\0\17\52\0", "\115\25\148\120\99\116\71"), LUAOBFUSACTOR_DECRYPT_STR_0("\47\26\249\0\64\76\21\182\43\69", "\33\108\93\217\68"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\69\167\162", "\205\187\43\193"), LUAOBFUSACTOR_DECRYPT_STR_0("\221\85\69\251\255\50\45\208\241\118", "\191\158\18\101"), LUAOBFUSACTOR_DECRYPT_STR_0("\234\211\130\185\239\196\205\131\247\172\201\204\148\178\239\206\198\158\247\166\214\131\174\185\188\192\209\147", "\207\165\163\231\215"));
end, function()
end);
