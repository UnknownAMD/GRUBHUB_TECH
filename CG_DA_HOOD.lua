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
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\63\188\61\87\119\13\3\63\162\40\75\37", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\228\191\184\184", "\199\122\141\216\208\204\221")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\133\182\66", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\0\89\82", "\128\236\101\63\38\132\33")});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\212\33\206\5", "\100\39\172\85\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\113\189\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\204\202\53\242", "\93\134\165\173")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\79\121\4", "\106\133\46\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\41\119\249", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\205\227\66", "\224\58\168\133\54\58\146")});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\119\87\70\248", "\107\57\54\43\157\21\230\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\147\5\231\184", "\175\187\235\113\149\217\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\166\133\73", "\24\92\207\225\44\131\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\218\191\68\15", "\29\43\179\216\44\123")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\216\45\73", "\44\221\185\64")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\230\65\81", "\19\97\135\40\63"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\85\55\62", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\174\214\102", "\196\46\203\176\18\79\163\45")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\50\118\23\40\247\175\159\55\112\4", "\143\216\66\30\126\68\155")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\5\194\201\175\151\199\165\199\9", "\129\202\168\109\171\165\195\183")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\87\32\214\214\29\234\46\24\16\205\208\14", "\134\66\56\87\184\190\116")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\62\30\181\17\226\45\57\124\23\6\180\29", "\85\92\81\105\219\121\139\65")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\178\94\78", "\191\157\211\48\37\28")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\28\252\19\53\211", "\90\191\127\148\124")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\142\34\30\108\134\60\14\56\165\47\4\125", "\119\24\231\78")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\34\169\67\223\69\81\177\57\164\94\213\79\31", "\113\226\77\197\42\188\32")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\25\251\177\122\48\253\161\52\19\231\166", "\213\90\118\148")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\38\187\88\72\27\29\160\89\95\94", "\45\59\78\212\54")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\87\195\169\137\54\164\254\23\22\160\135\147\44", "\144\112\54\227\235\230\78\205")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\41\79\200\216\94\178\60\29\249", "\59\211\72\111\156\176")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\134\163\14\79\148\234\35\65", "\77\46\231\131")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\93\177\72\174\87\186\85\184", "\32\218\52\214")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\5\52\173\217\191\80\73\75", "\58\46\119\81\200\145\208\37")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\3\137\49\168", "\86\75\236\80\204\201\221"),LUAOBFUSACTOR_DECRYPT_STR_0("\71\81\103\128\236\191\125\83\100\138", "\235\18\33\23\229\158"),LUAOBFUSACTOR_DECRYPT_STR_0("\124\181\214\190\66\142\206\169\67\181", "\219\48\218\161"),LUAOBFUSACTOR_DECRYPT_STR_0("\204\100\113\72\213\64\233\224\67\115\70\207\127\225\246\101", "\128\132\17\28\41\187\47")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\61\18\8\88\0\62\34\18", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\38\162\88\135\94\13\73\162\33\191\11\213\82\31\5\236\10\170\11\239\88\17\13\224\110\184\68\202\82\94\15\169\47\191\94\213\82\13\73\161\47\178\11\201\88\10\73\187\33\185\64\134", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\171\42\10\26\10\192\119\170\184\19\18\18\29\194\67\145\165\15\17\18\0", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\90\214\61\137\88\89\119\93\208\59\192\70\82\54\66\218\59\192\66\81\119\87\208\40\132\22\87\57\26", "\62\87\59\191\73\224\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\14\251\208\226\16\214\198\230\6\255\205\206\12", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\123\37\77\248\33\136\199\120\37\80\248\55\137", "\168\171\23\68\52\157\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\104\229\172\54\62\142\250\118\212\163\49\36\164\252\116\244\185", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\179\211\254\90\239\148\174\201\252\23\235\143\231\197\226\71\254\147\180\135\250\89\235\137\231\196\243\82\254\148\230", "\159\224\199\167\155\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\234\44\211\228\224\57\214\214\253\40\219\212\251\57\211\227", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\243\88\59\82\79\114\137\252\88\114\16\85\106\141\238\95\55\22\13", "\26\236\157\44\82\114\44")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\34\212\66\47\60\198", "\59\74\78\181")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\21\221\91\67\182\55\194", "\211\69\177\58\58")),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\224\105\249\224\200\182\241\124\241\218\223\184\247\120\242\236", "\171\215\133\25\149\137")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\211\205\34\246\230\51\253\86\228\204\1\238\224\34\253\69\228", "\34\129\168\82\154\143\80\156")),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\187\33\31\93\79\133\172\188\35\30\92\99\136\139\179\52\14\90", "\233\229\210\83\107\40\46")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\247\75\32\194\16\192\78\27\216\21\212\86\31\215\11\192\69\55\196", "\101\161\34\82\182")),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\25\77\238\232\231\144\56\225\14\92", "\78\136\109\57\158\187\130\226")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\22\43\237\225\13\58\235\231\55\60\252", "\145\94\95\153"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\208\204\29\219\107\161\248\195\0", "\215\157\173\116\181\46"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\184\138\235\223\39", "\186\85\212\235\146")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\136\6\214\60\231\95\202\149", "\56\162\225\118\158\89\142")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\10\240\163\35\193\89\23\243\163\45\207\120\10\215\161", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\140\104\181\29\141\127\183\19\141\115\176", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\219\150\242\198\200\16\222\176\254\249\200\31\195\135\217\229\200\31", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\44\243\85\93\125\207\236\37\197\83\116\125", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\68\218\124\3\80\69\195\101\18\75\69\194", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\35\117\126\25\52\113\91\0\26\117\64\21\46\88\65\31\59", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\54\191\123\140\171\74\185\169\1\164\123\179", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\152\188\221\150\136\188\198\175\142\173\240\181\130\164", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\165\227\213\178\152\231\211\164\186\210\223\177\178\234\213", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\162\186\208\161\88\94\199\189\179\209\172\123\88\247\191\185\255\173\79", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\212\6\1\87\62\206\10\17\88\51\223\25\17\82\45\223\26\27\90", "\22\114\157\85\84")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\227\50\240\98\197\152\253\244\49\235\114\218", "\200\164\171\115\164\61\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\211\33\122\183\150\209\46\96\188\156\219\44\105", "\227\222\148\99\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\103\102\217\198\23\96\125\198\198\16\115\97\222\198\18\127\125\195\215\7", "\153\83\50\50\150")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\67\71\51\76\143\127\114\70\76\63\82\152\101\98\84\92\51\95", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\27\0\217\13\115\178\234\28\2\246\9\117\189\226\26\8\246\9\82\182\206\30", "\217\161\114\109\149\98\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\51\25\104\168\113\31\48\44\117\178\115\38\47\20\115\191\127", "\20\114\64\88\28\220")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\8\223\152\247\211\182\19\14\221\184", "\221\81\97\178\212\152\176")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\226\27\250\15\193\243\41\250\8\202\226\9\203\27\223\243", "\122\173\135\125\155")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\133\200\13\181\48\50\195\176\192\18\190\58\37\248\133\211\20", "\168\228\161\96\217\95\81")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\250\216\35\108\61\82\223\216\45\72\38\88\213\226\58\78\42\89\220\197\38\106\46\91\206\212", "\55\187\177\78\60\79")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
		for _, toggle in ipairs(togglesTable) do
			if (type(toggle) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\57\207\93\231\67", "\224\77\174\63\139\38\175")) then
				continue;
			end
			if (toggle.name:lower() == tostring(excludedToggleName):lower()) then
				continue;
			end
			toggle:Set(false);
		end
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\169\64\74\37\129\85\72\34\133\66\93\29\129\83\78\39\135\68", "\78\228\33\56")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\253\125\160\10\149\218", "\229\174\30\210\99")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\55\226\133\80\225\14\58\9\228\150\69", "\89\123\141\230\49\141\93"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\195\112\228\24\62\75\254\116", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\179\32\126\233\231\6\162\31\112\232\252\63\167\63\107", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\168\91", "\201\98\105\199\54\221\132\119")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\3", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\204\250\241\30\201\89\226\225\241\45\195\86\206\240\235\56", "\160\62\163\149\133\76")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\230\161\31\59\237\215\173\8", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\41\23\197\231\0\41\18\211\250", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\2\224", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\92\197\100\40\52\82\224\167\71\203\115\18\48\80\207\167", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\161", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\115\83\6\39\110\115\68\60\58\65\91\64\26\50\69\114\89\11\61\82", "\83\38\26\52\110")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\104\22\53\82\118\22\42\67", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\230\95\222\49\99\227\255\93\196\9\83\244", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\240\68", "\191\182\225\159\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\27\47\93\159\175\203\59\32\33\82\170\147\214\42\17\32\88\142\137\214", "\162\75\114\72\53\235\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\51", "\98\236\92\36\130\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\16\11\178\81\131\187\53\161\43\5\189\100\188\161\49\167\17\1\191\75\188", "\80\196\121\108\218\37\200\213")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\48\114\16\107\101\15\135\5", "\234\96\19\98\31\43\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\22\85\207\184\94\132\17\26\64\235\169\117", "\235\102\127\50\167\204\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\179\250\46", "\78\48\193\149\67\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\23\135\16\85\27\16\133\29\115\57\25\161\12\85\49\29\136\21\68\62\10", "\33\80\126\224\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\167", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\253\3\46\182\166\250\15\42\167\181\253\3\7\182\147\245\7\46\175\130\250\16", "\194\231\148\100\70")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\118\77\211\183\216\201\75\73", "\168\38\44\161\195\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\245\133\126\36\206\185\25\148", "\118\224\156\226\22\80\136\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\252\86\141", "\224\34\142\57")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\174\194\213\103\208\83\5\210\162\247\212\116\208\73\26\223\164\205\208\118\255\73", "\110\190\199\165\189\19\145\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\228", "\167\186\139\23\136\235")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\180\154\3\19\187\143", "\109\122\213\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\205\208\226\20\239\183\138\63\225\243", "\80\142\151\194"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\37\243\91\96\58\249\91\99\34\226\82\104\60\229\95\109\49", "\44\99\166\23")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\94\246\42\61\35\165\127\252", "\196\28\151\73\86\83"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\51\33\31\140\93\37", "\22\147\99\73\112\226\56\120"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\131\69\234\250\131\189\72", "\237\216\21\130\149"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\166\79\75\94\150\198\82\134\75\77", "\62\226\46\63\63\208\169"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\198\12\71\145\26\3\44\71", "\62\133\121\53\227\127\109\79"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\21\49\254\198\175\161\27", "\194\112\116\82\149\182\206"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\17\189\65\25\206\237\7\61", "\110\89\200\44\120\160\130"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\205\77\73", "\45\203\163\43\38\35\42\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\241\162\156\7\134\233\124\221\138\216", "\52\178\229\188\67\231\201"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\79\86\11", "\67\65\33\48\100\151\60"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\192\238\252\242\159\207\161\215\247", "\147\191\135\206\184"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\160\206", "\210\228\72\198\161\184\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\21\110\179\52\114\142\30\70\252\20", "\174\86\41\147\112\19"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\82\14\139\4", "\203\59\96\237\107\69\111\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\7\49\236\197\48\176\255\43\25\168", "\183\68\118\204\129\81\144"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\163\118\235", "\226\110\205\16\132\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\160\253\64\171\235\239\214\69", "\33\139\163\128\185"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\68\77\7\221\82\75\23", "\190\55\56\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\124\58\18\163\219\89\160\56", "\147\54\207\92\126\115\131"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\54\59\114\31\123\9", "\30\109\81\85\29\109"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\214\101\81\187\37\250\238\240\97", "\156\159\17\52\214\86\190"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\138\253\178\172", "\220\206\143\221"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\181\117\34\7", "\178\230\29\77\119\184\172"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\177\14\2\82\254\243\187\9\15\100", "\152\149\222\106\123\23"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\41\224\70\184\216\40\226", "\213\189\70\150\35"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\100\27\91", "\104\47\53\20"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\135\73\128\24", "\111\195\44\225\124\220"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\238\67\3\103\164\185\139", "\203\184\38\96\19\203"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\102\116\64\192\54\122\125\115\193\54\103\73\64\220\45", "\174\89\19\25\33"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\6\28\65\90\246\137\8\42", "\107\79\114\50\46\151\231")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\27\167\166\44\186\56\165\212", "\160\89\198\213\73\234\89\215"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\107\125\189\253\206\108\116\160\251\198\92\126\166", "\165\40\17\212\158"));
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
		TABLE_TableIndirection["gameClientStats%0"] = stats();
		TABLE_TableIndirection["gameClientNetwork%0"] = TABLE_TableIndirection["gameClientStats%0"].Network;
		TABLE_TableIndirection["ServerStatsItem%0"] = TABLE_TableIndirection["gameClientNetwork%0"].ServerStatsItem;
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\216\28\50\102\213\208\6\52", "\70\133\185\104\83")]:GetValueString()):split(" ")[1];
		TABLE_TableIndirection["PlayerPing%0"] = tonumber(TABLE_TableIndirection["gameClientPing%0"]) or 100;
		TABLE_TableIndirection["pingOffset%0"] = TABLE_TableIndirection["PlayerPing%0"];
		TABLE_TableIndirection["predictionOffset%0"] = 0 / 100;
		TABLE_TableIndirection["targetPosition%0"] = targetPlr.Character and targetPlr.Character:FindFirstChild(targetPart);
		if not TABLE_TableIndirection["targetPosition%0"] then
			return;
		end
		TABLE_TableIndirection["targetVelocity%0"] = targetPlr.Character.PrimaryPart.Velocity;
		TABLE_TableIndirection["targetPosition%1"] = TABLE_TableIndirection["targetPosition%0"].Position;
		TABLE_TableIndirection["targetDirection%0"] = TABLE_TableIndirection["targetPosition%1"] + (TABLE_TableIndirection["targetVelocity%0"] * TABLE_TableIndirection["pingOffset%0"] * TABLE_TableIndirection["predictionOffset%0"]);
		TABLE_TableIndirection["targetArrivalTime%0"] = (TABLE_TableIndirection["targetDirection%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude / 1000;
		TABLE_TableIndirection["targetPredictedPosition%0"] = TABLE_TableIndirection["targetDirection%0"] + (TABLE_TableIndirection["targetVelocity%0"] * TABLE_TableIndirection["targetArrivalTime%0"]);
		return TABLE_TableIndirection["targetPredictedPosition%0"];
	end
	local function DA_HOOD_PREDICTION_OLD(targetPlr, targetPart, predictionStrength)
		TABLE_TableIndirection["gameClientStats%0"] = stats();
		TABLE_TableIndirection["gameClientNetwork%0"] = TABLE_TableIndirection["gameClientStats%0"].Network;
		TABLE_TableIndirection["ServerStatsItem%0"] = TABLE_TableIndirection["gameClientNetwork%0"].ServerStatsItem;
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\32\68\80\43\137\52\76\74\45", "\169\100\37\36\74")]:GetValueString()):split(" ")[1];
		TABLE_TableIndirection["PlayerPing%0"] = tonumber(TABLE_TableIndirection["gameClientPing%0"]) or 100;
		TABLE_TableIndirection["pingOffset%0"] = TABLE_TableIndirection["PlayerPing%0"];
		TABLE_TableIndirection["predictionOffset%0"] = predictionStrength / 100;
		TABLE_TableIndirection["targetPosition%0"] = targetPlr.Character and targetPlr.Character:FindFirstChild(targetPart);
		if not TABLE_TableIndirection["targetPosition%0"] then
			return;
		end
		TABLE_TableIndirection["targetVelocity%0"] = targetPlr.Character.PrimaryPart.Velocity;
		TABLE_TableIndirection["targetPosition%1"] = TABLE_TableIndirection["targetPosition%0"].Position;
		TABLE_TableIndirection["targetPredictedPosition%0"] = TABLE_TableIndirection["targetPosition%1"] + (TABLE_TableIndirection["targetVelocity%0"] * TABLE_TableIndirection["pingOffset%0"] * TABLE_TableIndirection["predictionOffset%0"]);
		return TABLE_TableIndirection["targetPredictedPosition%0"];
	end
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\146\175\81\14\136\171\84\50\136\173\68\48\134\176\68", "\48\96\231\194"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\224\79\3\44\23\215\166\135", "\227\168\58\110\77\121\184\207"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\83\41\178\65\191\212\120\161\73\51\176\84\129\218\99\177", "\197\27\92\223\32\209\187\17"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\74\206\250\13\80\202\255\49\80\204\239\51\94\209\239", "\155\99\63\163"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\208\172\136", "\228\226\177\193\237\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\160\38\227\48\240\14\231\55\162\44", "\134\84\208\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\169\128\93\6\160\146", "\60\115\204\230")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\234\119", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\100\3\54\74\121\121\87\102\9\21\66\85\127", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\46\45\40\13\197\44\42", "\111\164\79\65\68")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\228\214\135\199\24\239\202\214\128\215\58\243", "\138\166\185\227\190\78"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\227\97\200\54\92\44\16\207", "\121\171\20\165\87\50\67"));
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
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\57\180\51", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\230\124\4\130\156\219\247\122\19\137\156\221\243\96\3\143\210\242", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\140\70\0\5\227\222\167\94\15\9", "\141\186\233\63\98\108")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\250\41\179\33\177\199\45\181\55\254\170\7\179\60\243\227\34\178", "\69\145\138\76\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\84\202\143\136\170\26\100", "\118\16\175\233\233\223")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\139\49\190", "\29\235\228\85\219\142\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\219\182\217", "\50\93\180\218\189\23\46\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\168\90\75", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\85\217\177\254\80\12\63\87\211\159\255\100\15\53\75\216\146\246\124\10", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\168\207\51\91\7\228", "\58\100\143\196\163\81")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = active;
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\67\46\166", "\110\122\34\67\195\95\41\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\190\27\121\218\122\166\95\69\193\123", "\182\21\209\59\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\82\195\28\52\178\163", "\222\215\55\165\125\65")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\221\199\29", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\133\53\194\120\111\160\152\54\194\118\97\161\133\18\192\95\122\164\141", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\53\169\208\116\174\212\141", "\230\77\84\197\188\22\207\183")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\21\203\249", "\85\153\116\166\156\236\193\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\238\89\186\164\38\168\233\67\180", "\96\196\128\45\211\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\136\125\94\199\163\160", "\184\85\237\27\63\178\207\212")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\85\8\88", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\137\176\77\45\139\173\74\12\161\168\69\12", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\180\174\139\95\180\161\140", "\231\61\213\194")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\6\202\136\127\154\28\209\140\47", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\206\199\207\186\199\213", "\174\207\171\161")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\242\12\244", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\7\242\5\63\29\233\1\60\15\234\13\43", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\189\237\204\234\198\186", "\174\139\165\209\129")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\139\166\239\192\200\12\121\124", "\24\195\211\130\161\166\99\16"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\228\41", "\118\38\99\137\76\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\40\9\29\10\43\189\7\11\27\4\33\233\47\10\28\26", "\64\157\70\101\114\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\169\171\239\18\65\171\172", "\112\32\200\199\131")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\36\68\72\168\208\241\109\99\66\93\175\141\172\43\56\88\73\186\214\184\39\62\83\83\182\215\174\44\56\30\95\183\206\228\32\35\68\88\189\213\147\6\99\119\110\141\225\131\23\14\111\104\157\224\131\109\33\81\85\182\140\143\35\4\95\83\188\226\165\43\33\81\72\177\204\165\23\34\92\83\187\200\174\48\98\92\73\185", "\66\76\48\60\216\163\203"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\116\246", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\37\95\64\179\174\62\19\104\164\162\58\67\73\178\237\3\71\73\187\190", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\77\238\240\117\251\79\233", "\23\154\44\130\156")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\51\167\190\171\6\18\3\178", "\115\113\198\205\206\86")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\88\241\86", "\58\228\55\158"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\89\132\238\10\89\132\238", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\180\40\239\66\62\233\190", "\95\138\213\68\131\32")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\8\41\162\72\102\43\43\170", "\22\74\72\193\35"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\28\113\235\86\41\90\229\84\32", "\56\76\25\132"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\204\214\26\37\124\252\207\31\117\8\210\204\31\38", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\173\60\52\43\173\51\51", "\88\73\204\80")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\130\19\77\57\219\45\136", "\186\78\227\112\38\73"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\200\88\242\89", "\26\156\55\157\53\51")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\184\91\53\223\59\247\169\68", "\84\133\221\55\80\175")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\188\241\141", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\204\83\255", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\70\3\250", "\142\192\35\101")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\116\36\166", "\118\182\21\73\195\135\236\204")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\61\22\76\6\12\254\3", "\157\104\92\122\32\100\109")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\66\51\149\125\30\255\37", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\237\194\162\30\79\109", "\25\18\136\164\195\107\35")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\33\168\72", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\229\38\214\7\223\137\43\224\42\221", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\220\51\77\184\205\219", "\47\217\174\176\95")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\142\216\117\22\189\70\43", "\70\216\189\22\98\210\52\24")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\54\21\164\201\62\10\240", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\162\26\36\248\212\179", "\192\209\210\110\77\151\186")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\196\6\36\232\234\200\244", "\164\128\99\66\137\159")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\133\232\185", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\186\170\19\135\240\251\141\178\181\24\141\231\192\184\161\179", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\50\36\215\68\1\79", "\36\152\79\94\72\181\37\98")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\54\234\42\91\131\9\245\20\226\63\86\137\12\177", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\166\208\117\93\240\167\231\118\89\251", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\181\63\120\137\54\112\203\81\185\43\118\143\59\127", "\235\26\220\82\20\230\85\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\164\239\195\97\132\181", "\20\232\193\137\162")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\208\193\163", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\160\169\20\243\237", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\133\17\19", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\50\224\30\247\53\200\16\232\11\250\63\205\63", "\86\163\91\141\114\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\10\120\127\56\82\8\127", "\90\51\107\20\19")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\254\131\224", "\93\237\144\229\143"), LUAOBFUSACTOR_DECRYPT_STR_0("\54\209\176\61\10\6\61\249\255\29", "\38\117\150\144\121\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\178\227\54\34\184\229\122\8\181\239\56\33\190\234\96\109", "\90\77\219\142") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\237\63\32\175\244\231\112\32\172\244\224\59", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\181\0\9\13\228\10", "\136\126\208\102\104\120")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\134\207\68", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\251\240\132\126\15\249\246\134\126\15\249\248\140\114\4\247\254\131\119\0\243\250", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\194\24\225\45\169\72\200", "\200\43\163\116\141\79")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\55\48\134", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\75\162\191\93\153\236\70\189", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\46\35\190\244\42\63", "\129\70\75\69\223")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\64\199\242\238", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\140\173\250\47\236\215\219", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\184\35\11\209\184\44\12", "\103\179\217\79")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\182\17\208", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\87\35\55\101\212\2\90\60\126\23\253\30\86\59\40\32\234", "\152\109\57\87\94\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\210\12\162\171\222\64", "\200\153\183\106\195\222\178\52")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\137\58", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\89\222\1\84\19\140\84\219\39\88\44\140\91\198\16", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\127\47\71\169\25\125\40", "\203\120\30\67\43")]=function(toggleBool)
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
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\22\125\208\250\208\6\101\202", "\185\145\69\45\143")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\175\44\41\153\255\171\60\49\131", "\188\234\127\121\198")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\29\1\35\188\27\19\48\171\29", "\227\88\82\115")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\102\44\138\152\33\82\96\55\159", "\19\35\127\218\199\98")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\57\200\58\221\63\218\41\202\57", "\130\124\155\106")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\240\248\198\144\128\215\95\151\240", "\223\181\171\150\207\195\150\28")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\105\9\211\145\42\109\25\203\139", "\105\44\90\131\206")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\102\240\21\170\94\115\234\58\117\247\7\189\83\122\253", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\69\235\242\23\76\249", "\147\98\32\141")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\79\226\205", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\15\148\163\164\188\151\113\8\134\180\169\181\128", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\225\121\198\232\138\26\221", "\182\126\128\21\170\138\235\121")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\174\233\5\217\165\50\19\46\174", "\102\235\186\85\134\230\115\80")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\114\63\14\96\81\245\1\127\41", "\66\55\108\94\63\18\180")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\49\190\181\8\4\120\55\165\160", "\57\116\237\229\87\71")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\143\130\221\216\84\207\100\130\148", "\39\202\209\141\135\23\142")].UnLoad();
		end
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\50\4\15", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\201\73", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\27\41\43\20\11\59", "\103\79\126\79\74\97")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\115\210\116", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\197\221\227\198\185\64\160", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\59\65\213\42\122\186\252", "\217\151\90\45\185\72\27")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\230\79\215\45\117\226\95\207\55", "\54\163\28\135\114")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\13\232\109\189\109\94\11\243\120", "\31\72\187\61\226\46")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\7\78\215", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\113\215\194\23\180\132", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\11\253\247\59\2\239", "\150\78\110\155")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\201\38\230", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\154\212\175\128\216\198\189\197\134\146", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\138\50\123\82\138\61\124", "\23\48\235\94")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\89\233\232\98\116\18\241\84\255", "\178\28\186\184\61\55\83")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\225\254\119\3\209\47\214\236\232", "\149\164\173\39\92\146\110")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\38\29\26", "\123\147\71\112\127\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\223\131\114\67\222\222", "\38\172\173\226\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\20\42\238\88\29\56", "\143\45\113\76")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\190\180\29\59", "\92\216\216\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\94\33\188\116\239\90\49\169\82\238", "\157\59\82\204\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\63\239\246\235\235\208\186", "\209\88\94\131\154\137\138\179")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\13\146\244\67\61\2\18\10\13", "\66\72\193\164\28\126\67\81")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\194\31\152\103\5\87\196\4\141", "\22\135\76\200\56\70")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\49\245\33", "\129\237\80\152\68\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\189\16\252\58\22\74\92", "\56\49\200\100\147\124\119")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\178\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\14\171\73", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\175\227\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\76\236\92", "\40\237\41\138")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\247\253", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\235\182\77\49\17\67\253\169\87\97\97\103\241\172\71\104", "\65\42\158\194\34\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\34\84\13\56\225\15", "\142\122\71\50\108\77\141\123")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\174\254\31", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\8\42\23\5\248\39\17\8\46\53\58\255\33\3", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\29\195\82\202\216\185\28", "\218\119\124\175\62\168\185")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\132\229\92\203\229\192\65\199\174\229\88\132\136\255\70\193\188", "\164\197\144\40"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\161\241\185\142\237\183\145\228", "\214\227\144\202\235\189")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\192\170\137\126\9\151\65\51\253", "\92\141\197\231\27\112\211\51"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\254\135\166", "\177\134\159\234\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\254\43\175\137\142\255\48\173\217", "\169\221\139\95\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\121\62\55\42\202", "\70\190\235\31\95\66")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\238\27\225", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\234\247\203\207\183\55\49\239\247\203\219\164\52\57\249\239\197\219", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\47\179\71\213\234\222\139", "\189\224\78\223\43\183\139")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\15\233\158\25\129\29\232\133\27\209", "\161\78\156\234\118"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\148\163\198\209\183", "\188\199\215\169"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\8\82\126", "\136\156\105\63\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\153\109\59\91\160\124\32\15\153\122\49", "\84\123\236\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\142\172\22\185\185\228", "\213\144\235\202\119\204")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\20\223\45", "\45\67\120\190\74\72\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\55\249\170\245\141\250\253\53\33\232\163\248\154\227\239\44\35\234", "\137\64\66\141\197\153\232\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\209\46\170\138\2\211\41", "\232\99\176\66\198")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\205\52\60\9\59\161\252\56\248\52\43\3", "\76\140\65\72\102\27\237\153"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\113\246\19\198\195\20\189\79\231", "\222\42\186\118\178\183\97"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\102\192\65\158\73\249\71\143\96\172\9\202\25\185", "\234\61\140\36"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\220\183\119", "\111\65\189\218\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\78\15\33\2\82\168\80", "\207\35\43\123\85\107\60")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\171\173\239", "\25\16\202\192\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\202\164\236", "\148\157\171\205\130\201"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\221\112\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\29\28\89", "\45\237\120\122")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\233\175\41", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\233\235\62\89\72", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\200\164\225", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\33\169\12\66", "\54\63\72\206\100")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\76\81\110\234\117\219", "\27\168\57\37\26\133")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\1\165\125\172", "\183\77\202\28\200"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\33\155\7\5", "\104\119\83\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\223\103\6\66\181\208\40\45\71", "\35\149\152\71\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\63\233\75\188\63\29\168\86\191\122\21\231\67\180\122\26\231\76\182\51\30\168\19\241", "\90\121\136\34\208"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\28\71\17\213", "\126\167\110\53"), LUAOBFUSACTOR_DECRYPT_STR_0("\30\55\110\220\221\127\21\31\33\252", "\95\93\112\78\152\188"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\244\140\25\225\186\146\213\250\197\25\235\191\214\129\246\138\27\226\183\213\129\167\196", "\178\161\149\229\117\132\222"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\222\175\164\5\181", "\67\232\187\189\204\193\118\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\168\9\245\4\58\66\199\132\33\177", "\143\235\78\213\64\91\98"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\71\133\237\117\178\205\75\139\231\118\191\138\4\196\236\126\188\130\81\197", "\214\237\40\228\137\16"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\182\226\249\220", "\198\229\131\143\185\99"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\84\158\186\124\67", "\19\49\236\200"), LUAOBFUSACTOR_DECRYPT_STR_0("\221\16\182\147\229\250\214\56\249\179", "\218\158\87\150\215\132"), LUAOBFUSACTOR_DECRYPT_STR_0("\221\31\208\238\51\38\141\239\17\153\241\55\52\200\187\29\214\236\48\43\202\186", "\173\155\126\185\130\86\66"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\179\185\196\141\255\246", "\140\133\198\218\167\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\150\9\244\89\133\245\6\187\114\128", "\228\213\78\212\29"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\67\184\3\226\128\12\165\4\253\130\72\246\17\228\199\85\185\16\249\199\79\186\12\251\133\67\183\23\239\198", "\139\231\44\214\101"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\225\0\81", "\118\185\143\102\62\112\209\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\127\87\105\194\164\85\52\55\83\116", "\88\60\16\73\134\197\117\124"), LUAOBFUSACTOR_DECRYPT_STR_0("\96\235\235\220\68\16\227\236\136\82\95\231\253\223\73\85\248\253\136\82\81\236\253\137", "\33\48\138\152\168"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\61\84", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\55\154\131\130\105\58\243\148\131\22", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\19\160\194\24\249", "\46\151\122\196\166\116\156\169")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\75\31", "\155\133\141\38\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\43\184\64\92\60\246\112\121\249", "\197\69\74\204\33\47\31"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\70\94\131\252\74", "\231\144\47\58")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\156\217\215\112", "\89\210\184\186\21\120\93\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\179\92\110\208\125\121\232\0\45\131", "\90\209\51\28\181\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\114\83\234\179\213", "\223\176\27\55\142")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\186\195\176", "\213\68\219\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\199\1\167\30\205\58\114\14", "\31\107\128\67\135\74\165\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\237\250\76\84\189\204", "\209\184\136\156\45\33")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\201\121\4\186\6\203\126", "\216\103\168\21\104")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\172\78\161", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\142\237\19\110\160\230\31\44\130\237\2", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\43\45\70\78\55\179\26\251\35\49", "\84\154\78\84\36\39\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\228\88\77\69\214\228\79\90\12\243\229", "\101\157\129\54\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\172\140\170\54\117\9", "\25\125\201\234\203\67")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\84\251\28\6", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\50\190\35\77\9", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\71\160\170", "\205\187\43\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\119\11\202\245\119\28\221\247\124\1\217\242\115\2", "\191\158\18\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\194\139\187\173\196\192\140", "\207\165\163\231\215")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\248\244\83", "\16\166\153\153\54\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\187\193\82\116\18\233\203", "\153\178\211\160\38\84\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\14\92\42\151\7\78", "\75\226\107\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\210\16\125", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\214\44\17\228\219\199\57\10\240\204\210\40\3\251\202\217", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\46\244\165\250\124\8\206", "\107\165\79\152\201\152\29")]=function(active)
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
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\79\229\206", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\58\211\228\145\9\209\251\196\38\200", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\191\89\218\171\163\90", "\179\198\214\55")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\13\106\127\72\198\253", "\179\144\108\18\22\37")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\166\29\136\218\202\183", "\175\166\195\123\233")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\206\92\78", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\220\19\85\107\131\33\239\195\28\93\125\146\61\244\213\17\81\117", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\182\255\209\69\31\94\188", "\126\61\215\147\189\39")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\254\16\64", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\179\97\77\154\130\103\77\202\230\86\67\201\174", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\13\195\92\215\244\28", "\162\152\104\165\61")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\46\190\113\114\228\206\36", "\133\173\79\210\29\16")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\169\110\226\59\160\115\227\46\148", "\75\237\28\141"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\242\94\193\180", "\129\188\63\172\209\79\123\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\246\227\195\65\224\227\141\110\241\237\200", "\173\32\132\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\26\4\227\172\48\206\69", "\173\46\123\104\143\206\81")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\143\49\39\158\81\150\2\177\32", "\97\212\125\66\234\37\227"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\177\196\164\48\16\139\231\179\8\94\199\163\242\98\74\217", "\126\234\131\214\85"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\191\242\91\95\65\133\209\76\103", "\47\228\181\41\58")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\157\219\203\62\13\49\27\163\193", "\127\198\156\185\91\99\80")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\219\27\193\245", "\190\149\122\172\144\199\107\89")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\0\245\251\251\63\69\242\241\250\55\22", "\158\82\101\145\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\255\14\26\70\113\253\9", "\36\16\158\98\118")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\24\197\244", "\133\160\118\163\155\56\136\71"), LUAOBFUSACTOR_DECRYPT_STR_0("\213\133\49\214\183\95\157\249\173\117", "\213\150\194\17\146\214\127"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\172\176\215\78\173\172\49\91\133\165\192\67\183\182\118\63\168\228\252\73\171\166\118\56\166\160\209\85\229", "\86\123\201\196\180\38\196\194"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\255\252\205\191\228\178\150\224\229\233\206\225\240\225\205\167\226\234\204\188\242\250\218\160\249\252\220\161\227\166\218\160\250\167\219\160\227\236\220\185\207\204\150\136\197\221\251\135\194\202\230\155\210\203\241\224\250\233\208\161\184\236\216\234\165\184\209\160\248\236\156\253\167\235\214\171\242\251\151\165\228\231\215", "\207\151\136\185"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\145\58\141\102", "\17\200\227\72\226\20\24"), LUAOBFUSACTOR_DECRYPT_STR_0("\147\102\91\243\200\177\199\240\191\69", "\159\208\33\123\183\169\145\143"), LUAOBFUSACTOR_DECRYPT_STR_0("\212\91\49\58\247\94\120\2\253\26\30\51\230\89\48\118\222\91\44\51\225\78\120\18\243\26\16\57\253\94\120\21\253\94\61\37\179", "\86\146\58\88"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\75\202\233\195\171\250\37", "\154\56\191\138\160\206\137\86"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\126\181\163\125\122\169\195\137\93", "\172\230\57\149\231\28\90\225"), LUAOBFUSACTOR_DECRYPT_STR_0("\36\175\146\209\32\222\6\234\170\211\60\222\17\190\198\246\41\155\42\165\137\214\104\248\13\174\131\193\105", "\187\98\202\230\178\72"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\4\239\176\53\88\17\243\171\61\69\2\238\160\53", "\42\65\129\196\80"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\75\80\223", "\142\98\42\61\186\119\103\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\190\16\15\61\171\66\56\52\190\27\13\42\255\37\61\17", "\104\88\223\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\246\238\194\0\236\71\252", "\141\36\151\130\174\98")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\140\110\214\29\151\32\141\66\150\123\213\67\131\115\214\5\145\120\215\30\129\104\193\2\138\110\199\3\144\52\193\2\137\53\192\2\144\126\199\27\188\94\141\42\182\79\224\37\177\88\253\57\161\89\234\66\137\123\203\3\203\89\229\50\160\91\253\37\171\85\230\50\176\91\240\42\161\78\253\42\177\83\140\1\145\123", "\109\228\26\162"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\89\224\233\72\236\231\71\224\239\91\225\245\86", "\134\62\133\157\24\128")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\160\22\220\63\190\196\19\131\15\215\44", "\182\103\197\122\185\79\209")]=teleportFunc});
		end
	end});
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\146\226\116\5\91\224", "\40\147\231\129\23\96"), LUAOBFUSACTOR_DECRYPT_STR_0("\86\223\204\97\186\236\244\122\247\136", "\188\21\152\236\37\219\204"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\231\49\3", "\108\32\137\87"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\207\64\130\46\185\99\86\165\236", "\57\202\136\96\198\79\153\43"), LUAOBFUSACTOR_DECRYPT_STR_0("\132\51\175\169\205\166\246\175\99\169\171\130\180\253\235\40\175\190\205\174\235\235\10\164\180\136\181\236", "\152\203\67\202\199\237\199"));
end, function()
end);
