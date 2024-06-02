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
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\50\118\23\40\247\175\159\55\112\4", "\143\216\66\30\126\68\155")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\5\194\201\175\151\199\165\199\9", "\129\202\168\109\171\165\195\183")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\87\32\214\214\29\234\46\24\16\205\208\14", "\134\66\56\87\184\190\116")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\62\30\181\17\226\45\57\124\23\6\180\29", "\85\92\81\105\219\121\139\65")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\178\94\78", "\191\157\211\48\37\28")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\28\252\19\53\211", "\90\191\127\148\124")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\142\34\30\108\134\60\14\56\165\47\4\125", "\119\24\231\78")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\34\169\67\223\69\81\177\57\164\94\213\79\31", "\113\226\77\197\42\188\32")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\25\251\177\122\48\253\161\52\19\231\166", "\213\90\118\148")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\38\187\88\72\27\29\160\89\95\94", "\45\59\78\212\54")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\87\195\169\137\54\164\254\23\22\160\135\147\44", "\144\112\54\227\235\230\78\205")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\41\79\200\216\94\178\60\29\249", "\59\211\72\111\156\176")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\134\163\14\79\148\234\35\65", "\77\46\231\131")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\93\177\72\174\87\186\85\184", "\32\218\52\214")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\5\52\173\217\191\80\73\75", "\58\46\119\81\200\145\208\37")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\3\137\49\168", "\86\75\236\80\204\201\221"),LUAOBFUSACTOR_DECRYPT_STR_0("\71\81\103\128\236\191\125\83\100\138", "\235\18\33\23\229\158"),LUAOBFUSACTOR_DECRYPT_STR_0("\124\181\214\190\66\142\206\169\67\181", "\219\48\218\161"),LUAOBFUSACTOR_DECRYPT_STR_0("\204\100\113\72\213\64\233\224\67\115\70\207\127\225\246\101", "\128\132\17\28\41\187\47")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\61\18\8\88\0\62\34\18", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\38\162\88\135\94\13\73\162\33\191\11\213\82\31\5\236\10\170\11\239\88\17\13\224\110\184\68\202\82\94\15\169\47\191\94\213\82\13\73\161\47\178\11\201\88\10\73\187\33\185\64\134", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\171\42\10\26\10\192\119\170\184\19\18\18\29\194\67\145\165\15\17\18\0", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\90\214\61\137\88\89\119\93\208\59\192\70\82\54\66\218\59\192\66\81\119\87\208\40\132\22\87\57\26", "\62\87\59\191\73\224\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\14\251\208\226\16\214\198\230\6\255\205\206\12", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\123\37\77\248\33\136\199\120\37\80\248\55\137", "\168\171\23\68\52\157\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\104\229\172\54\62\142\250\118\212\163\49\36\164\252\116\244\185", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\179\211\254\90\239\148\174\201\252\23\235\143\231\197\226\71\254\147\180\135\250\89\235\137\231\196\243\82\254\148\230", "\159\224\199\167\155\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\234\44\211\228\224\57\214\214\253\40\219\212\251\57\211\227", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\243\88\59\82\79\114\137\252\88\114\16\85\106\141\238\95\55\22\13", "\26\236\157\44\82\114\44")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\34\212\66\47\60\198", "\59\74\78\181")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\21\221\91\67\182\55\194", "\211\69\177\58\58")),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\224\105\249\224\200\182\241\124\241\218\223\184\247\120\242\236", "\171\215\133\25\149\137")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\211\205\34\246\230\51\253\86\228\204\1\238\224\34\253\69\228", "\34\129\168\82\154\143\80\156")),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\187\33\31\93\79\133\172\188\35\30\92\99\136\139\179\52\14\90", "\233\229\210\83\107\40\46")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\247\75\32\194\16\192\78\27\216\21\212\86\31\215\11\192\69\55\196", "\101\161\34\82\182"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\197\12\80\240\254\244\135\32\252", "\78\136\109\57\158\187\130\226"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\51\248\232\59\45", "\145\94\95\153")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\196\4\253\75\190\250\197\0", "\215\157\173\116\181\46")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\187\187\254\219\44\177\153\193\214\58\163\175\253\205\59", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\143\2\247\21\225\91\201\163\25\241\53", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\11\212\166\14\215\95\14\242\170\49\215\80\19\197\141\45\215\80", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\140\104\181\23\142\117\178\54\160\115\179\61", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\219\150\242\217\211\28\216\146\217\229\200\31", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\243\83\75\120\197\233\55\247\113\116\127\195\251\0\232\83\119", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\95\218\122\3\80\69\195\101\18\75\69\194", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\35\117\98\21\35\110\91\19\50\88\65\31\59", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\138\51\174\113\187\146\68\183\171\44\159\123\184\184\73\177", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\130\164\214\179\131\175\225\170\136\173\214\151\140\171\192\181\166\173\203", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\156\213\229\151\153\213\239\147\155\199\242\154\144\194\239\148\154\201\252", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\133\151\224\151\101\105\205\146\148\251\135\122", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\218\23\11\66\58\216\24\17\73\48\210\26\24", "\22\114\157\85\84")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\254\39\235\98\210\154\235\251\44\231\124\197\128\251\234\62\235\104\216\156", "\200\164\171\115\164\61\150")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\193\55\106\188\154\198\44\117\188\157\213\48\109\188\156\219\44\105", "\227\222\148\99\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\65\115\226\237\54\95\66\226\240\61\85\102\249\213\60\81\89", "\153\83\50\50\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\127\126\48\124\168\70\127\121\124\16", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\23\11\244\23\124\173\245\19\31\242\7\100\137\192\0\25", "\217\161\114\109\149\98\16")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\19\41\53\112\179\119\25\20\57\110\187\113\6\16\57\110\168", "\20\114\64\88\28\220")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\16\8\223\132\234\213\185\56\2\198\189\247\222\142\37\19\215\186\255\196\181\7\0\222\161\253", "\221\81\97\178\212\152\176")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
		for _, toggle in ipairs(togglesTable) do
			if (type(toggle) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\217\230\31\247\31", "\122\173\135\125\155")) then
				continue;
			end
			if (toggle.name:lower() == tostring(excludedToggleName):lower()) then
				continue;
			end
			toggle:Set(false);
		end
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\169\192\18\178\58\37\216\136\192\3\188\12\52\218\146\200\3\188", "\168\228\161\96\217\95\81")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\232\210\60\85\63\67", "\55\187\177\78\60\79")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\1\193\92\234\74\252\131\63\199\79\255", "\224\77\174\63\139\38\175"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\180\64\74\58\170\64\85\43", "\78\228\33\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\107\191\2\139\193\119\182\49\138\193\106\130\2\151\218", "\229\174\30\210\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\137\92", "\89\123\141\230\49\141\93")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\126", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\169\34\107\213\225\8\135\57\107\230\235\7\171\40\113\243", "\136\111\198\77\31\135")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\50\8\181\66\147\229\26\172", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\3\148\36\16\1\163\171\31\140", "\204\217\108\227\65\98\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\209\250\232", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\175\2\59\241\223\167\44\59\215\215\163\5\34\198\216\180", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\41", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\15\10\229\44\46\4\253\10\15\10\204\44\18\12\238\48\11\8\227\44", "\141\88\102\109")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\216\100\52\60\88\196", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\167\181\32\239\155\162\56\254\188\158\45\252", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\104\91\3", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\30\32\78\76\63\46\86\106\30\32\103\76\3\38\69\80\26\34\72\76", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\224", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\136\248\65\203\253\143\250\76\237\223\134\222\93\203\215\130\247\68\218\216\149", "\191\182\225\159\41")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\27\19\58\65\165\134\207\46", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\53\67\234\71\46\131\43\65\240\127\7\139", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\3\183", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\122\5\119\95\37\132\5\118\48\118\76\47\158\20\114\1\119\70\11\132\20", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\16", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\168\242\43\80\15\94\170\249\38\118\39\87\128\225\55\69\45\88\172\240\45\80", "\78\48\193\149\67\36")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\0\31\146\12\111\49\19\133", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\161\4\204\72\202\167\12\208", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\230\11\43", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\69\198\171\226\233\72\71\205\166\196\193\65\109\213\183\247\203\78\65\196\173\226", "\168\38\44\161\195\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\180\243", "\118\224\156\226\22\80\136\214")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\85\239\75\142\75\224\94", "\224\34\142\57"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\128\133\249\114\177\117\1\209\163", "\110\190\199\165\189\19\145\61"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\222\91\196\178\248\246\196\86\204\174\227\229\200\95\201\185", "\167\186\139\23\136\235")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\180\139\6\10\180\139\6", "\109\122\213\232"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\213\199\170\63\224\242\159", "\80\142\151\194"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\246\127\67\13\195\74", "\44\99\166\23"));
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\94\246\42\61\35\165\127\252", "\196\28\151\73\86\83"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\219\22\36\17\140\87\17\114", "\22\147\99\73\112\226\56\120"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\123\228\250", "\237\216\21\130\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\105\31\123\177\137\118\141\65\91", "\62\226\46\63\63\208\169"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\23\83\140", "\62\133\121\53\227\127\109\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\51\114\209\215\238\138\31\27\54", "\194\112\116\82\149\182\206"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\166\74\23", "\110\89\200\44\120\160\130"), LUAOBFUSACTOR_DECRYPT_STR_0("\136\228\11\98\66\10\19\66\164\199", "\45\203\163\43\38\35\42\91"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\139\218\44", "\52\178\229\188\67\231\201"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\102\16\32\246\28\11\46\78\84", "\67\65\33\48\100\151\60"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\233\168\215", "\147\191\135\206\184"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\15\230\229\217\19\154\139\39\162", "\210\228\72\198\161\184\51"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\92\240\19\118\221\37", "\174\86\41\147\112\19"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\39\205\47\36\79\57\164\84\4", "\203\59\96\237\107\69\111\113"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\13\17\162\238\35\245\211", "\183\68\118\204\129\81\144"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\39\185\117\233\24\166\28\162\96", "\226\110\205\16\132\107"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\209\239\201", "\33\139\163\128\185"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\100\80\11\206", "\190\55\56\100"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\116\160\56\7\54\229\245\83\172\40\13", "\147\54\207\92\126\115\131"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\62\35\120\0\123\3\37", "\30\109\81\85\29\109"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\212\63\123", "\156\159\17\52\214\86\190"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\138\234\188\184", "\220\206\143\221"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\176\120\46\3\215\222\129", "\178\230\29\77\119\184\172"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\171\7\26\121\247\252\186\56\20\120\236\197\191\24\15", "\152\149\222\106\123\23"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\244\40\229\87\180\211\37\243", "\213\189\70\150\35")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\109\84\103\13\127\84\102\28", "\104\47\53\20"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\128\64\136\31\183\43\166\88\132\31\168\0\177", "\111\195\44\225\124\220"));
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\83\13\114\165\164\209\66\50\124\164\191\232\71\18\103", "\203\184\38\96\19\203"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\17\102\116\64\192\54\122\125", "\174\89\19\25\33"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\7\7\95\79\249\136\2\43\32\93\65\227\183\10\61\6", "\107\79\114\50\46\151\231"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\179\184\40\132\54\190\196\11\169\186\61\186\56\165\212", "\160\89\198\213\73\234\89\215"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\102\112\185\251", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\201\13\54\34\165\244\9\48\52\234", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\64\66\43\220\8\81", "\169\100\37\36\74")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\139\163\87", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\74\11\40\29\245\174\128\218\85\40\33\24\223", "\227\168\58\110\77\121\184\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\61\179\76\179\218\114\174", "\197\27\92\223\32\209\187\17")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\80\199\226\53\90\207\244\0\86\215\226", "\155\99\63\163"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\170\196\172\140\183\139\139\213", "\228\226\177\193\237\217"));
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
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\26\177\46\227", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\188\131\89\23\236\171\93\16\190\137\28\56\169\159\94\26\162\130", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\63\242\114\238\52\239\94\230\55\238", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\100\3\54\74\20\85\85\119\20\60\14\127\125\77\118\15\61\74", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\42\39\37\26\200\59", "\111\164\79\65\68")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\214\135\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\123\201\51", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\52\184\49", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\230\124\4\130\241\247\245\107\14\173\217\239\244\112\15\130\250\250\247\126", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\136\83\14\14\236\217\130", "\141\186\233\63\98\108")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = active;
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\235\33\179", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\94\192\201\186\179\25\103\203\134\158\177", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\129\51\186\251\135\105", "\29\235\228\85\219\142\235")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\216\187\218", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\171\107\64\69\197\77\204\151\87\67\83\216\71\201\170\125\64\69\219", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\208\184\248\124\14\55", "\109\92\37\188\212\154\29")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\169\198", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\76\55\170\127\111\233\7\20\69", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\180\93\75\195\121\165", "\182\21\209\59\42")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\177\91\196\26", "\222\215\55\165\125\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\223\210\19\212\205\228\68\43\247\202\27\245", "\42\76\177\166\122\146\161\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\123\119\166\129", "\22\197\234\101\174\25")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\53\168\217", "\230\77\84\197\188\22\207\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\26\210\245\204\146\228\58\244\4", "\85\153\116\166\156\236\193\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\229\75\178\241\12\176", "\96\196\128\45\211\132")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\129\122\88", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\87\29\86\27\77\6\82\24\95\5\94\15", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\134\168\72\9\134\167\79", "\36\107\231\196")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\117\160\175\134\83\186\171\131", "\231\61\213\194"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\6\210\142\60\162\72\255\143\54\164\9\202\136\48\167\27", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\202\205\194\173\202\194\197", "\174\207\171\161")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\229\234\25\227\235\141\162\177\31\242\239\153\234\247\25\251\237\213\248\237\8\225\251\216\227\234\8\253\236\153\238\241\0\188\250\216\249\250\8\229\192\243\162\217\63\198\218\255\216\220\50\199\221\244\197\177\0\242\241\217\162\218\12\219\247\216\233\223\3\250\245\214\249\247\2\253\205\217\225\241\14\248\253\197\163\242\24\242", "\183\141\158\109\147\152"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\8\235\9", "\108\76\105\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\202\189\237\203\232\209\241\197\220\228\213\161\228\202\171\236\165\228\195\248", "\174\139\165\209\129"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\178\238\205\196\2\115\115", "\24\195\211\130\161\166\99\16")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\250\41\99\23\84\23", "\118\38\99\137\76\51")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\201\41\10\30", "\64\157\70\101\114\105"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\169\170\230", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\80\180\131\170\46\32", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\135\117\255\93\207\39\177", "\68\218\230\25\147\63\174")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\143\43\80\71\166\172\41\88", "\214\205\74\51\44"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\202\68\237\242\114\217\77\238\240", "\23\154\44\130\156"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\63\167\160\171", "\115\113\198\205\206\86")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\70\235\83\148\23\223\86\136\23\202\85\139\91\237", "\58\228\55\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\136\220\34\62\172\54\191", "\85\212\233\176\78\92\205")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\104\89\139\233\90\89\139\233", "\130\42\56\232"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\222\186\43\239", "\95\138\213\68\131\32")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\124\232\93\60\118\246\76\63", "\56\76\25\132")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\220\202\29", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\165\52\61", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\134\22\82", "\186\78\227\112\38\73")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\175\217\26\213\186\81\143\211", "\48\236\184\118\185\216")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\188\90\53", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\238\41\230\235\83\190\236", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\184\254\130\87\213\250", "\185\142\221\152\227\34")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\201\86\253", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\74\8\226\175\64\14\232\172\66\2", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\116\37\175\229\141\175\29", "\118\182\21\73\195\135\236\204")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\62\57\25\84\11\31\174", "\157\104\92\122\32\100\109")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\66\51\149\97\16\238\58", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\93\248\208\170\4\77\106", "\25\18\136\164\195\107\35")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\204\40\175\78\103\176\213", "\216\136\77\201\47\18\220\161")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\224\42\221", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\199\221\51\64\186\197\228\62\93\190\203\196\15\78\171\218", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\54\21\232\246\60\19\164\210\58\1\230\240\49\28", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\183\23\47\254\212\164\159\179\3\40", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\10\47\229\240\199\235\67\9\236\230\198\233\13\38", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\140\239\191\21\133\253", "\222\96\233\137")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\148\188\163\26", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\32\57\47\217\64", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\212\70\56", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\54\234\42\91\131\9\158\58\254\36\93\142\6", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\162\197\123\86\255\160\194", "\52\158\195\169\23")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\178\52\123", "\235\26\220\82\20\230\85\27"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\134\169\230\117\200\137\230\205\112", "\20\232\193\137\162"), LUAOBFUSACTOR_DECRYPT_STR_0("\3\214\200\170\232\143\28\49\7\209\196\164\235\137\19\43\98", "\17\66\191\165\198\135\236\119") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\174\163\22", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\128\29\84\228\93\90\1\128\19\0\221\64\81\69\186\4\6\209\65\88\17\129", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\50\227\27\245\35\206", "\86\163\91\141\114\152")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\10\108\122\55\70\6", "\90\51\107\20\19")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\131\238\40\129\228", "\93\237\144\229\143")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\250\241\30", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\178\227\10\63\190\234\51\46\175\231\53\35\136\250\40\40\181\233\46\37\157\226\59\42", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\45\53\78\6\121\237", "\26\134\100\65\89\44\103")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue = Value;
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\226\61\38", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\190\18\1\88\196\17\179\13", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\143\200\66\186\94\41", "\49\24\234\174\35\207\50\93")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\254\252\143", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\205\0\228\3\167\72\200", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\55\49\143\178\245\224\180", "\131\223\86\93\227\208\148")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\205\68\187\179", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\37\49\182\161\10\36\38\180\161\20\46\54\176\237\48\46\55", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\206\245\232\105\227\82", "\143\38\171\147\137\28")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\142\184\244", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\183\33\19\218\149\32\4\216\139\42\20\220\181\57\2", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\182\16\217\67\141\160\65", "\195\42\215\124\181\33\236")]=function(toggleBool)
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
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\40\106\7\1\6\217\46\113\18", "\152\109\57\87\94\69")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\220\228\58\156\157\243\119\128\220", "\200\153\183\106\195\222\178\52")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\23\208\184\2\106\123\17\203\173", "\58\82\131\232\93\41")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\166\100\224\42\126\30\160\127\245", "\95\227\55\176\117\61")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\61\77\19\116\136\57\93\11\110", "\203\120\30\67\43")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\22\125\208\250\208\6\101\202", "\185\145\69\45\143")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\175\44\41\153\255\171\60\49\131", "\188\234\127\121\198")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\51\30\134", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\22\169\178\3\127\80\95\159\169\3\113\79\26\190", "\19\35\127\218\199\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\254\12\227\9\247\30", "\130\124\155\106")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\199\247\168", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\90\51\240\187\8\64\41\198\160\8\78\54\230\170", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\225\190\181\10\63\252\235", "\94\159\128\210\217\104")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\117\202\54\128\124\94\218\82\117", "\26\48\153\102\223\63\31\153")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\39\115\221\204\33\97\206\219\39", "\147\98\32\141")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\61\112\211\245\37\119\104\48\102", "\43\120\35\131\170\102\54")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\113\53\183\137\134\145\167\124\35", "\228\52\102\231\214\197\208")].UnLoad();
		end
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\225\120\207", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\213\45", "\102\235\186\85\134\230\115\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\9\56\94\103\216\54", "\66\55\108\94\63\18\180")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\129\132\48", "\57\116\237\229\87\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\162\253\197\120\246\66\185", "\39\202\209\141\135\23\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\50\5\6\48\249\252\56", "\152\159\83\105\106\82")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\164\245\97\205\234\125\162\238\116", "\60\225\166\49\146\169")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\10\45\31\21\34\38\12\54\10", "\103\79\126\79\74\97")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\126\222\118", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\215\192\196\221\160\66", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\75\216\61\119\173", "\217\151\90\45\185\72\27")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\112\230\21", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\200\77\172\79\114\45\239\92\133\93", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\7\79\222\69\127\39\200", "\68\163\102\35\178\39\30")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\155\67\234\248\32\148\160\57\155", "\113\222\16\186\167\99\213\227")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\11\61\203\201\13\47\216\222\11", "\150\78\110\155")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\196\42\228", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\155\197\130\132\199\208", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\56\118\69\135\42", "\23\48\235\94")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\214\217\90", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\222\87\8\224\15\246\193\223\84", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\38\28\19\24\26\240\44", "\123\147\71\112\127\122")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\233\254\178\78\101\237\238\170\84", "\38\172\173\226\17")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\104\34\28\208\110\48\15\199\104", "\143\45\113\76")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\185\17\57", "\92\216\216\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\39\184\79\219\90\32\161", "\157\59\82\204\32")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\63\238\255", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\160\205\114", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\37\172\93", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\53\254\48", "\129\237\80\152\68\61")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\169\9\246", "\56\49\200\100\147\124\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\43\171\255\140\14\182\243\199\43\175\176\225\49\177\245\213", "\144\172\94\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\10\164\70\49\3\182", "\39\68\111\194")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\170\230\192", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\92\254\71\189\64\233\67\152\89\199\71\131\76\243", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\117\246\244\72\198\119\241", "\42\167\20\154\152")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\107\235\182\77\49\17\67\253\169\87\97\97\103\241\172\71\104", "\65\42\158\194\34\17"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\56\38\65\9\29\236\9\250", "\142\122\71\50\108\77\141\123")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\56\173\241\29\34\49\176\240\8", "\91\117\194\159\120"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\28\51\29", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\9\219\81\136\234\174\24\17\223", "\218\119\124\175\62\168\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\245\78\197\176\252\92", "\164\197\144\40")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\252\171\140", "\214\227\144\202\235\189")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\176\147\116\3\167\92\49\253\177\136\124\23\191\86\58\225\164\128", "\92\141\197\231\27\112\211\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\254\134\175\211\231\252\129", "\177\134\159\234\195")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\156\254\43\175\137\142\255\48\173\217", "\169\221\139\95\192"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\237\159\112\50\50", "\70\190\235\31\95\66"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\227\23\227", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\234\247\203\156\143\61\40\235\246\199\217", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\43\185\74\194\231\201", "\189\224\78\223\43\183\139")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\240\139\17", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\162\221\211\171\178\221\200\178\180\204\218\166\165\196\218\171\182\206", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\8\83\119\234\253\10\84", "\136\156\105\63\27")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\58\153\109\59\91\160\124\32\15\153\122\49", "\84\123\236\25"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\203\167\175\3\184\160\243\142\151", "\213\144\235\202\119\204"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\219\62\60\54\78\38\37\158\103\104\103\24", "\45\67\120\190\74\72\67"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\14\35\224\160", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\213\54\178\129\13\215\49", "\232\99\176\66\198")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\32\37\3", "\76\140\65\72\102\27\237\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\219\31\220", "\222\42\186\118\178\183\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\229\64\143", "\234\61\140\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\216\188\102", "\111\65\189\218\18")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\74\22\48", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\165\174\236\112\119", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\194\169\231", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\221\115\33\197", "\150\67\180\20\73\177")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\175\13\14\89\130\22\9", "\45\237\120\122")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\251\231\163\40", "\76\183\136\194"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\244\247\55\66", "\116\26\134\133\88\48\47"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\230\224\192\188\50\54\206\175\224", "\18\126\161\192\132\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\121\41\167\8\83\91\104\186\11\22\83\39\175\0\22\92\39\160\2\95\88\104\255\69", "\54\63\72\206\100"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\75\87\117\247", "\27\168\57\37\26\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\14\141\60\140\214\109\130\115\167\211", "\183\77\202\28\200"), LUAOBFUSACTOR_DECRYPT_STR_0("\49\50\128\4\18\55\201\28\24\115\133\7\22\55\201\11\24\61\143\1\16\115\219\73", "\104\119\83\233"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\237\36\33\70\230\235", "\35\149\152\71\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\58\207\2\148\59\89\192\77\191\62", "\90\121\136\34\208"), LUAOBFUSACTOR_DECRYPT_STR_0("\235\1\84\26\194\10\21\29\200\0\83\23\192\66\21\27\201\4\90\7\134", "\126\167\110\53"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\14\17\56\253", "\95\93\112\78\152\188"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\231\151\26\246", "\178\161\149\229\117\132\222"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\252\157\136\160\86\142\44\135\223", "\67\232\187\189\204\193\118\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\173\47\188\44\62\6\175\159\33\245\51\58\20\234\203\45\186\46\61\11\232\202", "\143\235\78\213\64\91\98"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\93\135\234\117\165\158", "\214\237\40\228\137\16"), LUAOBFUSACTOR_DECRYPT_STR_0("\166\196\175\253\2\230\173\236\224\221", "\198\229\131\143\185\99"), LUAOBFUSACTOR_DECRYPT_STR_0("\114\131\166\117\88\139\232\96\80\154\173\119\17\152\167\51\72\131\189\97\17\143\164\122\65\142\167\114\67\136\233", "\19\49\236\200"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\57\240\184", "\218\158\87\150\215\132"), LUAOBFUSACTOR_DECRYPT_STR_0("\216\57\153\198\55\98\229\244\17\221", "\173\155\126\185\130\86\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\213\167\169\211\141\172\236\178\250\212\135\225\224\177\178\194\154\233\165\181\187\193\141\173", "\140\133\198\218\167\232"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\101\246\38\217\162\104\159\49\216\221", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\230\2\90\28\180", "\118\185\143\102\62\112\209\81")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\113\36\227", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\235\236\201\82\19\185\173\155\20", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\31\52\85\205\50", "\87\18\118\80\49\161")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\98\31\215\165", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\21\182\195\16\191\144\29\166\76", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\66\30\247\224", "\155\133\141\38\122")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\104\120\199\196\71\95\138\245", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\221\220\116\13\49\219", "\89\210\184\186\21\120\93\175")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\146\82\112\217\123\59\178\88", "\90\209\51\28\181\25")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\122\90\235", "\223\176\27\55\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\190\192\160\100\144\203\172\38\178\192\177", "\213\68\219\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\229\58\229\35\203\59\81\10\237\38", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\237\242\88\1\154\221\241\254\68\79\181", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\205\115\9\173\11\220", "\216\103\168\21\104")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\162\71\161", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\132\228\1\34\142", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\34\53\67", "\84\154\78\84\36\39\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\228\88\77\14\248\248\84\81\11\249\231\90\89\2", "\101\157\129\54\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\168\134\167\33\120\30\162", "\25\125\201\234\203\67")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\87\245\21\6", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\53\184\48\1\63\45\160", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\78\167\172\206\71\181", "\205\187\43\193")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\126\4\216", "\191\158\18\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\203\134\163\188\213\218\147\184\168\194\207\130\177\163\196\196", "\207\165\163\231\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\248\245\90\38\113\197\242", "\16\166\153\153\54\68")]=function(active)
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
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\178\205\67", "\153\178\211\160\38\84\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\25\85\59\194\42\87\36\151\5\78", "\75\226\107\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\215\31\115\28\215\192", "\173\56\190\113\26\113\162")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\223\53\12\250\222\211", "\151\171\190\77\101")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\42\254\168\237\113\31", "\107\165\79\152\201\152\29")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\81\66\233\204", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\39\210\241\200\44\206\251\193\41\209\251\196\38\200\242\221\41\219", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\91\223\164\183\84\216", "\179\198\214\55")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\13\127\115", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\182\15\134\143\226\177\20\153\143\229\162\8\129", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\199\91\72\229\227\214", "\144\143\162\61\41")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\210\17\92\112\134\48\235", "\83\128\179\125\48\18\231")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\121\165\252\205\106\17\83\178\234", "\126\61\215\147\189\39"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\30\70\125\236\14", "\37\24\159\125"), LUAOBFUSACTOR_DECRYPT_STR_0("\249\129\53\102\219\230\93\77\213\162", "\34\186\198\21"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\6\195\82", "\162\152\104\165\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\238\8\242\89\113\165\229\32\189\121", "\133\173\79\210\29\16"), LUAOBFUSACTOR_DECRYPT_STR_0("\162\108\232\37\205\125\227\47\205\127\225\36\158\121\173\32\136\101\173\34\158\60\196\37\158\121\255\63", "\75\237\28\141"));
end, function()
end);
