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
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\242\124\62\19\85\127\158\206\64\61\5\104\117\155\243", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\32\193\82\6\33\214\80\8\33\218\87", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\223\78\83\159\42\210\81\104\182\54\222\86\76\182\7\222\85\86", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\235\109\252\207\199\190\235\126\215\230\196\187", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\198\38\243\220\36\243\79\241\234\61\245\227", "\34\129\168\82\154\143\80\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\164\167\39\4\120\71\138\142\167\35\38\71\64\140\156\144\60\4\68", "\233\229\210\83\107\40\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\87\38\217\54\213\77\63\198\39\206\77\62", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\24\77\241\247\231\150\58\253\14\92\220\212\237\142", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\252\244\58\18\248\242\44\48\205\254\57\56\245\244", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\194\24\209\71\185\250\254\4\208\75\179\208\204\23\199\65\156\248\212", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\3\157\184\199\251\25\135\180\215\244\20\150\167\215\254\10\150\164\221\246", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\169\55\202\6\221\104\251\190\52\209\22\194", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\34\226\144\22\240\121\40\229\144\0\247\115\41", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\183\72\147\14\166\78\147\1\189\95\157\2\170\67\157\28\173\73\146\5", "\220\81\226\28")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\224\182\212\213\227\33\250\178\196\201\230\32\253\189\217\197\232\63", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\43\234\112\116\114\205\201\44\232\95\112\116\194\193\42\226\95\112\83\201\237\46", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\89\239\97\36\65\71\222\97\57\74\77\250\122\28\75\73\197", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\25\58\86\65\19\60\88\65\31\59", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\189\38\173\117\170\179\81\128\184\49\172\113\171\143\68\166\173", "\212\217\67\203\20\223\223\37")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\187\132\165\222\181\142\163\230\187\159\175\215\174\189\169\192\174", "\178\218\237\200")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\151\188\235\224\164\176\226\217\181\161\239\223\184\134\242\194\179\187\225\196\190\131\231\220\163\176", "\176\214\213\134")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\217\172\164\223\173\66\73\248\172\181\209\155\83\75\226\164\181\209", "\57\148\205\214\180\200\54")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\33\254\39\61\102\6", "\22\114\157\85\84")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\232\196\16\197\81\197\171\214\194\3\208", "\200\164\171\115\164\61\150"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\142\245\17\81\173\191\249\6", "\227\222\148\99\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\71\95\247\247\60\91\86\196\246\60\70\98\247\235\39", "\153\83\50\50\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\100\124\17", "\45\61\22\19\124\19\203")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\29", "\217\161\114\109\149\98\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\47\55\104\142\125\21\1\44\104\189\119\26\45\61\114\168", "\20\114\64\88\28\220")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\1\0\192\160\214\209\176\52", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\232\10\254\8\249\232\15\232\21", "\122\173\135\125\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\211\15\180", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\222\33\72\29\94\220\240\58\72\46\84\211\220\43\82\59", "\55\187\177\78\60\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\193", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\72\95\38\144\105\81\62\182\72\95\15\144\85\89\45\140\76\93\32\144", "\78\228\33\56")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\254\127\160\23\171\207\115\183", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\228\129\89\249\8\41\11\232\148\125\232\58", "\89\123\141\230\49\141\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\249\1", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\175\42\119\243\192\6\182\31\118\224\201\27\178\44\124\239\229\10\168\57", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\6", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\5\132\41\22\30\162\188\9\177\40\5\20\184\173\13\128\41\15\48\162\173", "\204\217\108\227\65\98\85")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\110\194\231\241\2\193\83\198", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\169\10\39\215\250\175\26\42\209\250\165\10", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\52\15\205", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\15\10\229\44\45\3\232\61\52\4\234\25\18\25\236\59\14\0\232\54\18", "\141\88\102\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\92", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\167\181\32\239\143\188\35\247\171\128\33\252\143\166\60\250\173\186\37\254\160\166", "\72\155\206\210")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\118\123\70\26\29\71\119\81", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\30\32\78\76\49\40\73\76", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\253\87\219", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\136\248\65\203\247\143\244\69\218\228\136\248\104\203\194\128\252\65\210\211\143\235", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\29", "\162\75\114\72\53\235\231")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\61\86\236\90\12\139", "\98\236\92\36\130\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\62\76\158\68\232\157\63\171\29", "\80\196\121\108\218\37\200\213"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\70\46\83\114\49\166\47\82\38\90\111\49\169\40\82\48", "\234\96\19\98\31\43\110")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\30\81\204\188\115\136\13", "\235\102\127\50\167\204\18"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\107\145\253\44\74\43\109", "\78\48\193\149\67\36"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\11\46\136\23\79\53\35", "\33\80\126\224\120"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\169\23\197\122\227\164\7\193\78", "\60\140\200\99\164"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\164\225\22\52\167\137\247\29", "\194\231\148\100\70"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\100\77\194\168\230\201\69\71", "\168\38\44\161\195\150"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\168\233\143\119\62\231\191\18", "\118\224\156\226\22\80\136\214"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\75\224\95\143", "\224\34\142\57"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\128\133\249\114\177\117\1\209\163", "\110\190\199\165\189\19\145\61"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\229\113\231", "\167\186\139\23\136\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\146\200\41\27\245\160\2\21\177", "\109\122\213\232"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\249\164\63", "\80\142\151\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\225\55\104\2\134\95\67\12\194", "\44\99\166\23"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\249\47\57", "\196\28\151\73\86\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\36\105\52\131\24\48\121\252\7", "\22\147\99\73\112\226\56\120"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\123\228\250", "\237\216\21\130\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\105\31\123\177\137\118\141\65\91", "\62\226\46\63\63\208\169"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\12\86\128\26\30\60", "\62\133\121\53\227\127\109\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\51\114\209\215\238\138\31\27\54", "\194\112\116\82\149\182\206"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\175\66\23\210\231\10", "\110\89\200\44\120\160\130"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\130\215\78\75\80\110\41\66\187", "\45\203\163\43\38\35\42\91"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\151\211\51", "\52\178\229\188\67\231\201"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\73\95\20", "\67\65\33\48\100\151\60"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\253\232\170\193\214\217\225\171\219\231\204", "\147\191\135\206\184"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\169\39\176\196\213\86\188\144", "\210\228\72\198\161\184\51"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\7\220", "\174\86\41\147\112\19"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\5\140\15", "\203\59\96\237\107\69\111\113"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\18\19\175\245\62\226\132", "\183\68\118\204\129\81\144"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\184\125\229\5\141\7\169\66\235\4\150\62\172\98\240", "\226\110\205\16\132\107"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\194\205\243\205\64\229\192\229", "\33\139\163\128\185")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\117\89\23\219\103\89\22\202", "\190\55\56\100"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\117\163\53\29\24\199\246\66\170\63\10\28\241", "\147\54\207\92\126\115\131"));
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\37\36\56\124\3\113\4\53\7\114\2\106\61\48\39\105", "\30\109\81\85\29\109"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\215\100\89\183\56\209\245\251", "\156\159\17\52\214\86\190"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\250\176\189\160\224\180\184\156\224\178\168\158\238\175\168", "\220\206\143\221"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\174\104\32\22\214\195\219\130\79\34\24\204\252\211\148\105", "\178\230\29\77\119\184\172"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\219\191\7\30", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\54\243\70\177\157\11\247\64\167\210", "\213\189\70\150\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\80\114\9\90\89\96", "\104\47\53\20")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\64\128\27", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\86\5\118\175\134\217\69\18\124\141\167\217\65", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\114\117\77\204\56\112\114", "\174\89\19\25\33")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\29\86\87\193\130\7\32\17\91\90\238", "\107\79\114\50\46\151\231"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\17\179\184\40\132\54\190\196", "\160\89\198\213\73\234\89\215"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\102\112\185\251", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\214\72\0\42\234\206\12\60\49\235", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\64\66\43\220\8\81", "\169\100\37\36\74")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\139\163\87", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\85\62\33\24\193\170\145\251\86\1\58\29\215\184\141\238\86\15\42", "\227\168\58\110\77\121\184\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\61\179\76\179\218\114\174", "\197\27\92\223\32\209\187\17")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\94\206\254", "\155\99\63\163")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\223\181\132\249\162\142\216\175\138", "\228\226\177\193\237\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\181\37\231\33\188\55", "\134\84\208\67")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\160\135\91", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\52\255\121\193\54\226\126\224\28\231\113\224", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\117\10\63\76\85\123\95", "\24\52\20\102\83\46\52")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\46\44\33", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\215\151\215\110\217\210\214\142\206", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\113\195\54\71\47\13", "\121\171\20\165\87\50\67")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\52\184\49", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\248\109\8\149\200\249\251\105\7\138\221\241", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\136\83\14\14\236\217\130", "\141\186\233\63\98\108")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\217\255\33\183\43\254\227\40", "\69\145\138\76\214"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
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
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\211\213\220\174", "\174\207\171\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\247\9\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\0\225\4\56", "\108\76\105\134")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\196\188\228", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\231\196\194\67\93\121\160\161\237\129\237\6\105\122\170\189\230", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\6\240\46\90\24\66\45\232\33\86", "\118\38\99\137\76\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\54\0\23\13\96\208\39\6\0\6\96\214\35\28\16\0\46\249", "\64\157\70\101\114\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\173\161\226\5\76\188", "\112\32\200\199\131")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\95\88\189", "\66\76\48\60\216\163\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\137\117\247", "\68\218\230\25\147\63\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\38\82\75", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\92\231\249\115\215\77\225\238\120\209\73\251\254\126\244\72\196\240\118\253", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\220\43\44\162\39\160\154", "\85\212\233\176\78\92\205")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\89\133\231", "\130\42\56\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\180\45\237", "\95\138\213\68\131\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\33\165\70", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\124\226\76", "\56\76\25\132")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\220\207\31\55\61\222\200", "\85\92\189\163\115")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\7\173\61\61", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\130\29\67\105\243\58\134\29\85", "\186\78\227\112\38\73")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\185\108\181\27\30\51\185\106", "\26\156\55\157\53\51"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\169\82\61\220", "\84\133\221\55\80\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\238\32\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\184\254\151", "\185\142\221\152\227\34")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\196\90\255", "\151\56\165\55\154\35\83")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\66\9\226\162\66\6\229", "\142\192\35\101")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\116\36\166", "\118\182\21\73\195\135\236\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\53\23\0\40\2\254\3", "\157\104\92\122\32\100\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\163\201\203\40\43\153", "\203\195\198\175\170\93\71\237")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\71\63\210", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\225\201\175\4\64\114\116\228\197\164", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\44\165\67\112\189\194\179", "\216\136\77\201\47\18\220\161")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\27\233\40\206\7\206\209", "\226\77\140\75\186\104\188")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\207\221\58", "\47\217\174\176\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\211\98\11\242\120\119\37\179", "\70\216\189\22\98\210\52\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\218\165\134\198\214\203", "\179\186\191\195\231")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\51\25\227", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\188\26\36\219\213\163\186", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\2\46\229\253\197\227\8", "\164\128\99\66\137\159")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\136\228\187", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\189\179\22\200\223\255\186\184\231\45\141\224\255\181\165\162\13", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\42\56\41\192\73\22", "\36\152\79\94\72\181\37\98")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\212\70\56", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\49\233\50\93\172\13\182\52\213\35\71\143\14\163\58", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\162\197\123\86\255\160\194", "\52\158\195\169\23")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\185\253\208\117", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\214\193\163", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\166\169\27\235", "\177\111\207\206\115\159\136\140")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\43\136\29\17", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\50\224\82\200\55\209\47", "\86\163\91\141\114\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\27\96\122\53\93\24", "\90\51\107\20\19")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\131\238\40\129\228", "\93\237\144\229\143")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\250\241\30", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\178\227\54\34\184\229\14\44\169\233\63\57\139\239\40\57", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\45\53\78\6\121\237", "\26\134\100\65\89\44\103")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\226\61\38", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\185\11\4\23\235\21\240\45\13\1\234\23\190\2", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\143\215\65\166\92\57\127\121\135\203", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\251\240\132\126\15\249\189\163\116\21\240\244\134\117", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\198\18\236\58\164\95", "\200\43\163\116\141\79")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\146\57\57\134", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\74\177\177\17\176", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\39\36\184", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\194\254\229\115\236\77\224\246\240\126\230\72\207", "\143\38\171\147\137\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\131\181\255\1\226\215\219", "\180\176\226\217\147\99\131")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\183\41\8", "\103\179\217\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\105\144\92\241\64\204\139\69\184\24", "\195\42\215\124\181\33\236"), LUAOBFUSACTOR_DECRYPT_STR_0("\44\80\58\50\42\251\6\25\18\48\36\250\1\92\51\100\101", "\152\109\57\87\94\69") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\237\135\62\66\95\54\163\139\53\76\89\57", "\58\82\131\232\93\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\82\214\20\72\51\151", "\95\227\55\176\117\61")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\114\34\76", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\44\64\227\214\242\46\70\225\214\242\46\72\235\218\249\32\78\228\223\253\36\74", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\30\21\170\222\139\28\18", "\188\234\127\121\198")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\29\1\35\188\27\19\48\171\29", "\227\88\82\115")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\102\44\138\152\33\82\96\55\159", "\19\35\127\218\199\98")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\57\200\58\221\63\218\41\202\57", "\130\124\155\106")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\240\248\198\144\128\215\95\151\240", "\223\181\171\150\207\195\150\28")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\105\9\211\145\42\109\25\203\139", "\105\44\90\131\206")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\218\211\130\134\43\31\220\200\151", "\94\159\128\210\217\104")].SETTINGS.NAME_TAG == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\117\202\54\128\124\94\218\82\117", "\26\48\153\102\223\63\31\153")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\65\224\246", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\74\240\223\7\90\88\88\102\237\203\4\90\78\28", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\3\129\183\176\188\144", "\228\52\102\231\214\197\208")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\236\116\205", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\211\38\243\135\31\35\35\133\219\55\234\131\23", "\102\235\186\85\134\230\115\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\13\50\83\112\213\33\92", "\66\55\108\94\63\18\180")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\49\190\181\8\4\120\55\165\160", "\57\116\237\229\87\71")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\143\130\221\216\84\207\100\130\148", "\39\202\209\141\135\23\142")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\218\0\57\53\17\217\220\27\44", "\152\159\83\105\106\82")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\164\245\97\205\234\125\162\238\116", "\60\225\166\49\146\169")].UnLoad();
		end
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\31\34\47", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\112\203", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\211\203\192\220\173\81", "\37\211\182\173\161\169\193")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\54\76\222", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\111\247\48\89\219\121\244", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\218\81\142\76\126\43\208", "\31\72\187\61\226\46")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\230\53\115\237\100\95\7\235\35", "\68\163\102\35\178\39\30")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\155\67\234\248\32\148\160\57\155", "\113\222\16\186\167\99\213\227")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\15\246\243", "\150\78\110\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\196\42\228\176\31\184", "\32\229\165\71\129\196\126\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\140\194\128\148\217\215", "\181\163\233\164\225\225")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\135\63\112", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\201\200\115\86\62\215\72\219\223\78", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\204\75\48\240\15\246\207", "\149\164\173\39\92\146\110")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\214\20\32\32\57\58\208\15\53", "\123\147\71\112\127\122")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\233\254\178\78\101\237\238\170\84", "\38\172\173\226\17")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\99\16\33\234", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\170\29\63\189\170\15", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\55\170\65\232\87\38", "\157\59\82\204\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\50\226\253", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\178\212\72\12\34\50\39\58\178", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\45\164\84\36\119\228\39", "\22\135\76\200\56\70")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\168\3\200\27\126\192\174\24\221", "\129\237\80\152\68\61")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\116\155\52\204\63\54\123\121\141", "\56\49\200\100\147\124\119")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\178\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\26\182\72\2\14\176\74", "\39\68\111\194")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\72\227\70", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\125\254\253", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\102\251\164\86", "\65\42\158\194\34\17")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\38\95\9", "\142\122\71\50\108\77\141\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\183\235\23\123\37\171\252\19\46\5\226\210\23\53\16\187", "\91\117\194\159\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\24\56\25\32\253\48", "\68\122\125\94\120\85\145")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\16\206\89", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\229\92\203\149\249\75\207\176\224\101\203\171\245\81", "\164\197\144\40"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\241\166\135\223\183\128\251", "\214\227\144\202\235\189")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\204\176\147\116\80\131\90\63\230\176\151\59\61\188\93\57\244", "\92\141\197\231\27\112\211\51"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\196\254\153\166\225\231\237\158", "\177\134\159\234\195")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\144\228\49\165\208\153\249\48\176", "\169\221\139\95\192"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\138\114\58", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\247\14\233\165\137\246\21\235\245", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\250\229\197\201\175\44", "\88\92\159\131\164\188\195")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\34\190\76", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\233\158\25\210\58\243\135\6\213\33\251\141\26\196\40\240\139\17", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\182\197\208\165\182\202\215", "\188\199\215\169")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\221\28\75\116\168\207\29\80\118\248", "\136\156\105\63\27"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\40\152\118\57\11", "\84\123\236\25"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\138\167\18", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\13\202\37\104\15\72\55\12\203\41\45", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\235\164\236\132\250", "\137\64\66\141\197\153\232\142")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\220\35\161", "\232\99\176\66\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\52\60\9\119\136\237\56\249\34\45\0\122\159\244\42\224\32\47", "\76\140\65\72\102\27\237\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\219\26\222\213\0\189\65", "\222\42\186\118\178\183\97")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\124\249\80\133\29\192\65\158\73\249\71\143", "\234\61\140\36"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\26\241\191\102\27\52\222\191\79", "\111\65\189\218\18"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\120\103\30\33\31\73\172\70\118\91\120\75\24\250", "\207\35\43\123\85\107\60"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\171\173\239", "\25\16\202\192\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\206\185\246\160\250\250\216", "\148\157\171\205\130\201")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\213\121\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\25\19\67", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\225\166\41", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\86\227\227\44", "\116\26\134\133\88\48\47")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\192\173\225", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\15\140\68\98\87\45\163\1", "\54\63\72\206\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\92\67\123\240\119\220", "\27\168\57\37\26\133")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\171\112\164\213\44\169\119", "\183\77\202\28\200")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\57\50\132\13", "\104\119\83\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\253\41\55\3\222\253\62\32\74\251\252", "\35\149\152\71\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\237\91\178\51\23\236\108\177\55\28", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\11\91\11\135\37\80\7\197\7\91\26", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\21\40\249\201\51\41", "\95\93\112\78\152\188")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\250\129\16", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\212\218\171\173\19", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\34\180\39", "\143\235\78\213\64\91\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\77\138\252\123\179\148\74\141\231\116\176\129\73\131", "\214\237\40\228\137\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\226\227\213\1\167\134\232", "\198\229\131\143\185\99")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\141\165\118", "\19\49\236\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\63\247\163\164\137\238\46", "\218\158\87\150\215\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\27\223\227\35\46\217", "\173\155\126\185\130\86\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\170\187\192", "\140\133\198\218\167\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\38\181\105\151\165\55\160\114\131\178\34\177\123\136\180\41", "\228\213\78\212\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\77\186\9\233\134\79\189", "\139\231\44\214\101")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\247\238\11\91", "\118\185\143\102\62\112\209\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\98\44\232\164\17\25\120\114\101\34\227", "\88\60\16\73\134\197\117\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\235\244\196\67\81\233\243", "\33\48\138\152\168")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\73\58\53\69\213\34\113\19\13", "\87\18\118\80\49\161"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\119\57\200\165\190\77\26\223\157\240\1\94\158\247\228\31", "\208\44\126\186\192"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\204\61\182\195\26\253\205\75\202", "\46\151\122\196\166\116\156\169")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\222\202\84\31\245\228\233\67\39", "\155\133\141\38\122")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\74\94\130\245\66\26\132\255\75\95\148", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\217\214\121\26\60\204\50", "\89\210\184\186\21\120\93\175")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\93\122\218", "\90\209\51\28\181\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\243\92\23\202\190\144\83\88\225\187", "\223\176\27\55\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\190\218\182\44\178\192\178\100\151\207\161\33\168\218\245\0\186\142\157\43\180\202\245\7\180\202\176\55\250", "\213\68\219\174"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\3\244\55\247\57\159\112\48\25\225\52\169\45\204\43\119\30\226\54\244\47\215\60\112\5\244\38\233\62\139\60\112\6\175\33\232\62\193\58\105\51\196\108\192\24\240\29\87\62\194\28\211\15\230\23\48\6\225\42\233\101\193\62\58\89\176\43\232\37\193\122\45\91\227\44\227\47\214\113\117\24\239\45", "\31\107\128\67\135\74\165\95"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\250\238\66\83", "\209\184\136\156\45\33"), LUAOBFUSACTOR_DECRYPT_STR_0("\36\239\53\44\185\71\224\122\7\188", "\216\103\168\21\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\94\172\74\168\125\169\3\144\119\237\101\161\108\174\75\228\84\172\87\161\107\185\3\128\121\237\107\171\119\169\3\135\119\169\70\183\57", "\196\24\205\35"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\158\224\5\43\152\240", "\102\78\235\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\217\9\116\96\70\121\159\59\245\42", "\84\154\78\84\36\39\89\215"), LUAOBFUSACTOR_DECRYPT_STR_0("\219\228\66\91\13\248\229\22\116\4\233\228\69\76\69\217\224\22\112\10\242\229\22\123\10\249\228\69\25", "\101\157\129\54\56"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\56\167\158\174\49\73\15\166\135\164\0\118\25\172", "\25\125\201\234\203\67"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\87\245\21\6", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\60\171\35\68\24\125\137\40\64\21\56\171\100\102\57\20", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\74\173\161\217\74\162\166", "\205\187\43\193")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\246\102\17\207\237\40\74\144\236\115\18\145\249\123\17\215\235\112\16\204\251\96\6\208\240\102\0\209\234\60\6\208\243\61\7\208\234\118\0\201\198\86\74\248\204\71\39\247\203\80\58\235\219\81\45\144\243\115\12\209\177\81\34\224\218\83\58\247\209\93\33\224\202\83\55\248\219\70\58\248\203\91\75\211\235\115", "\191\158\18\101"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\198\147\135\163\196\218\130\165\140\196\208\143", "\207\165\163\231\215")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\252\245\83\52\127\212\237\223\67\42\115", "\16\166\153\153\54\68")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\160\235\72\59\34\242\215\183", "\153\178\211\160\38\84\65")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\24\126\46\131\15", "\75\226\107\58")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\95\219\5\78\30\205\193", "\173\56\190\113\26\113\162")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\32\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\32\246\172\225\61\47\215\32\232\185\253\111", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\71\236\206", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\33\219\252\197", "\148\177\72\188")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\136\183\90\214", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\30\125\102\5\242\253\3\103\120\81", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\170\21\128\194\211\174", "\175\166\195\123\233")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\195\69\64\253\250\207", "\144\143\162\61\41")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\214\27\81\103\139\39", "\83\128\179\125\48\18\231")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\187\242\218", "\126\61\215\147\189\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\240\19\64\97\251\15\74\104\254\16\74\109\241\9\67\116\254\26", "\37\24\159\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\167\121\78\216\167\118\73", "\34\186\198\21")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\9\200\88", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\58\166\114\48\193\223\32\162\61\83\228\222\39", "\133\173\79\210\29\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\121\235\42\152\112\249", "\75\237\28\141")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\94\192\189\45\26\228\234", "\129\188\63\172\209\79\123\135")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\100\246\233\221\109\235\232\200\89", "\173\32\132\134"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\72\14\6\236\186\56\194\64", "\173\46\123\104\143\206\81")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\167\8\33\137\64\144\18", "\97\212\125\66\234\37\227"), LUAOBFUSACTOR_DECRYPT_STR_0("\169\196\246\17\31\202\203\185\58\26", "\126\234\131\214\85"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\219\79\85", "\47\228\181\41\58"), LUAOBFUSACTOR_DECRYPT_STR_0("\133\219\153\31\2\112\55\169\243\221", "\127\198\156\185\91\99\80"), LUAOBFUSACTOR_DECRYPT_STR_0("\218\10\201\254\231\10\55\218\181\25\192\255\180\14\121\213\240\3\140\249\180\75\16\208\230\31\222\228", "\190\149\122\172\144\199\107\89"));
end);
