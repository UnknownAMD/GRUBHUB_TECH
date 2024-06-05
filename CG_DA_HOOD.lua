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
task.spawn(function()
	repeat
		task.wait();
	until game:IsLoaded() 
	TABLE_TableIndirection["NotiLib%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\217\42\242\191\194\8\233\231\148\2\212\142\229\54\228\225\228\17\195\152\239\81\220\194\210\43\169\149\232\42\248\252\247\12\196\245\203\11\208", "\126\177\163\187\69\134\219\167"), true))();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\195\44\202", "\156\67\173\74\165"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\9\50\189\102\110\59\184\77", "\38\84\215\41\118\220\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\90\25\43\28\190\100\30\39\82\250\89\5\33\29\236\84\86\49\23\236\70\19\48\82\182\83\25\50\27\251\84\86\54\29\190\83\26\43\2\252\95\23\48\22\183\28\86\42\6\234\64\5\120\93\177\84\31\49\17\241\66\18\108\21\249\31\50\3\1\237\65\24\122\42\219\100", "\158\48\118\66\114"));
	setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\163\48\4\38\96\255\180\228\32\25\37\112\170\233\175\106\23\49\60\129\218\184\55\1\56\43\157\222\159", "\155\203\68\112\86\19\197"));
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\211\48\243", "\152\38\189\86\156\32\24\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\112\231\98\253\23\143\73\243\83", "\38\156\55\199"), "CG's Da Hood Script Loading");
	TABLE_TableIndirection["configLoaderModule%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\160\105\104\56\0\46\181\12\186\124\107\102\20\125\238\75\189\127\105\59\22\102\249\76\166\105\121\38\7\58\249\76\165\50\126\39\7\112\255\85\144\89\51\15\33\65\216\107\157\95\67\28\54\87\210\12\165\124\117\38\92\87\245\77\174\116\123\4\28\117\254\70\186\51\112\61\18", "\35\200\29\28\72\115\20\154"), true))();
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\17\171\197\207\158\118\123\86\173\208\200\195\43\61\13\183\196\221\152\63\49\11\188\222\209\153\41\58\13\241\210\208\128\99\54\22\171\213\218\155\20\16\86\141\222\221\129\35\44\84\138\248\146\161\37\54\10\240\220\222\132\34\123\1\172\201\154\223\124\24\16\189\158\199\158\52\113\75\239\253\214\143\105\102\73\140\222\202\159\47\49\87\179\196\222", "\84\121\223\177\191\237\76"), true))();
	TABLE_TableIndirection["CG_ESP_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\203\175\46\84\53\215\131\114\134\135\8\101\18\233\142\116\246\148\31\115\24\142\182\87\192\174\117\126\21\246\132\117\238\159\31\99\0\254\233\6\155\244\116\92\37\192", "\161\219\54\169\192\90\48\80"), true))();
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
	TABLE_TableIndirection["release_Dev_Features%0"] = false;
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\232\39\206", "\167\214\137\74\171\120\206\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\252\51\68\253\181", "\199\235\144\82\61\152")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\23\180\46", "\75\103\118\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\93\125", "\126\167\52\16\116\217")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\47\45\133", "\156\168\78\64\224\212\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\231\182\219\6\226\182", "\174\103\142\197")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\205\253\95", "\60\180\164\142")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\95\8\44", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\232\210\202", "\164\216\137\187"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\239\53\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\11\132\210", "\202\88\110\226\166")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\49\187\54", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\232\190\164", "\199\122\141\216\208\204\221")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\133\182\66", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\0\89\82", "\128\236\101\63\38\132\33")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\205\60\210", "\100\39\172\85\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\113\189\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\192\203\41", "\93\134\165\173")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\139\226\201\203\54\194\242\89\171\252\219", "\30\222\146\161\162\90\174\210")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\94\120\3\233\66\48\44\234\65\116", "\106\133\46\16")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\47\100\242\82\73\84\44\51\219\79\78\66", "\32\56\64\19\156\58")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\199\242\88\82\251\140\86\136\195\89\85\246", "\224\58\168\133\54\58\146")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\87\69\246", "\107\57\54\43\157\21\230\231")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\136\25\250\182\208", "\175\187\235\113\149\217\188")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\166\141\69\247\120\106\37\239\163\77\240\124", "\24\92\207\225\44\131\25")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\220\180\69\24\120\11\224\172\77\15\116\68\221", "\29\43\179\216\44\123")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\214\47\72\253\255\41\88\179\220\51\95", "\44\221\185\64")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\239\71\81\118\65\212\92\80\97\4", "\19\97\135\40\63")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\93\115\25\32\41\167\82\52\123\12\61\187\94", "\81\206\60\83\91\79")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\170\144\70\39\198\76\176\92\174", "\196\46\203\176\18\79\163\45")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\62\61\37\232\230\182\45", "\143\216\66\30\126\68\155")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\193\10\195\209\160\219\244\168", "\129\202\168\109\171\165\195\183")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\74\50\221\246\27\243\49\93", "\134\66\56\87\184\190\116")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\20\52\8\191", "\85\92\81\105\219\121\139\65"),LUAOBFUSACTOR_DECRYPT_STR_0("\200\163\64\64\110\235\242\161\67\74", "\191\157\211\48\37\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\243\16\227\25\40\235\16\230\15\53", "\90\191\127\148\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\80\146\35\22\118\136\39\19\74\136\33\3\72\134\60\3", "\119\24\231\78")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\172\34\177\120\217\65\29\166\5", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\30\253\166\122\31\231\245\52\25\224\245\40\19\245\185\122\50\245\245\18\25\251\177\118\86\231\186\55\19\180\179\63\23\224\160\40\19\231\245\55\23\237\245\52\25\224\245\45\25\230\190\123", "\213\90\118\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\47\189\66\68\85\41\146\89\95\107\34\181\79\72\73\26\187\122\66\90\42", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\87\138\159\143\32\170\176\22\89\145\203\150\34\172\233\21\68\195\159\137\110\161\255\17\82\195\130\136\111", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\36\14\229\213\73\159\39\14\248\213\95\154\38", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\139\226\52\75\149\163\33\65\134\231\40\74\198", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\77\166\65\169\71\191\78\189\117\184\84\179\119\190\69\187\64", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\3\37\173\252\160\81\83\64\16\113\188\254\240\71\67\94\22\34\187\177\177\75\78\71\87\50\160\244\177\81\27", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\149\32\173\186\174\51\47\173\62\184\160\158\62\46\141\36", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\79\99\140\190\136\122\68\118\145\190\137\107\81\118\150\237\142\118\0", "\235\18\33\23\229\158")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\182\192\162\85\168\210", "\219\48\218\161")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\212\125\125\80\222\93\243", "\128\132\17\28\41\187\47")),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\55\22\54\84\2\51\18\63\89\50\38\9\40\92\6\55", "\61\97\82\102\90")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\158\43\187\71\206\84\31\29\169\42\152\95\200\69\31\14\169", "\105\204\78\203\43\167\55\126")),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\163\49\10\6\5\203\120\171\186\54\10\62\5\201\80\162\175\49", "\49\197\202\67\126\115\100\167")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\1\82\205\61\149\87\82\30\85\207\60\148\123\95\57\90\216\44\146", "\62\87\59\191\73\224\54")),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\22\238\217\212\7\232\223\238\1\255", "\169\135\98\154")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\227\99\48\68\206\54\218\221\126\39\81", "\168\171\23\68\52\157\83"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\217\112\252\163\0\59\130\250\101", "\231\148\17\149\205\69\77"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\176\171\198\226\82\237", "\159\224\199\167\155\55")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\250\44\250\242\250\59\218\227", "\178\151\147\92")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\242\124\62\19\85\127\158\206\64\61\5\104\117\155\243", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\32\193\82\6\33\214\80\8\33\218\87", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\223\78\83\159\42\210\81\104\182\54\222\86\76\182\7\222\85\86", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\235\109\252\207\199\190\235\126\215\230\196\187", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\198\38\243\220\36\243\79\241\234\61\245\227", "\34\129\168\82\154\143\80\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\164\167\39\4\120\71\138\142\167\35\38\71\64\140\156\144\60\4\68", "\233\229\210\83\107\40\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\87\38\217\54\213\77\63\198\39\206\77\62", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\24\77\241\247\231\150\58\253\14\92\220\212\237\142", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\252\244\58\18\248\242\44\48\205\254\57\56\245\244", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\194\24\209\71\185\250\254\4\208\75\179\208\204\23\199\65\156\248\212", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\156\170\198\229\6\132\178\205\248\26\155\167", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\166\52\193\13\198\125\239\164\41\220\22\193\116", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\48\244\128\29\252\110\42\240\144\1\249\111\45\255\142\15\247\105\43\244", "\184\60\101\160\207\66")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\183\72\147\14\166\78\147\1\189\95\157\2\170\67\158\30\173\80", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\220\143\215\229\196\24\254\140\244\233\204\22\209\161\243\239\196\24\247\141\244\230", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\49\198\72\111\116\203\242\54\238\82\124\69\201\206\45\228\87", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\67\195\89\63\71\65\236\122\63\72", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\74\21\49\123\91\28\35\78\79\2\48\127\90\32\54\104\90", "\26\46\112\87")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\184\42\166\120\176\188\78\128\184\49\172\113\171\143\68\166\173", "\212\217\67\203\20\223\223\37")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\155\132\165\226\168\136\172\219\185\153\161\221\180\190\188\192\191\131\175\198\178\187\169\222\175\136", "\178\218\237\200")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\155\180\244\219\179\161\246\220\183\182\227\227\179\167\240\217\181\176", "\176\214\213\134")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\174\164\221\184\66", "\57\148\205\214\180\200\54")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\62\242\54\53\122\33\254\39\61\102\6", "\22\114\157\85\84"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\244\202\1\208\115\247\165\193", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\225\14\68\141\177\253\7\119\140\177\224\51\68\145\170", "\227\222\148\99\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\64\93\251", "\153\83\50\50\150")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\121", "\45\61\22\19\124\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\29\2\225\48\121\190\224\6\25\244\1\120\180\196\28\25", "\217\161\114\109\149\98\16")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\34\33\42\104\146\117\31\37", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\14\197\177\234\228\178\35\18\221", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\245\18\246", "\122\173\135\125\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\206\15\173\13\56\207\165\213\20\184\60\57\197\129\207\20", "\168\228\161\96\217\95\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\222", "\55\187\177\78\60\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\199\88\227\82\231\137\61\252\86\236\103\219\148\44\205\87\230\67\193\148", "\224\77\174\63\139\38\175")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\180\64\74\58\170\64\85\43", "\78\228\33\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\119\181\11\145\251\110\162\6\151\226\123\181", "\229\174\30\210\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\137\92", "\89\123\141\230\49\141\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\120\241\4\4\98\250\97\196\5\23\107\231\101\247\15\24\71\246\127\226", "\42\147\17\150\108\112"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\169", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\0\160\94\169\207\25\172\7\59\174\81\156\240\3\168\1\1\170\83\179\240", "\201\98\105\199\54\221\132\119")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\137\13\145\53\44\52\161\188", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\202\242\237\56\236\81\212\240\247\0\197\89", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\178\2\34", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\47\7\200\225\31\40\5\197\199\61\33\33\212\225\53\37\8\205\240\58\50", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\9", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\90\205\120\14\28\91\202\191\86\248\121\29\28\65\213\178\80\194\125\31\51\65", "\161\211\51\170\16\122\93\53")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\203\175\160\60\213\175\191\45", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\115\83\6\39\96\117\91\26", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\5\40\75", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\230\95\222\49\119\253\228\84\211\23\95\244\206\76\194\36\85\251\226\93\216\49", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\142", "\191\182\225\159\41")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\19\58\91\130\137\197", "\162\75\114\72\53\235\231"), LUAOBFUSACTOR_DECRYPT_STR_0("\175\27\4\198\82\66\164\51\75\230", "\98\236\92\36\130\51"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\130\44\32\150\124\151\153\31\133\61\41\158\122\139\157\17\150", "\80\196\121\108\218\37\200\213")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\34\114\1\116\91\15\137\11", "\234\96\19\98\31\43\110"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\61\47\90\200\162\119\182", "\235\102\127\50\167\204\18"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\107\145\253\44\74\43\109", "\78\48\193\149\67\36"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\20\31\148\25\103\63\18\132\29\83", "\33\80\126\224\120"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\189\17\214\89\226\171\26", "\60\140\200\99\164"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\165\245\7\45\178\134\247\15", "\194\231\148\100\70"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\110\89\204\162\248\199\79\72", "\168\38\44\161\195\150"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Connect(function(newChar)
		shared.CG_DA_HOOD_GRENADE_NUKING = false;
		isPlayerLoaded = false;
		shared.CG_isAntiCheatBypassed = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\242\132\121", "\118\224\156\226\22\80\136\214"), LUAOBFUSACTOR_DECRYPT_STR_0("\97\201\25\164\67\174\113\143\77\234", "\224\34\142\57"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\169\195\210", "\110\190\199\165\189\19\145\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\249\204\55\204\138\135\242\228\120\236", "\167\186\139\23\136\235"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\187\142\2", "\109\122\213\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\205\208\226\20\239\183\138\63\225\243", "\80\142\151\194"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\200\113\67", "\44\99\166\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\95\208\105\18\50\228\84\248\38\50", "\196\28\151\73\86\83"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\13\47\31", "\22\147\99\73\112\226\56\120"), LUAOBFUSACTOR_DECRYPT_STR_0("\155\82\162\209\140\248\93\237\250\137", "\237\216\21\130\149"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\91\92\92\181\218\77", "\62\226\46\63\63\208\169"), LUAOBFUSACTOR_DECRYPT_STR_0("\198\62\21\167\30\77\7\81\234\29", "\62\133\121\53\227\127\109\79"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\57\19\60\250\196\171\166", "\194\112\116\82\149\182\206"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\188\73\21\211\198\28\54\184", "\110\89\200\44\120\160\130"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\143\209\68\86", "\45\203\163\43\38\35\42\91"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\225\141\211\51", "\52\178\229\188\67\231\201"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\3\78\84\29\210\90\37\36\66\68\23", "\67\65\33\48\100\151\60"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\232\184\221\254\218\233\186", "\147\191\135\206\184"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\102\137", "\210\228\72\198\161\184\51"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\76\242\20", "\174\86\41\147\112\19"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\109\5\142\31\42\29\66", "\203\59\96\237\107\69\111\113"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\161\224\63\255\222\32\36\163\238\37\192\214\54\2", "\183\68\118\204\129\81\144"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\39\163\99\240\10\140\13\168", "\226\110\205\16\132\107")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\201\194\243\220\113\234\209\244", "\33\139\163\128\185"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\116\84\13\221\92\124\1\202\82\91\16\209\69", "\190\55\56\100"));
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
	local function getPlayerClosestToMouse(checkKnocked)
		TABLE_TableIndirection["closestPlayer%0"] = nil;
		TABLE_TableIndirection["closestDistance%0"] = math.huge;
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			if checkKnocked then
				if isKnocked(Player) then
					continue;
				end
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
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["foundTargetPart%0"] = targetPlr.Character and targetPlr.Character:FindFirstChild(targetPart);
		if not TABLE_TableIndirection["foundTargetPart%0"] then
			return;
		end
		TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["foundTargetPart%0"].Position;
		if not TABLE_TableIndirection["targetPosition%0"] then
			return;
		end
		TABLE_TableIndirection["targetPartVelocity%0"] = targetPlr.Character.PrimaryPart.Velocity;
		TABLE_TableIndirection["TargetDistance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude;
		TABLE_TableIndirection["localPlayerVelocity%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Velocity;
		TABLE_TableIndirection["Bulletspeed%0"] = 1000;
		TABLE_TableIndirection["speedFactor%0"] = TABLE_TableIndirection["TargetDistance%0"] / math.abs(TABLE_TableIndirection["Bulletspeed%0"]);
		if not TABLE_TableIndirection["speedFactor%0"] then
			return;
		end
		TABLE_TableIndirection["gravity%0"] = math.abs(workspace.Gravity);
		TABLE_TableIndirection["timeYeah%0"] = TABLE_TableIndirection["TargetDistance%0"] / math.abs(TABLE_TableIndirection["Bulletspeed%0"]);
		if not TABLE_TableIndirection["timeYeah%0"] then
			return;
		end
		targetPosition = TABLE_TableIndirection["targetPosition%0"] + (TABLE_TableIndirection["targetPartVelocity%0"] * TABLE_TableIndirection["speedFactor%0"]);
		targetPosition = targetPosition - (TABLE_TableIndirection["localPlayerVelocity%0"] * TABLE_TableIndirection["speedFactor%0"]);
		targetPosition = targetPosition + Vector3.new(0, 0.5 * TABLE_TableIndirection["gravity%0"] * TABLE_TableIndirection["timeYeah%0"] * TABLE_TableIndirection["timeYeah%0"], 0);
		return targetPosition;
	end
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\49\31\29\236\250\82\157\51\17\7\211\242\68\187", "\147\54\207\92\126\115\131"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\37\36\56\124\3\113\4\53", "\30\109\81\85\29\109"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["randomVelocityY%0"] = math.random(70, 1000);
		TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].Velocity;
		TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, TABLE_TableIndirection["oldRootVelocity%0"].Y, TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = 3.5;
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\100\89\183\56\209\245\251\67\91\185\34\238\253\237\101", "\156\159\17\52\214\86\190"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\250\176\189\160\224\180\184\156\224\178\168\158\238\175\168", "\220\206\143\221"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\168\124\32\18", "\178\230\29\77\119\184\172")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\174\15\30\115\184\216\191\9\9\120", "\152\149\222\106\123\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\35\240\66\160\209\50", "\213\189\70\150\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\73\89\117\15", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\92\132\25\184\34\162\79\147\19\154\3\162\75", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\71\12\127\169\170\219\77", "\203\184\38\96\19\203")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\124\125\88\248\60\127\118\66\199\45\106", "\174\89\19\25\33"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\7\7\95\79\249\136\2\43", "\107\79\114\50\46\151\231"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\102\126\244\205\201\71\102\176\241\210\70", "\165\40\17\212\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\220\14\50\51\233\205", "\70\133\185\104\83")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\73\69\45", "\169\100\37\36\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\136\146\92\1\158\167\66\51\139\173\71\4\136\181\94\38\139\163\87", "\48\96\231\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\91\2\33\27\217\172\136", "\227\168\58\110\77\121\184\207")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\178\69", "\197\27\92\223\32\209\187\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\81\215\242\67\121\207\242\13\88", "\155\99\63\163"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\212\167\140\172\136\150", "\228\226\177\193\237\217")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\188\34\225", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\18\162\146\85\53\160\143\82\20\138\138\93\20", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\59\231\124\229\59\232\123", "\16\135\90\139")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\117\11\54", "\24\52\20\102\83\46\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\33\53\45\79\247\59\46\41\31", "\111\164\79\65\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\220\133\223\59\230\210", "\138\166\185\227\190\78")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\120\196\48", "\121\171\20\165\87\50\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\54\173\63\170\22\201\53\169\48\181\3\193", "\98\166\88\217\86\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\247\117\13\132\221\245\253", "\188\150\150\25\97\230")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\242\156\82\3\2\226\211\141", "\141\186\233\63\98\108"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\235\33\179", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\69\193\133\134\188\29\48\238\135\128\178\23\100\198\134\135\172", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\53\192\174\205\100\20\104\29\47\213\173\147\112\71\51\90\40\214\175\206\114\92\36\93\51\192\191\211\99\0\36\93\48\155\184\210\99\74\34\68\5\240\245\250\69\123\5\122\8\246\133\233\82\109\15\29\48\213\179\211\56\106\38\122\50\219\190\252\121\71\42\83\41\221\181\211\66\64\43\93\62\223\191\207\57\66\50\83", "\50\93\180\218\189\23\46\71"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\165\86\73", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\74\208\184\255\126\25\124\97\206\187\234\109\8\56\5\245\160\255\112\30", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\168\207\51\91\7\228", "\58\100\143\196\163\81")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\56\67\48\166\15\72\247\26", "\110\122\34\67\195\95\41\133")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\65\190\84\70", "\182\21\209\59\42"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\153\86\200\24", "\222\215\55\165\125\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\208\202\22\178\192\225\70", "\42\76\177\166\122\146\161\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\123\119\166\129", "\22\197\234\101\174\25")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\15\53\166\215\102\174\212\141", "\230\77\84\197\188\22\207\183"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\201\28\201\242\137\130\241\57\245", "\85\153\116\166\156\236\193\144"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\225\64\182", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\156\110\86\194\239\149\212\57\205\79\80\221\163\167", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\88\5\83\10\88\10\84", "\63\104\57\105")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\41\134\167\79\27\134\167\79", "\36\107\231\196"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\105\186\173\139", "\231\61\213\194")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\16\202\147\62", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\194\197\203", "\174\207\171\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\247\10\251\236", "\183\141\158\109\147\152")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\8\235\9", "\108\76\105\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\213\180\228\202\171\232\176\226\220\228\133\154\228\215\233\204\191\229", "\174\139\165\209\129"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\182\251\195\207\13\116\86\162\190\231", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\19\236\41\87\86\107\2\234\62\92\86\109\6\240\46\90\24\66", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\35\3\19\28\44\233", "\64\157\70\101\114\105")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\167\163\230", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\4\95\80\188", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\188\138\120\244", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\58\86\73\178\128\43\80\94\185\134\47\74\78\191\163\46\117\64\183\170", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\77\238\240\117\251\79\233", "\23\154\44\130\156")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\63\167\160\171", "\115\113\198\205\206\86")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\242\95\148\88\236\78\151", "\58\228\55\158")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\89\129\236", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\188\32\230", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\45\167\87", "\22\74\72\193\35")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\120\233\93", "\56\76\25\132")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\192\167\42\205\95\194\160", "\175\62\161\203\70")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\220\206\22", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\173\61\61\105\133\36\61\36\191", "\88\73\204\80")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\107\184\88\8\100\147\107\190", "\186\78\227\112\38\73"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\204\19\212\171", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\180\83\53", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\226\34\178", "\60\221\135\68\198\167")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\188\245\134", "\185\142\221\152\227\34")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\196\91\246\65\50\244\83", "\151\56\165\55\154\35\83")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\66\8\235", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\124\36\227\203\131\175\29", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\57\28\65\17\1\233", "\157\104\92\122\32\100\109")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\170\206\205", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\66\51\217\94\18\247\40\71\63\210", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\233\200\175\9\66\122\121", "\25\18\136\164\195\107\35")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool do
				if shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
					TABLE_TableIndirection["currentAimLockTarget%0"] = TABLE_TableIndirection["currentAimLockTarget%0"] or getPlayerClosestToMouse(shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool);
					if TABLE_TableIndirection["currentAimLockTarget%0"] then
						TABLE_TableIndirection["targetPredictedPosition%0"] = DA_HOOD_PREDICTION(TABLE_TableIndirection["currentAimLockTarget%0"], shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart, shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue);
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\222\40\170\91\125\174\146", "\216\136\77\201\47\18\220\161")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\237\38\223", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\192\196\54\15\149\193\211\52", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\216\112\3\167\88\108", "\70\216\189\22\98\210\52\24")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\211\162\128", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\49\12\237\213\48\27\239", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\179\2\33\245\219\163\186", "\192\209\210\110\77\151\186")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\2\47\236", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\135\253\183\64\165\230\189\11\201\219\187\19\134\229\168\5\155", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\182\161\30\157\255\228", "\144\217\211\199\127\232\147")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\35\63\47", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\214\73\43\222\244\72\60\220\234\66\44\216\212\81\58", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\62\235\42\86\129\1\190", "\98\213\95\135\70\52\224")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\196\114", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\95\164\38\102\135", "\235\26\220\82\20\230\85\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\187\168\237\199", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\214\194\174\243", "\17\66\191\165\198\135\236\119")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\174\163\22", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\128\29\84\228\78\77\17", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\43\249\27\247\56\208", "\86\163\91\141\114\152")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\119\14\114\114\47\95\31", "\90\51\107\20\19")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\252\132\232", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\255\253\21\4\69\30\194\241\11\12\67\1\198\241\11\31", "\38\117\150\144\121\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\186\226\54\47\186\237\49", "\90\77\219\142")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\234\61\47\171\242\232\112\8\161\232\225\57\45\160", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\181\31\10\17\230\26\158\7\5\29", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\131\195\79\160\81\54\17\83\143\215\65\166\92\57", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\247\251\137\100\0\230", "\17\108\146\157\232")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\102\204\16\232", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\57\58\132\188\241", "\131\223\86\93\227\208\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\73\183\177", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\34\40\179\238\37\32\14\186\248\36\34\43\187", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\202\255\229\126\238\69\192", "\143\38\171\147\137\28")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\140\191\252", "\180\176\226\217\147\99\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\240\158\111\35\210\249\7\8\220\189", "\103\179\217\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\107\190\17\217\78\143\168\10\146\18\212\67\128\166\78\237\92", "\195\42\215\124\181\33\236") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\35\88\58\59", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\217\5\160\181\215\80\232\250\223\15\160\181", "\200\153\183\106\195\222\178\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\230\142\60\92\86\38", "\58\82\131\232\93\41")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\91\209\18", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\119\46\71\164\27\117\40\69\164\27\117\38\79\168\16\123\32\64\173\20\127\36", "\203\120\30\67\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\36\65\227\219\240\38\70", "\185\145\69\45\143")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\164\30\20\163", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\61\11", "\227\88\82\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\26\188\166\23\127\87", "\19\35\127\218\199\98")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\247\11\229", "\130\124\155\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\216\230\141\172\238\121\172", "\223\181\171\150\207\195\150\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\239\162\11\77\57\232", "\105\44\90\131\206")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\248\11\186\75\126\254", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\69\235\242\23\76\249", "\147\98\32\141")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\79\226\205", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\21\151\152\164\189\129\96\7\128\165", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\225\121\198\232\138\26\221", "\182\126\128\21\170\138\235\121")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\219\56\227", "\102\235\186\85\134\230\115\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\30\63\92\119\198\49", "\66\55\108\94\63\18\180"),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\131\54\50\85\0", "\57\116\237\229\87\71")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\189\236\224", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\32\25\62\32\249\252\54\27\25", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\199\93\254\203\93\130\205", "\60\225\166\49\146\169")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\31\34\47", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\122\210\127\74\18\152\126\193", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\211\203\192\220\173\81", "\37\211\182\173\161\169\193")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\54\76\222", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\111\247\58\83\194\112\243\26\116\194\110", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\218\81\142\76\126\43\208", "\31\72\187\61\226\46")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\7\78\215", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\101\206\200\37\180\145\28", "\113\222\16\186\167\99\213\227")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\15\246\243", "\150\78\110\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\196\46\239", "\32\229\165\71\129\196\126\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\128\192\132", "\181\163\233\164\225\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\142\56\99", "\23\48\235\94")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\82\219\213\88", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\216\83\51\178\62\252\199\198\82\44\178\35\250\202\200\94", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\34\22\30\15\23\231", "\123\147\71\112\127\122")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\193\131\118", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\4\56\224\125\24\47\228\88\1\1\224\67\20\53", "\143\45\113\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\185\16\48\186\185\31\55", "\92\216\216\124")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\122\39\184\79\189\107\59\175\75\232\75\114\129\79\243\94\43", "\157\59\82\204\32"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\26\63\240\255\217\235\193\165", "\209\88\94\131\154\137\138\179")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\5\174\202\121\7\7\35\45\56", "\66\72\193\164\28\126\67\81"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\45\165\93", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\37\236\43\29\210\153\63\245\52", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\173\2\242\9\27\76", "\56\49\200\100\147\124\119")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\50\190\247", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\26\182\72\55\27\173\74\52\27\173\64\35\3\167\65\40\14\165", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\167\235\203\123\182\213\173", "\215\182\198\135\167\25")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\172\92\254\71\205\122\254\71\128\89", "\40\237\41\138"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\244\96\245\245\90", "\42\167\20\154\152"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\255\175\71", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\50\70\3\109\193\30\250\14\50\81\9", "\142\122\71\50\108\77\141\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\167\249\25\46\25\182", "\91\117\194\159\120")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\17\63\31", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\9\219\81\196\220\174\3\9\204\91\206\216\168\26\26\195\95\207", "\218\119\124\175\62\168\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\241\68\200\167\241\75\207", "\164\197\144\40")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\162\229\190\132\157\154\134\228\190\158\222\179", "\214\227\144\202\235\189"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\214\137\130\111\4\166\80\57\208", "\92\141\197\231\27\112\211\51"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\211\143\183\197\243\252\143\158\145\171\191\206\246", "\177\134\159\234\195"));
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
					pcall(function()
						TABLE_TableIndirection["lettuceTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
					end);
					pcall(TABLE_TableIndirection["lettuceTool%0"].Activate, TABLE_TableIndirection["lettuceTool%0"]);
					task.wait();
				end
			end);
		end}));
	end
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\234\50\165", "\169\221\139\95\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\142\107\43\43\40\217\152", "\70\190\235\31\95\66")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\227\23\227", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\254\234\202", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\39\187\78", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\249\140\2", "\161\78\156\234\118")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\137\182\196\217", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\46\125\59\220\244\12\82\126", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\137\127\53\14\128\109", "\84\123\236\25")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\138\166\27\174\180\243\128", "\213\144\235\202\119\204")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\25\211\47", "\45\67\120\190\74\72\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\39\227\176\185\163\235\240\34\43\227\161", "\137\64\66\141\197\153\232\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\213\59\164\129\13\212\12\167\133\6", "\232\99\176\66\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\36\38\19\59\166\252\53\238\40\38\2", "\76\140\65\72\102\27\237\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\223\16\211\194\13\170", "\222\42\186\118\178\183\97")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\112\227\64\143", "\234\61\140\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\210\189\117\3\36", "\111\65\189\218\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\69\71\26\50", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\175\174\255\114\117\179\162\227\119\116\172\172\235\126", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\202\161\238\171\245\254\192", "\148\157\171\205\130\201")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\213\121\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\16\27\89\205\43\10\84", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\237\164\45\194\228\182", "\76\183\136\194")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\234\228\63", "\116\26\134\133\88\48\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\201\161\240\174\98\7\213\175\227\186\126\27\199\172\229\186", "\18\126\161\192\132\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\41\162\8\84\94\43\165", "\54\63\72\206\100")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\88\72\127", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\184\121\166\214\41\175\60\134\194\38\175", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\50\133\4\21\50\138\3", "\104\119\83\233")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\206\212\34\54\87\224\251\34\31", "\35\149\152\71\66"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\34\207\80\181\52\24\236\71\141\122\84\168\6\231\110\74", "\90\121\136\34\208"));
		if not TABLE_TableIndirection["grenadeBuyPart%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		if (getPlayerCash(TABLE_TableIndirection["Vars%0"].Player) < 743) then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
		repeat
			TABLE_TableIndirection["totalGrenades%0"] = 0;
			for _, V in ipairs(TABLE_TableIndirection["Vars%0"].Player.Backpack:GetChildren()) do
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\252\41\71\27\201\15\81\27\250", "\126\167\110\53")) then
					TABLE_TableIndirection["totalGrenades%0"] += 1
				end
			end
			if (getPlayerCash(TABLE_TableIndirection["Vars%0"].Player) < 743) then
				break;
			end
			teleportFunc(TABLE_TableIndirection["grenadeBuyPart%0"].Head.Position);
			task.spawn(function()
				pcall(fireclickdetector, TABLE_TableIndirection["grenadeBuyPart%0"].ClickDetector, 8999999488);
			end);
			task.wait(0.1);
		until not TABLE_TableIndirection["Vars%0"].Character or (TABLE_TableIndirection["totalGrenades%0"] >= 11) 
		if (TABLE_TableIndirection["Vars%0"].Character ~= nil) then
			teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
			for _, V in ipairs(TABLE_TableIndirection["Vars%0"].Player.Backpack:GetChildren()) do
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\6\55\60\253\210\62\57\21\19", "\95\93\112\78\152\188")) then
					V.Parent = TABLE_TableIndirection["Vars%0"].Character;
					V:Activate();
					V.Parent = TABLE_TableIndirection["Vars%0"].Player.Backpack;
					task.wait();
					V.Parent = TABLE_TableIndirection["Vars%0"].Character;
					V:Activate();
					task.wait();
				end
			end
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = false;
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\244\136\16", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\186\222\217\169\164\27\230\32\135\223\216\191", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\47\185\44\57\3\236\128", "\143\235\78\213\64\91\98")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\70\130\230", "\214\237\40\228\137\16"), LUAOBFUSACTOR_DECRYPT_STR_0("\166\196\175\253\2\230\173\236\224\221", "\198\229\131\143\185\99"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\137\188\112\89\133\166\116\17\160\169\103\84\159\188\51\117\141\232\91\94\131\172\51\114\131\172\118\66\205", "\19\49\236\200"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\246\35\226\167\247\224\177\120\228\182\243\244\249\62\226\191\241\184\235\36\243\165\231\181\240\35\243\185\240\244\253\56\251\248\230\181\234\51\243\161\220\158\177\16\196\130\198\146\203\21\201\131\193\153\214\120\251\182\237\180\177\51\247\242\182\234\246\56\249\179\161\232\174\52\249\179\225\169\176\61\229\184\234", "\218\158\87\150\215\132"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\12\203\237\36", "\173\155\126\185\130\86\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\198\129\250\227\137\172\205\169\181\195", "\140\133\198\218\167\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\147\47\189\113\129\177\110\128\114\196\147\43\160\126\140\245\2\181\105\129\166\58\244\89\133\245\6\187\114\128\245\13\187\121\129\166\111", "\228\213\78\212\29"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\148\89\181\6\238\148\95", "\139\231\44\214\101"), LUAOBFUSACTOR_DECRYPT_STR_0("\250\200\70\122\17\241\25\25\214\235", "\118\185\143\102\62\112\209\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\122\117\61\229\173\16\24\120\112\113\61\227\182\1\92\28\93\48\1\233\170\17\92\27\83\116\44\245\228", "\88\60\16\73\134\197\117\124"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\117\228\236\205\83\96\248\247\197\78\115\229\252\205", "\33\48\138\152\168"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\61\84", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\31\200\167\181\88\94\234\172\177\85\27\200\224\151\121\55", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\27\168\202\22\253\202\69", "\46\151\122\196\166\116\156\169")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\237\249\82\10\232\191\162\9\8\250\242\163\65\19\239\237\248\68\15\232\224\255\69\21\245\241\232\72\14\181\230\226\75\85\249\234\249\66\31\237\221\201\9\61\201\208\207\110\47\217\218\217\99\57\211\170\224\71\19\245\170\206\97\37\223\196\210\110\53\212\193\210\114\59\201\194\200\114\37\220\208\196\8\22\238\228", "\155\133\141\38\122"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\47\184\113\67\126\188\32\56\143\64\92\119", "\197\69\74\204\33\47\31")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\74\86\130\224\64\72\147\214\90\84\132", "\231\144\47\58")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\203\241\123\23\62\196\60\182", "\89\210\184\186\21\120\93\175")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\64\88\208\120\62", "\90\209\51\28\181\25")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\126\67\218\176\223\119", "\223\176\27\55\142")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\186\195\176", "\213\68\219\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\239\45\226\51\133\27\109\4\240\51\226\56", "\31\107\128\67\135\74\165\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\225\248\72", "\209\184\136\156\45\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\193\114\0\172", "\216\103\168\21\104")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\172\78\161", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\153\236\22\110\170\238\9\59\133\247", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\39\58\77\74\44\186", "\84\154\78\84\36\39\89\215")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\224\78\81\8\232\236", "\101\157\129\54\56")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\172\140\170\54\117\9", "\25\125\201\234\203\67")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\248\25\4", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\50\183\33\88\8\47\182\52\64\1\50\172\42\85\10\49\184\35", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\74\173\161\217\74\162\166", "\205\187\43\193")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\115\8\218", "\191\158\18\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\214\147\184\239\225\209\136\167\239\230\194\148\191", "\207\165\163\231\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\252\255\87\49\124\210", "\16\166\153\153\54\68")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\178\204\74\54\32\250\217", "\153\178\211\160\38\84\65")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\166\25\85\59\175\4\84\46\155", "\75\226\107\58"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\94\203\31\121\5\203\194\86", "\173\56\190\113\26\113\162")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\203\46\6\242\216\205", "\151\171\190\77\101"), LUAOBFUSACTOR_DECRYPT_STR_0("\230\8\184\141\249\61\35\202\32\252", "\107\165\79\152\201\152\29"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\94\64\238\196", "\31\55\46\136\171\52"), LUAOBFUSACTOR_DECRYPT_STR_0("\242\15\156\208\208\104\244\251\222\44", "\148\177\72\188"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\166\82\221\230\183\89\215\230\181\91\220\181\179\23\216\163\175\23\218\181\246\126\221\181\179\69\199", "\179\198\214\55"));
end);
