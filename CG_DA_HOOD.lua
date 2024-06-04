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
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:Init();
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["release_Dev_Features%0"] = false;
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\61\42\227", "\202\171\92\71\134\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\205\45\145\44\211", "\232\73\161\76")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\149\216\79\88", "\126\219\185\34\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\199\83", "\135\108\174\62\18\30\23\147")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\232\39\206", "\167\214\137\74\171\120\206\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\249\33\72\249\171\152", "\199\235\144\82\61\152")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\23\180\46", "\75\103\118\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\93\99\23", "\126\167\52\16\116\217")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\47\45\133", "\156\168\78\64\224\212\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\239\172\192", "\174\103\142\197"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\33\91\61", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\193\232\72", "\60\180\164\142")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\95\8\44", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\232\210\202", "\164\216\137\187"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\239\53\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\11\132\210", "\202\88\110\226\166")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\49\187\54", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\232\190\164", "\199\122\141\216\208\204\221")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\133\182\66", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\0\89\82", "\128\236\101\63\38\132\33")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\153\185\25\77\186\231\143\139\188\31\94", "\175\204\201\113\36\214\139")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\220\61\213\8\75\140\19\211\11\67", "\100\39\172\85\188")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\119\174\142\59\164\116\181\192\20\184\118\163", "\83\205\24\217\224")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\202\218\51\238\204\193\49\166\227\194\50\226", "\93\134\165\173")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\243\207\201", "\30\222\146\161\162\90\174\210")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\77\120\5\234\66", "\106\133\46\16")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\41\127\245\78\65\74\57\51\222\91\83\93", "\32\56\64\19\156\58")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\199\233\95\89\247\192\105\220\228\66\83\253\142", "\224\58\168\133\54\58\146")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\89\68\249\53\160\142\31\87\83\88\238", "\107\57\54\43\157\21\230\231")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\131\30\251\188\156\252\207\132\3\240", "\175\187\235\113\149\217\188")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\174\193\110\236\97\113\50\168\193\111\239\108\122", "\24\92\207\225\44\131\25")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\210\248\120\19\120\74\199\170\73", "\29\43\179\216\44\123")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\96\111\188\202\41\66\178", "\44\221\185\64")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\238\79\87\103\2\235\93\93", "\19\97\135\40\63")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\78\54\62\7\62\187\79\54", "\81\206\60\83\91\79")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\102\174\209\118", "\196\46\203\176\18\79\163\45"),LUAOBFUSACTOR_DECRYPT_STR_0("\141\50\110\27\54\207\224\170\49\113", "\143\216\66\30\126\68\155"),LUAOBFUSACTOR_DECRYPT_STR_0("\134\199\26\206\215\151\216\243\185\199", "\129\202\168\109\171\165\195\183"),LUAOBFUSACTOR_DECRYPT_STR_0("\10\77\58\217\208\27\239\38\106\56\215\202\36\231\48\76", "\134\66\56\87\184\190\116")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\62\29\137\28\234\45\17\20", "\85\92\81\105\219\121\139\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\187\89\86\60\214\238\243\94\74\104\159\239\182\81\73\60\251\252\243\120\74\115\219\177\243\67\74\113\218\189\181\85\68\104\202\239\182\67\5\113\222\228\243\94\74\104\159\234\188\66\78\61", "\191\157\211\48\37\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\30\253\8\51\209\24\210\19\40\239\19\245\5\63\205\43\251\48\53\222\27", "\90\191\127\148\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\134\39\3\113\137\41\87\126\136\60\87\104\139\47\14\125\149\110\3\119\199\34\24\121\131\110\30\118\198", "\119\24\231\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\33\164\83\217\82\61\141\44\161\79\216\105\31", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\26\245\172\63\4\180\185\53\23\240\176\62\87", "\213\90\118\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\55\164\87\94\72\39\186\81\108\85\58\189\117\69\94\47\160", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\66\151\142\139\62\185\249\30\81\195\159\137\110\175\233\0\87\144\152\198\47\163\228\25\22\128\131\131\47\185\177", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\49\31\253\195\72\182\44\46\242\196\82\144\32\10\253\196", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\137\247\36\14\132\235\40\79\147\163\47\87\151\226\62\93\130\231\108", "\77\46\231\131")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\183\89\191\70\165", "\32\218\52\214")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\48\177\244\162\86", "\58\46\119\81\200\145\208\37")),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\137\32\160\160\190\55\63\137\52\159\189\178\36\42\139\53", "\86\75\236\80\204\201\221")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\64\68\103\137\247\136\115\85\114\129\205\159\125\83\118\130\251", "\235\18\33\23\229\158")),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\179\211\175\69\187\205\146\94\170\212\175\125\187\207\186\87\191\211", "\219\48\218\161")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\210\120\110\93\206\78\236\205\127\108\92\207\98\225\234\112\123\76\201", "\128\132\17\28\41\187\47")),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\38\18\42\110\4\32\16\51\94\4", "\61\97\82\102\90")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\132\58\191\91\244\82\12\31\165\45\174", "\105\204\78\203\43\167\55\126"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\136\171\42\16\54\18\194\95\177", "\49\197\202\67\126\115\100\167"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\222\48\133\68", "\62\87\59\191\73\224\54")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\11\234\225\226\11\253\193\243", "\169\135\98\154")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\229\120\20\88\252\42\205\217\68\40\91\234\23\199\220\121", "\168\171\23\68\52\157\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\127\225\164\9\34\132\255\83\250\162\41", "\231\148\17\149\205\69\77")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\169\211\242\123\240\131\172\245\254\68\240\140\177\194\217\88\240\140", "\159\224\199\167\155\55")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\253\40\219\209\255\53\220\240\209\51\221\251", "\178\151\147\92")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\243\88\59\33\88\117\129\237\110\61\29\64", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\59\193\84\26\39\214\80\63\62\248\84\36\43\204\121\37\33\217", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\196\78\85\128\49\222\87\74\145\42\222\86", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\240\109\250\197\206\163\241\108\246\236\233\184\234\117", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\216\55\255\235\29\253\65\243\199\6\245\232\55\240\71", "\34\129\168\82\154\143\80\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\189\63\15\65\64\142\182\162\54\14\76\99\136\134\160\60\32\77\87", "\233\229\210\83\107\40\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\107\1\227\36\237\113\13\243\43\224\96\30\243\33\254\96\29\249\41", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\37\120\202\228\209\178\23\215\47\118\209\247", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\24\219\206\10\23\220\220\27\0\219\222\17\19", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\248\32\250\113\147\207\226\36\234\109\150\206\229\43\244\99\152\200\227\32", "\215\157\173\116\181\46")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\129\191\221\229\17\134\164\194\229\22\149\184\218\229\23\155\164\222", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\136\27\210\54\237\83\233\143\25\253\50\235\92\225\137\19\253\50\204\87\205\141", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\22\225\187\54\221\81\21\212\166\44\223\104\10\236\160\33\211", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\139\113\144\62\129\119\158\62\141\112", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\208\132\250\255\203\7\225\131\233\237\194\7\229\131\233\254", "\167\115\181\226\155\138")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\227\43\234\80\116\114\205\214\35\245\91\126\101\246\227\48\243", "\166\130\66\135\60\27\17")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\101\67\195\69\34\65\78\199\118\36\77\69\192\70\36\86\79\192\114\36\76\124\207\121\37\65", "\80\36\42\174\21")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\99\17\37\113\75\4\39\118\79\19\50\73\75\2\33\115\77\21", "\26\46\112\87")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\138\32\185\125\175\171", "\212\217\67\203\20\223\223\37")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\150\130\171\211\182\190\171\192\179\157\188", "\178\218\237\200"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\134\180\244\196\152\180\235\213", "\176\214\213\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\184\187\213\166\89\80\240\159\185\219\188\102\88\230\185", "\57\148\205\214\180\200\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\58\57", "\22\114\157\85\84")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\196", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\251\12\81\177\183\243\34\81\151\191\247\11\72\134\176\224", "\227\222\148\99\37")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\3\83\64\226\215\50\95\87", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\121\100\25\97\159\66\79\101\124", "\45\61\22\19\124\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\0\2\248", "\217\161\114\109\149\98\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\47\55\104\142\125\21\1\44\104\189\119\26\45\61\114\168", "\20\114\64\88\28\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\14", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\238\26\243\14\229\238\13\201\19\202\198\9\239\27\206\239\16\254\20\217", "\122\173\135\125\155")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\180\192\18\173\17\48\197\129", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\216\41\84\59\98\203\193\43\78\3\82\220", "\55\187\177\78\60\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\80\230", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\72\95\38\144\105\81\62\182\72\95\15\144\85\89\45\140\76\93\32\144", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\113", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\228\129\89\249\22\55\30\232\180\88\234\28\45\15\236\133\89\224\56\55\15", "\89\123\141\230\49\141\93")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\195\112\228\24\62\75\254\116", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\175\42\119\243\196\0\177\40\109\203\237\8", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\168\91", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\5\132\41\22\30\162\188\9\177\40\5\20\184\173\13\128\41\15\48\162\173", "\204\217\108\227\65\98\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\204", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\169\10\39\215\247\174\6\35\198\228\169\10\14\215\194\161\14\39\206\211\174\25", "\163\182\192\109\79")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\18\212\219\53\43\5", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\15\10\229\44\32\2\226\44", "\141\88\102\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\65\197\125", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\167\181\32\239\143\188\35\247\171\128\33\252\143\166\60\250\173\186\37\254\160\166", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\117", "\83\38\26\52\110")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\22\53\72\81\25\32", "\38\56\119\71"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\200\24\242\36\22\219\224\87\210", "\54\147\143\56\182\69"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\180\211\101\230\233\173\208\104\251\243\165\192\106\247\247\179", "\191\182\225\159\41")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\9\19\43\94\155\134\193\32", "\162\75\114\72\53\235\231"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\183\12\76\237\93\7\177", "\98\236\92\36\130\51"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\41\4\181\75\173\136", "\80\196\121\108\218\37\200\213"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\114\22\126\109\1\134\4\118\16", "\234\96\19\98\31\43\110"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\37\10\64\213\169\124\136\31", "\235\102\127\50\167\204\18"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\114\160\246\40\84\47\83\170", "\78\48\193\149\67\36"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\24\11\141\25\79\63\23\132", "\33\80\126\224\120"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\166\5\203", "\60\140\200\99\164"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\211\68\2\163\199\220\11\41\166", "\194\231\148\100\70"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\66\199\172", "\168\38\44\161\195\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\219\194\82\49\168\158\25\143\248", "\118\224\156\226\22\80\136\214"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\75\224\95\143", "\224\34\142\57"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\128\133\249\114\177\117\1\209\163", "\110\190\199\165\189\19\145\61"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\229\113\231", "\167\186\139\23\136\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\146\200\41\27\245\160\2\21\177", "\109\122\213\232"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\249\164\63", "\80\142\151\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\225\55\104\2\134\95\67\12\194", "\44\99\166\23"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\226\42\53\54\183\111", "\196\28\151\73\86\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\36\105\52\131\24\48\121\252\7", "\22\147\99\73\112\226\56\120"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\145\114\236\250\159\189\113", "\237\216\21\130\149"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\171\90\90\82\163\237\76\141\94", "\62\226\46\63\63\208\169"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\193\11\90\147", "\62\133\121\53\227\127\109\79"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\35\28\61\229", "\194\112\116\82\149\182\206"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\167\72\1\229\228\8\60\171\88\11", "\110\89\200\44\120\160\130"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\204\93\67\78\79\53\89", "\45\203\163\43\38\35\42\91"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\249\203\243", "\52\178\229\188\67\231\201"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\68\81\0", "\67\65\33\48\100\151\60"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\233\226\173\204\252\205\180", "\147\191\135\206\184"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\172\61\171\192\214\92\187\128\26\169\206\204\99\179\150\60", "\210\228\72\198\161\184\51"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\31\71\224\4\114\192\53\76", "\174\86\41\147\112\19")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\121\1\158\14\21\14\3\191", "\203\59\96\237\107\69\111\113"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\7\26\165\226\58\212\210\48\19\175\245\62\226", "\183\68\118\204\129\81\144"));
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\184\125\229\5\141\7\169\66\235\4\150\62\172\98\240", "\226\110\205\16\132\107"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\195\214\237\216\79\228\202\228", "\33\139\163\128\185"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\77\9\223\89\87\13\218\101\87\11\202\103\89\22\202", "\190\55\56\100"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\49\31\29\236\250\82\157\51\17\7\211\242\68\187", "\147\54\207\92\126\115\131"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\35\48\56\120", "\30\109\81\85\29\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\97\81\179\50\158\209\254\114\70\185", "\156\159\17\52\214\86\190"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\234\187\189\187\227\169", "\220\206\143\221")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\113\44\16", "\178\230\29\77\119\184\172")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\174\15\30\115\213\244\189\24\20\81\244\244\185", "\152\149\222\106\123\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\39\250\79\183\220\37\253", "\213\189\70\150\35")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\90\112\17\121\80\120\7\76\92\96\17", "\104\47\53\20"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\139\89\140\29\178\0\170\72", "\111\195\44\225\124\220"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\246\71\13\118", "\203\184\38\96\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\124\57\114\194\54\100\125\78\217\55", "\174\89\19\25\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\23\84\79\226\139\31", "\107\79\114\50\46\151\231")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\170\180\46", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\126\132\242\196\81\116\166\205\201\71\102\176\241\210\70\87\184\255\194", "\165\40\17\212\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\216\4\63\36\228\218\3", "\70\133\185\104\83")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\68\73\47", "\169\100\37\36\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\137\182\89\64\161\174\89\14\128", "\48\96\231\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\95\8\44\12\212\187", "\227\168\58\110\77\121\184\207")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\48\190\71", "\197\27\92\223\32\209\187\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\81\215\242\37\83\202\245\4\121\207\250\4", "\155\99\63\163"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\208\173\129\187\133\129\218", "\228\226\177\193\237\217")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\26\177\46\227", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\162\146\85\83\159\146\83\30\188", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\63\237\113\242\54\255", "\16\135\90\139")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\82\120\7\52", "\24\52\20\102\83\46\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\33\53\45\28\208\32\44\52\9\200\46\38", "\111\164\79\65\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\216\143\210\44\235\197\210", "\138\166\185\227\190\78")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\227\97\200\54\92\44\16\207", "\121\171\20\165\87\50\67"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\57\180\51", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\248\117\14\133\215\182\215\119\8\139\221\226\255\118\15\149", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\136\83\14\14\236\217\130", "\141\186\233\63\98\108")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\249\254\56\166\54\171\165\99\164\36\230\164\43\191\49\249\255\46\163\54\244\248\47\185\43\229\239\34\162\107\242\229\33\249\39\254\254\40\179\51\201\206\99\145\23\196\200\4\131\7\206\222\9\149\13\190\231\45\191\43\190\206\45\158\42\254\238\13\184\44\252\235\56\191\42\255\223\34\186\42\242\225\41\164\107\253\255\45", "\69\145\138\76\214"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\206\132\140", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\139\57\183\235\136\105\203\160\39\180\254\155\120\143\196\28\175\235\134\110", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\213\182\209\117\79\36\89", "\50\93\180\218\189\23\46\71")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\252\165\72\73\116\221\90\202", "\40\190\196\59\44\36\188")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\8\74\211\184", "\109\92\37\188\212\154\29"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\169\198", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\67\47\175\127\72\233\2", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\176\87\70\212\116\178\80", "\182\21\209\59\42")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\198\22\49\191\180\92", "\222\215\55\165\125\65"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\28\217\201\20\247\226\236\70\32", "\42\76\177\166\122\146\161\141"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\139\8\203", "\22\197\234\101\174\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\37\176\213\102\239\246\138\33\116\145\211\121\163\196", "\230\77\84\197\188\22\207\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\21\202\240\142\160\243\62", "\85\153\116\166\156\236\193\144")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\225\78\184\244\1\167\235", "\96\196\128\45\211\132"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\1\130\116\83", "\184\85\237\27\63\178\207\212")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\159\176\86\10", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\188\166\130", "\231\61\213\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\164\58\123\29", "\19\105\205\93")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\219\196\203\171\139\236\207\172\217\206\142\132\206\216\204\166\197\197", "\174\207\171\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\251\20\241\241\217\233\208\12\254\253", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\25\227\9\40\73\203\13\47\27\233\76\7\12\255\14\37\7\226", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\192\183\224\219\231\209", "\174\139\165\209\129")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\188\230\196", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\12\229\40", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\42\4\21", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\184\162\230\20\109\169\164\241\31\107\173\190\225\25\78\172\129\239\17\71", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\80\180\193\170\33\39", "\66\76\48\60\216\163\203")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\116\246", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\95\73\166\162\56\71\95", "\214\205\74\51\44")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\77\239\249", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\167\164\160", "\115\113\198\205\206\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\183\94\250\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\140\214\58", "\85\212\233\176\78\92\205")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\89\133\231", "\130\42\56\232")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\180\40\239\66\62\233\190", "\95\138\213\68\131\32")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\120\233\93\108\80\240\93\33\106", "\56\76\25\132")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\27\250\227\104\130\23\132\150", "\175\62\161\203\70"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\220\206\22", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\184\53\53\58", "\88\73\204\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\138\20\67", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\82\251\65", "\26\156\55\157\53\51")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\188\91\60\205\53\230\182", "\84\133\221\55\80\175")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\180\245\195\110\214\237\182", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\192\81\251\86\63\227", "\151\56\165\55\154\35\83")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\79\4\233", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\124\36\175\232\143\167\16\218\116\46", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\61\22\76\6\12\254\3", "\157\104\92\122\32\100\109")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\149\163\204\222\50\53\222", "\203\195\198\175\170\93\71\237")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\230\208\170\75\111\118\113\227", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\40\175\78\103\176\213", "\216\136\77\201\47\18\220\161")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\224\42\221", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\192\196\54\99\182\205\219", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\49\12\237\185\19\23\231\242\127\42\225\234\48\20\242\252\45", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\183\8\44\226\214\180", "\192\209\210\110\77\151\186")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\15\35\238", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\135\231\170\9\165\230\189\11\187\236\173\15\133\255\187", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\178\171\19\138\242\243\178", "\144\217\211\199\127\232\147")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\46\51\45", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\192\83\45\214", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\54\227\35", "\98\213\95\135\70\52\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\170\206\127\64", "\52\158\195\169\23")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\168\228\130\68\137\179\253", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\207\209\175\232\130\4", "\17\66\191\165\198\135\236\119")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\43\170\168\18\234\228\248", "\177\111\207\206\115\159\136\140")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\3\133\17\19", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\50\224\30\247\53\200\15\236\0\255\51\215\11\236\0\236", "\86\163\91\141\114\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\10\120\127\56\82\8\127", "\90\51\107\20\19")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\241\136\234", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\255\253\21\4\69\30\182\219\28\18\68\28\248\244", "\38\117\150\144\121\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\190\247\56\36\181\234\20\44\182\235", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\13\44\53\67\4\113\166\47\36\32\78\14\116\226", "\26\134\100\65\89\44\103"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\230\54\34\177\253\247", "\196\145\131\80\67")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\191\2\13", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\133\201\68\163\87", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\254\252\143", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\202\25\225\32\171\64\232\17\244\45\161\69\199", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\55\49\143\178\245\224\180", "\131\223\86\93\227\208\148")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\75\176\185", "\213\131\37\214\214\125"), LUAOBFUSACTOR_DECRYPT_STR_0("\5\12\101\155\224\102\3\42\176\229", "\129\70\75\69\223"), LUAOBFUSACTOR_DECRYPT_STR_0("\103\194\254\229\115\236\77\139\214\231\125\237\74\206\247\179\60", "\143\38\171\147\137\28") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\131\180\246", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\183\32\4\216\188\43\71\208\177\42\4\216", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\178\26\212\84\128\183", "\195\42\215\124\181\33\236")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\85\54\57", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\222\7\175\177\209\95\163\247\216\9\168\187\214\87\160\252\212\1\165\178\211\83", "\200\153\183\106\195\222\178\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\226\132\49\75\91\49\232", "\58\82\131\232\93\41")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\166\100\224\42\126\30\160\127\245", "\95\227\55\176\117\61")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\61\77\19\116\136\57\93\11\110", "\203\120\30\67\43")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\22\125\208\250\208\6\101\202", "\185\145\69\45\143")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\175\44\41\153\255\171\60\49\131", "\188\234\127\121\198")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\29\1\35\188\27\19\48\171\29", "\227\88\82\115")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\102\44\138\152\33\82\96\55\159", "\19\35\127\218\199\98")].SETTINGS.NAME_TAG == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\57\200\58\221\63\218\41\202\57", "\130\124\155\106")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\251\202\251\170", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\51\240\187\8\64\41\163\139\7\77\56\239\171\13", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\229\180\184\29\50\235", "\94\159\128\210\217\104")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\245\7\184", "\26\48\153\102\223\63\31\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\73\254\230\3\76\254\214\12\65\239\255\7\68", "\147\98\32\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\66\239\198\4\87\72\19", "\43\120\35\131\170\102\54")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\113\53\183\137\134\145\167\124\35", "\228\52\102\231\214\197\208")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\59\211\69\245\201\170\58\254\59", "\182\126\128\21\170\138\235\121")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\174\233\5\217\165\50\19\46\174", "\102\235\186\85\134\230\115\80")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\114\63\14\96\81\245\1\127\41", "\66\55\108\94\63\18\180")].UnLoad();
		end
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\58\140\136\50", "\57\116\237\229\87\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\190\245", "\39\202\209\141\135\23\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\54\15\11\39\244\235", "\152\159\83\105\106\82")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\202\80\245", "\60\225\166\49\146\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\13\63\8\14\31\42\13", "\103\79\126\79\74\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\126\223\127\92\27\185\116", "\122\218\31\179\19\62")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\150\229\253\254\234\128\102\155\243", "\37\211\182\173\161\169\193")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\210\9\125\230\11\90\154\223\31", "\217\151\90\45\185\72\27")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\125\234\23", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\218\80\135\90\126\47", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\3\69\211\82\114\48", "\68\163\102\35\178\39\30")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\184\124\219\192", "\113\222\16\186\167\99\213\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\29\235\216\47\3\254\194\47\9\232", "\150\78\110\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\196\43\237\166\31\188\75", "\32\229\165\71\129\196\126\223")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\230\186\244\190\162\244\224\161\225", "\181\163\233\164\225\225")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\117\184\14\72\115\170\29\95\117", "\23\48\235\94")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\82\219\213\88", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\223\70\63\247\28\230", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\34\22\30\15\23\231", "\123\147\71\112\127\122")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\193\131\118", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\2\60\219\95\16\47\234\95\2", "\143\45\113\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\185\16\48\186\185\31\55", "\92\216\216\124")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\126\1\156\127\222\122\17\132\101", "\157\59\82\204\32")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\29\13\211\197\202\203\240\153\29", "\209\88\94\131\154\137\138\179")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\160\201\121", "\66\72\193\164\28\126\67\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\57\188\87\0\119\245\33", "\22\135\76\200\56\70")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\49\245\33", "\129\237\80\152\68\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\169\13\253", "\56\49\200\100\147\124\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\55\187\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\10\164\83", "\39\68\111\194")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\92\254\71\205\121\227\75\134\92\250\8\160\70\228\77\148", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\113\252\249\95\203\96", "\42\167\20\154\152")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\242\163\69", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\50\70\3\29\228\24\229\15\55\127\3\35\232\2", "\142\122\71\50\108\77\141\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\163\243\20\57\20\161\244", "\91\117\194\159\120")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\59\8\42\23\117\193\45\25\22\43\8\117\220\43\20\24\39", "\68\122\125\94\120\85\145"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\53\29\220\91\248\216\168\3", "\218\119\124\175\62\168\185")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\136\255\70\193\188\212\90\203\181", "\164\197\144\40"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\173\241\167\142", "\214\227\144\202\235\189")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\176\147\116\80\128\71\51\224\181", "\92\141\197\231\27\112\211\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\250\140\162\196\234\235", "\177\134\159\234\195")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\231\62\167", "\169\221\139\95\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\158\107\48\49\50\209\134\111\43\45\33\217\135\122\57\46\39\217", "\70\190\235\31\95\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\227\22\234\231\187\225\17", "\133\218\130\122\134")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\29\234\247\203\156\144\44\51\242\243", "\88\92\159\131\164\188\195"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\179\58\176\70\199", "\189\224\78\223\43\183\139"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\253\135\19", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\162\221\211\231\155\204\200\179\162\202\217", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\89\122\253\240\29", "\136\156\105\63\27")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\29\128\120\51", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\158\190\24\160\176\228\159\191\20\169\179\241\153\167\17\160\180\247", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\25\210\38\42\34\78\40", "\45\67\120\190\74\72\67")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\1\55\249\170\185\164\235\253\52\55\238\160", "\137\64\66\141\197\153\232\142"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\56\252\39\178\156\22\211\39\155", "\232\99\176\66\198"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\13\45\18\111\152\250\41\209\97\101\70\63\216", "\76\140\65\72\102\27\237\153"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\219\27\215", "\222\42\186\118\178\183\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\233\80\158\84\226\67\153", "\234\61\140\36")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\220\183\119", "\111\65\189\218\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\74\18\59", "\207\35\43\123\85\107\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\67\163\164\239", "\25\16\202\192\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\206\171\246", "\148\157\171\205\130\201")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\213\121\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\63\56\13\185\16\31\64\136", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\237\164\45\194\228\182", "\76\183\136\194")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\231\233\52\82\78\23\113", "\116\26\134\133\88\48\47")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\192\173\225", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\45\160\17\22\116\45\183\6\95\81\44", "\54\63\72\206\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\92\120\236\117\204\119\68\119\224", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\175\114\189\151\6\175\101\170\222\35\174", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\143\9\2\63\157", "\104\119\83\233")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\247\35\39", "\35\149\152\71\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\231\69\183\54\28", "\90\121\136\34\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\2\84\25", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\21\32\237\215\58\36\18\39\246\216\57\49\17\41", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\244\137\25\230\191\209\202", "\178\161\149\229\117\132\222")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\218\208\169", "\67\232\187\189\204\193\118\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\38\180\52\123\49\255\146", "\143\235\78\213\64\91\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\77\130\232\101\186\153", "\214\237\40\228\137\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\239\238\222", "\198\229\131\143\185\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\82\132\169\103\66\156\177\103\94\139\175\127\84\138\164\114\86", "\19\49\236\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\54\250\187\230\187\253\60", "\218\158\87\150\215\132")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\31\212\231", "\173\155\126\185\130\86\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\180\191\201\137\232\224\230\148\210\131\233", "\140\133\198\218\167\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\47\184\113\134\180\45\191", "\228\213\78\212\29")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\188\96\179\17\255\146\79\179\56", "\139\231\44\214\101"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\226\200\20\91\30\176\53\19\228\175\75\30\84\230\101\69", "\118\185\143\102\62\112\209\81"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\103\87\59\227\171\20\24\61\97", "\88\60\16\73\134\197\117\124")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\107\205\234\205\79\81\238\253\245", "\33\48\138\152\168")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\61\84", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\222\165\181\65\94\217\175\180\73\13", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\27\168\202\22\253\202\69", "\46\151\122\196\166\116\156\169")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\227\64\21", "\155\133\141\38\122"), LUAOBFUSACTOR_DECRYPT_STR_0("\6\13\236\101\78\63\141\42\37\168", "\197\69\74\204\33\47\31"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\74\78\132\248\70\84\128\176\99\91\147\245\92\78\199\212\78\26\175\255\64\94\199\211\64\94\130\227\14", "\231\144\47\58"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\186\204\206\101\11\103\128\118\160\217\205\59\31\52\219\49\167\218\207\102\29\47\204\54\188\204\223\123\12\115\204\54\191\151\216\122\12\57\202\47\138\252\149\82\42\8\237\17\135\250\229\65\61\30\231\118\191\217\211\123\87\57\206\124\224\136\210\122\23\57\138\107\226\219\213\113\29\46\129\51\161\215\212", "\89\210\184\186\21\120\93\175"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\65\110\218\107", "\90\209\51\28\181\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\243\92\23\202\190\144\83\88\225\187", "\223\176\27\55\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\186\199\185\33\191\142\129\43\251\232\176\48\184\198\245\8\186\218\176\55\175\142\145\37\251\230\186\43\191\142\150\43\191\203\166\101", "\213\68\219\174"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\245\32\228\47\214\44", "\31\107\128\67\135\74\165\95"), LUAOBFUSACTOR_DECRYPT_STR_0("\251\207\188\105\64\241\240\231\243\73", "\209\184\136\156\45\33"), LUAOBFUSACTOR_DECRYPT_STR_0("\33\205\97\11\176\2\204\53\36\185\19\205\102\28\248\35\201\53\32\183\8\204\53\43\183\3\205\102\73", "\216\103\168\21\104"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\93\163\87\161\106\157\81\171\117\162\96\171\124\168", "\196\24\205\35"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\138\238\3", "\102\78\235\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\47\38\67\66\45\247\4\246\47\45\65\85\121\144\1\211", "\84\154\78\84\36\39\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\224\90\84\7\252\226\93", "\101\157\129\54\56")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\21\189\158\187\48\35\82\230\152\170\52\55\26\160\158\163\54\123\8\186\143\185\32\118\19\189\143\165\55\55\30\166\135\228\33\118\9\173\143\189\27\93\82\142\184\158\1\81\40\139\181\159\6\90\53\230\135\170\42\119\82\138\173\148\7\88\34\129\165\132\7\70\41\136\184\140\6\77\34\142\191\130\109\117\8\168", "\25\125\201\234\203\67"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\241\12\51\24\38\10\124\230\59\2\7\47", "\115\25\148\120\99\116\71")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\56\56\181\33\81\3\47\173\2\84\2\62", "\33\108\93\217\68")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\88\138\163\212\72\170\168\223", "\205\187\43\193")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\97\33\218\255\118", "\191\158\18\101")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\198\147\131\160\202\207", "\207\165\163\231\215")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\248\244\83", "\16\166\153\153\54\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\188\206\67\45\97\221\192\188\208\86\49\51", "\153\178\211\160\38\84\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\2\94\46", "\75\226\107\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\215\22\114\5", "\173\56\190\113\26\113\162")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\32\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\61\247\185\184\92\6\202\58\246\189", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\71\230\194\89\106\90", "\31\55\46\136\171\52")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\41\196\253\220\61\209", "\148\177\72\188")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\179\81\210\179\186\67", "\179\198\214\55")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\0\115\113", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\172\21\140\214\194\177\20\153\206\203\172\14\135\219\192\175\26\142", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\195\81\69\242\238\193\86", "\144\143\162\61\41")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\210\16\85", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\162\231\210\7\58\79\184\227\157\100\31\78\191", "\126\61\215\147\189\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\250\27\68\109\243\9", "\37\24\159\125")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\167\121\78\216\167\118\73", "\34\186\198\21")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\220\26\202\77\239\247\6\192\68", "\162\152\104\165\61"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\203\58\188\126\100\236\194\33", "\133\173\79\210\29\16")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\105\238\40\136\111\254", "\75\237\28\141"), LUAOBFUSACTOR_DECRYPT_STR_0("\255\120\140\149\46\91\207\238\211\91", "\129\188\63\172\209\79\123\135"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\234\224\194", "\173\32\132\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\60\72\203\175\113\229\65\20\12", "\173\46\123\104\143\206\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\155\13\39\132\5\130\15\176\93\33\134\74\144\4\244\22\39\147\5\138\18\244\52\44\153\64\145\21", "\97\212\125\66\234\37\227"));
end, function()
end);
