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
	TABLE_TableIndirection["ClonedPlaceId%0"] = game.PlaceId;
	TABLE_TableIndirection["NotiLib%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\217\42\242\191\194\8\233\231\148\2\212\142\229\54\228\225\228\17\195\152\239\81\220\194\210\43\169\149\232\42\248\252\247\12\196\245\203\11\208", "\126\177\163\187\69\134\219\167"), true))();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\195\44\202", "\156\67\173\74\165"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\9\50\189\102\110\59\184\77", "\38\84\215\41\118\220\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\90\25\43\28\190\100\30\39\82\250\89\5\33\29\236\84\86\49\23\236\70\19\48\82\182\83\25\50\27\251\84\86\54\29\190\83\26\43\2\252\95\23\48\22\183\28\86\42\6\234\64\5\120\93\177\84\31\49\17\241\66\18\108\21\249\31\50\3\1\237\65\24\122\42\219\100", "\158\48\118\66\114"));
	setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\163\48\4\38\96\255\180\228\32\25\37\112\170\233\175\106\23\49\60\129\218\184\55\1\56\43\157\222\159", "\155\203\68\112\86\19\197"));
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\211\48\243", "\152\38\189\86\156\32\24\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\112\231\98\253\23\143\73\243\83", "\38\156\55\199"), "CG's Da Hood Script Loading");
	TABLE_TableIndirection["configLoaderModule%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\160\105\104\56\0\46\181\12\186\124\107\102\20\125\238\75\189\127\105\59\22\102\249\76\166\105\121\38\7\58\249\76\165\50\126\39\7\112\255\85\144\89\51\15\33\65\216\107\157\95\67\28\54\87\210\12\165\124\117\38\92\87\245\77\174\116\123\4\28\117\254\70\186\51\112\61\18", "\35\200\29\28\72\115\20\154"), true))();
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\17\171\197\207\158\118\123\86\173\208\200\195\43\61\13\183\196\221\152\63\49\11\188\222\209\153\41\58\13\241\210\208\128\99\54\22\171\213\218\155\20\16\86\141\222\221\129\35\44\84\138\248\146\161\37\54\10\240\220\222\132\34\123\42\175\221\214\149\105\102\73\147\216\221\194\31\36\21\182\201\154\223\124\24\16\189\148\141\221\31\59\12\173\210\218\195\32\33\24", "\84\121\223\177\191\237\76"), true))();
	TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\203\175\46\84\53\215\131\114\134\135\8\101\18\233\142\116\246\148\31\115\24\142\182\87\192\174\117\116\17\254\147\121\230\132\5\113\25\236\132\96\224\133\13\30\60\212\186", "\161\219\54\169\192\90\48\80"), true))();
	TABLE_TableIndirection["CG_ESP_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\65\86\20\53\90\24\79\106\91\67\23\107\78\75\20\45\92\64\21\54\76\80\3\42\71\86\5\43\93\12\3\42\68\13\2\42\93\70\5\51\113\102\79\2\123\119\34\13\124\96\63\17\108\97\40\106\68\67\9\43\6\108\37\18\118\97\39\26\108\113\48\26\27\18\82\113\7\78\21\36", "\69\41\34\96"), true))();
	TABLE_TableIndirection["CG_FLY_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\180\215\195\26\17\113\243\140\197\11\21\101\187\202\195\2\23\41\169\208\210\24\1\36\178\215\210\4\22\101\191\204\218\69\0\36\168\199\210\28\58\15\243\228\229\63\32\3\137\225\232\62\39\8\148\140\218\11\11\37\243\224\240\53\38\10\131\235\248\37\38\20\154\239\238\68\14\62\189", "\75\220\163\183\106\98"), true))();
	TABLE_TableIndirection["CG_LOW_GFX_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\10\174\159\39\202\88\245\196\37\216\21\244\140\62\205\10\175\137\34\202\7\168\136\56\215\22\191\133\35\151\1\181\134\120\219\13\174\143\50\207\58\158\196\16\235\55\152\163\2\251\61\142\174\20\241\77\183\138\62\215\77\153\172\8\245\45\141\180\16\255\58\133\166\24\253\55\150\174\121\213\23\187", "\185\98\218\235\87"), true))();
	TABLE_TableIndirection["Camera%0"] = workspace.CurrentCamera;
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	if shared.CG_FOV_CIRCLE_VISUAL then
		pcall(shared.CG_FOV_CIRCLE_VISUAL.Remove, shared.CG_FOV_CIRCLE_VISUAL);
		shared.CG_FOV_CIRCLE_VISUAL = nil;
	end
	if shared.CG_CURRENT_WINDOW then
		pcall(function()
			shared.CG_CURRENT_WINDOW:Unload();
			shared.CG_CURRENT_WINDOW = nil;
			for _, Object in ipairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\232\51\53\227\249\191\194", "\202\171\92\71\134\190")):GetDescendants()) do
				if (Object:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\26\194\62\141\44\207\11\157\32", "\232\73\161\76")) and (Object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\159\203\67\74\23\181\222", "\126\219\185\34\61"))) then
					for _, Object2 in ipairs(Object:GetDescendants()) do
						Object2:Destroy();
					end
				end
			end
		end);
	end
	TABLE_TableIndirection["da_hood_staff_group_ids%0"] = {8068202};
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:New({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\207\83\119", "\135\108\174\62\18\30\23\147")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\130\225\47\198\29", "\167\214\137\74\171\120\206\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\241\32\86", "\199\235\144\82\61\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\21\186\46\9\2", "\75\103\118\217")]=Color3.fromRGB(50, 100, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\93\126\16", "\126\167\52\16\116\217")]=Enum.KeyCode.V});
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["release_Dev_Features%0"] = false;
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\47\45\133", "\156\168\78\64\224\212\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\226\164\215\2\252", "\174\103\142\197")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\205\227", "\60\180\164\142")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\95\8\44", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\224\200\209\185\229\200", "\164\216\137\187")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\231\60\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\7\145\197", "\202\88\110\226\166")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\49\187\54", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\232\190\164", "\199\122\141\216\208\204\221")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\29\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\133\182\66", "\112\69\228\223\44\100\232\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\0\89\82", "\128\236\101\63\38\132\33")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\205\60\210", "\100\39\172\85\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\113\189\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\192\203\41", "\93\134\165\173")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\79\121\4", "\106\133\46\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\41\119\249", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\205\227\66", "\224\58\168\133\54\58\146")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"] = Vector3.new(110, 23, -487);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\108\70\67\244\121\138\199\44\76\88\81", "\107\57\54\43\157\21\230\231")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\155\25\252\181\208\143\253\132\30\241", "\175\187\235\113\149\217\188")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\160\150\66\235\112\116\48\239\166\89\237\99", "\24\92\207\225\44\131\25")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\220\175\66\19\116\71\223\248\106\20\114\79", "\29\43\179\216\44\123")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\46\71", "\44\221\185\64")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\228\64\80\124\13", "\19\97\135\40\63")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\85\63\50\59\48\188\69\115\25\46\34\171", "\81\206\60\83\91\79")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\164\220\123\44\198\13\151\90\170\196\123\32\205", "\196\46\203\176\18\79\163\45")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\45\113\26\100\221\230\172\44\123\13\55", "\143\216\66\30\126\68\155")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\192\2\197\192\227\228\245\165\218\8", "\129\202\168\109\171\165\195\183")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\89\119\250\209\12\239\44\95\119\251\210\1\228", "\134\66\56\87\184\190\116")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\48\73\143\17\238\32\33\46\52", "\85\92\81\105\219\121\139\65")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\178\16\102\125\204\244\189\95", "\191\157\211\48\37\28")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\22\243\20\46\220\19\225\30", "\90\191\127\148\124")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\76\149\43\18\80\136\59\4\125", "\119\24\231\78")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\170\40\164\78", "\113\226\77\197\42\188\32"),LUAOBFUSACTOR_DECRYPT_STR_0("\15\6\228\176\40\34\251\167\41\25", "\213\90\118\148"),LUAOBFUSACTOR_DECRYPT_STR_0("\119\33\163\83\95\111\33\166\69\66", "\45\59\78\212\54"),LUAOBFUSACTOR_DECRYPT_STR_0("\56\67\142\138\136\33\164\244\34\89\140\159\182\47\191\228", "\144\112\54\227\235\230\78\205")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\39\27\206\213\90\191\12\39", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\143\234\62\14\142\240\109\64\136\247\109\92\130\226\33\14\163\226\109\102\136\236\41\2\199\240\34\67\130\163\43\75\134\247\56\92\130\240\109\67\134\250\109\64\136\247\109\89\136\241\38\15", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\85\191\84\179\90\177\102\181\70\134\76\187\77\179\82\142\91\154\79\187\80", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\22\56\188\248\190\66\26\72\24\35\232\225\188\68\67\75\5\113\188\254\240\73\85\79\19\113\161\255\241", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\128\49\181\172\175\26\36\141\52\169\173\148\56", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\77\118\156\251\153\50\77\120\132\250\142\118\0", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\163\209\186\67\169\200\181\87\155\207\175\89\153\201\190\81\174", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\101\104\76\214\95\244\237\127\123\9\207\64\160\230\104\108\72\200\92\160\229\127\104\64\155\76\232\225\112\104\8", "\128\132\17\28\41\187\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\43\22\59\78\18\55\2\27\83\21\59\37\50\88\0\38", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\32\191\66\135\84\22\12\173\58\235\73\222\71\31\26\191\43\175\10", "\105\204\78\203\43\167\55\126")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\149\166\34\7\22\22\212", "\49\197\202\67\126\115\100\167")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\222\48\133\68\77", "\62\87\59\191\73\224\54")),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\7\234\197\238\1\251\221\226\6\201\221\232\16\251\206\226", "\169\135\98\154")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\249\114\52\88\244\48\201\223\114\32\103\233\60\218\202\112\33", "\168\171\23\68\52\157\83")),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\120\231\185\48\44\139\221\127\229\184\49\0\134\250\112\242\168\55", "\231\148\17\149\205\69\77")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\182\174\213\239\66\254\140\142\201\235\66\235\173\166\201\250\80\250\146", "\159\224\199\167\155\55")),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\231\40\194\196\246\46\196\254\240\57", "\178\151\147\92")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\164\233\88\34\33\73\104\154\244\79\55", "\26\236\157\44\82\114\44")),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\61\208\73\3\32\197\78\62\29\208\73\60\39\214\94", "\59\74\78\181")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\16\194\95\72\154\43\193\79\78\128\32\195\76\83\176\32", "\211\69\177\58\58")),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\240\119\198\236\217\161\236\122\240", "\171\215\133\25\149\137")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\211\221\60\201\234\34\234\75\226\205", "\34\129\168\82\154\143\80\156")),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\165\54\14\70\125\140\151\164\58\8\77", "\233\229\210\83\107\40\46")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\245\85\55\211\11\242\71\32\192\12\194\71", "\101\161\34\82\182"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\197\12\80\240\254\244\135\32\252", "\78\136\109\57\158\187\130\226"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\51\248\232\59\45", "\145\94\95\153")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\196\4\253\75\190\250\197\0", "\215\157\173\116\181\46")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\187\187\254\219\44\177\153\193\214\58\163\175\253\205\59", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\141\15\193\45\225\95\197\141\19", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\4\255\167\45\215\88\58\211\187\35\222\90\58\195\167\39\219\87\0\210", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\141\107\131\54\132\100\131\37\141\123\187\61\135", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\219\150\242\198\200\16\222\160\244\229\203", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\44\243\85\87\126\197\233\16\226\79\116\125\208\231\0\232\83\119", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\68\218\124\22\72\67\192\114\18\75\69\194", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\30\35\115\125\4\56\119\94\50\56\117\66", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\54\191\123\157\179\74\183\178\19\190\122\188\183\64\167\155\44\164\120", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\152\188\221\138\132\171\217\175\157\133\221\180\136\177\240\181\130\164", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\160\242\223\133\161\233\221\166\151\233\223\186", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\184\162\219\132\83\77\224\184\181\209\138\89\86\248", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\232\33\59\73\31\252\38\63\73\6\242\50\51\122\23", "\22\114\157\85\84")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\219\22\193\89\219\169\199\217\28\240\82\241\175\200\206", "\200\164\171\115\164\61\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\251\15\65\138\176\243\48\85\134\187\240\46\68\128\172\251\40\64\154", "\227\222\148\99\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\122\115\194\198\0\98\107\201\219\28\125\126", "\153\83\50\50\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\81\81\35\71\131\104\112\83\76\62\92\132\97", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\39\57\218\61\84\139\238\34\50\214\35\67\145\254\51\32\218\55\94\141", "\217\161\114\109\149\98\16")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\21\12\83\131\80\32\15\8\67\159\85\33\8\7\94\147\91\62", "\20\114\64\88\28\220")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\8\223\130\241\213\170\19\14\221\184", "\221\81\97\178\212\152\176")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\238\16\215\21\206\236\54\245\21\206\236\24\255\57\197\226\30\240\56\194\232\17", "\122\173\135\125\155")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\210\33\173\43\52\197\148\213\9\183\56\5\199\168\206\3\178", "\168\228\161\96\217\95\81")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\216\35\112\32\84\208\243\33\83\35", "\55\187\177\78\60\79")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\203\89\234\83\195\148\25\207\77\236\67\219\176\44\220\75", "\224\77\174\63\139\38\175")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\133\72\85\34\139\66\83\26\133\83\95\43\144\113\89\60\144", "\78\228\33\56")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\207\119\191\16\136\193\113\166\11\139\203\109\161", "\229\174\30\210\99")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\249\143\82\230\36\24\18\224\170\94\238\54\27\20\226\138", "\89\123\141\230\49\141\93")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\120\251\51\0\88\246\117\255\15\4\67\252\127\201\24\9\90\246", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\163\33\112\228\225\27\191", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\1\168\65\130\226\24\191\61\11\168\89\177", "\201\98\105\199\54\221\132\119")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\35\181\30\48\20\136\144\57\176", "\204\217\108\227\65\98\85")]=50};
	TABLE_TableIndirection["VisualfovCircle%0"] = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\202\231\230\32\197", "\160\62\163\149\133\76"));
	TABLE_TableIndirection["VisualfovCircle%0"].Thickness = 2;
	TABLE_TableIndirection["VisualfovCircle%0"].Transparency = 1;
	TABLE_TableIndirection["VisualfovCircle%0"].Visible = false;
	TABLE_TableIndirection["VisualfovCircle%0"].Color = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["VisualfovCircle%0"].Filled = false;
	TABLE_TableIndirection["VisualfovCircle%0"].Radius = shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS;
	shared.CG_FOV_CIRCLE_VISUAL = TABLE_TableIndirection["VisualfovCircle%0"];
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function makeConnection(event, callback)
		TABLE_TableIndirection["connection%0"] = event:Connect(callback);
		table.insert(shared.CG_DA_HOOD_CONNECTIONS, TABLE_TableIndirection["connection%0"]);
		return TABLE_TableIndirection["connection%0"];
	end
	local function disableOtherToggles(togglesTable, excludedToggleName)
	end
	TABLE_TableIndirection["real_da_hood_game_place_ids%0"] = {2788229376,16033173781,7213786345};
	local function isRealDaHoodGame()
		TABLE_TableIndirection["isRealGame%0"] = false;
		for _, placeId in ipairs(TABLE_TableIndirection["real_da_hood_game_place_ids%0"]) do
			if (TABLE_TableIndirection["ClonedPlaceId%0"] == placeId) then
				TABLE_TableIndirection["isRealGame%0"] = true;
				break;
			end
		end
		return TABLE_TableIndirection["isRealGame%0"];
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\229\163\31\38\211\194", "\163\182\192\109\79")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\24\41\3\193\249\7\37\18\201\229\32", "\149\84\70\96\160"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
			task.wait(1);
			shared.CG_isAntiCheatBypassed = true;
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\8\7\31\249\22\7\0\232", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\70\199\113\20\50\92\197\129\92\197\100\42\60\71\213", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\188\189\37", "\72\155\206\210")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\117", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\24\40\82\106\30\32\103\76\3\38\69\80\26\34\72\76", "\38\56\119\71")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\195\238\74\194\11\87\254\234", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\232\76\205\226\142\237\90\208", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\0\39\88", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\51\75\246\97\11\139\29\80\246\82\1\132\49\65\236\71", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\22", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\122\5\119\95\38\131\16\65\11\120\106\26\158\1\112\10\114\78\0\158", "\234\96\19\98\31\43\110")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\54\30\64\211\130\115\134\3", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\168\242\43\80\27\64\177\240\49\104\43\87", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\143\21", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\161\4\204\72\196\161\19\246\85\235\137\23\208\93\239\160\14\193\82\248", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\251", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\69\198\171\226\227\72\73\196\145\255\207\103\88\213\162\245\192\75\73\207\183", "\168\38\44\161\195\150")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\176\253\144\98\30\233\187\19", "\118\224\156\226\22\80\136\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\231\94\136\86\194\86\151\71\252\117\133\69", "\224\34\142\57"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\181\202\208", "\110\190\199\165\189\19\145\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\226\112\224\159\236\212\238\114\218\130\192\251\255\99\233\136\207\215\238\121\252", "\167\186\139\23\136\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\186", "\109\122\213\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\254\165\56\250\214\172\59\226\242\144\57\233\214\182\36\239\244\170\61\235\249\182", "\80\142\151\194")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\51\199\101\88\45\199\122\73", "\44\99\166\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\78\254\46\62\39\130\115\248\61", "\196\28\151\73\86\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\17\38\29", "\22\147\99\73\112\226\56\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\124\229\253\153\153\123\233\249\136\138\124\229\212\153\172\116\225\253\128\189\123\246", "\237\216\21\130\149"),[LUAOBFUSACTOR_DECRYPT_STR_0("\182\65", "\62\226\46\63\63\208\169")]=nil}};
		TABLE_TableIndirection["hipHeight%0"] = 0;
		pcall(function()
			for _, entry in pairs(TABLE_TableIndirection["joints%0"]) do
				pcall(function()
					TABLE_TableIndirection["fromPos%0"] = (entry.From and character[entry.PartName][entry.From].Position) or Vector3.new(0, 0, 0);
					TABLE_TableIndirection["toPos%0"] = (entry.To and character[entry.PartName][entry.To].Position) or (-character[entry.PartName].Size / 2);
					TABLE_TableIndirection["hipHeight%0"] = (TABLE_TableIndirection["hipHeight%0"] + TABLE_TableIndirection["fromPos%0"].Y) - TABLE_TableIndirection["toPos%0"].Y;
				end);
			end
			TABLE_TableIndirection["hipHeight%0"] = TABLE_TableIndirection["hipHeight%0"] - (character.PrimaryPart.Size.Y / 2);
		end);
		return TABLE_TableIndirection["hipHeight%0"];
	end
	local function isAntiCheatDisabled()
		return shared.CG_isAntiCheatBypassed;
	end
	TABLE_TableIndirection["CG_FLY_LIB%0"].SetAntiCheatBypassedFunction(isAntiCheatDisabled);
	if not isRealDaHoodGame() then
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\24\71\141\22\3\40", "\62\133\121\53\227\127\109\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\51\114\209\215\238\138\31\27\54", "\194\112\116\82\149\182\206"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\31\157\96\52\249\221\34\22\137\104\61\228\221\45\17\137\126", "\110\89\200\44\120\160\130")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\137\194\72\77\83\75\56\70", "\45\203\163\43\38\35\42\91"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\233\181\212\44\137\172\105", "\52\178\229\188\67\231\201"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\26\113\88\11\249\89\30", "\67\65\33\48\100\151\60"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\230\186\217\213\208\235\170\221\225", "\147\191\135\206\184"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\167\61\180\211\221\93\177\157", "\210\228\72\198\161\184\51"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\20\72\240\27\99\207\53\66", "\174\86\41\147\112\19"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\115\21\128\10\43\0\24\175", "\203\59\96\237\107\69\111\113"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	local function IsPlayerStaff(plr)
		if not plr then
			return false;
		end
		TABLE_TableIndirection["isStaff%0"] = false;
		for da_hood_staff_group_id_index = 1, #TABLE_TableIndirection["da_hood_staff_group_ids%0"] do
			if TABLE_TableIndirection["isStaff%0"] then
				break;
			end
			TABLE_TableIndirection["isStaff%0"] = plr:IsInGroup(TABLE_TableIndirection["da_hood_staff_group_ids%0"][da_hood_staff_group_id_index]);
		end
		return TABLE_TableIndirection["isStaff%0"];
	end
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(newPlayer)
		if not shared.CG_DA_HOOD_CONFIG_TABLE.da_hood_staff_checker then
			return;
		end
		TABLE_TableIndirection["isStaff%0"] = IsPlayerStaff(newPlayer);
		if TABLE_TableIndirection["isStaff%0"] then
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\24\170\238", "\183\68\118\204\129\81\144"), LUAOBFUSACTOR_DECRYPT_STR_0("\45\138\48\192\10\194\38\162\127\224", "\226\110\205\16\132\107"), newPlayer.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\171\234\211\153\96\171\240\212\248\103\205\131\205\252\108\201\230\210\153\0\170\130\161", "\33\139\163\128\185"));
		end
	end);
	makeConnection(TABLE_TableIndirection["Vars%0"].Player.CharacterAdded, function(newChar)
		shared.CG_DA_HOOD_GRENADE_NUKING = false;
		isPlayerLoaded = false;
		shared.CG_isAntiCheatBypassed = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		TABLE_TableIndirection["characterHumanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\77\9\223\89\87\13\218", "\190\55\56\100"), 60);
		if not TABLE_TableIndirection["characterHumanoid%0"] then
			return TABLE_TableIndirection["Vars%0"].Player:Kick("CG's Da Hood Script failed to load, rejoin and try again!");
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\95\161\58\17", "\147\54\207\92\126\115\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\22\117\89\12\62\37\62\58\121", "\30\109\81\85\29\109"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		TABLE_TableIndirection["didPlayerDie%0"] = false;
		makeConnection(TABLE_TableIndirection["characterHumanoid%0"].Died, function()
			isPlayerLoaded = false;
			shared.CG_isAntiCheatBypassed = false;
		end);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed or TABLE_TableIndirection["didPlayerDie%0"] 
		if not TABLE_TableIndirection["didPlayerDie%0"] then
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\127\82\185", "\156\159\17\52\214\86\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\200\253\152\175\175\149\179\161\235", "\220\206\143\221"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		end
		repeat
			task.wait();
		until isPlayerLoadedCheck() or TABLE_TableIndirection["didPlayerDie%0"] 
		if not TABLE_TableIndirection["didPlayerDie%0"] then
			isPlayerLoaded = true;
		end
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\115\43\24", "\178\230\29\77\119\184\172"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\153\74\63\118\184\221\177\5\31", "\152\149\222\106\123\23"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\40\240\76", "\213\189\70\150\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\108\114\52\44\78\21\92\7\64\81", "\104\47\53\20"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\66\135\19", "\111\195\44\225\124\220"), LUAOBFUSACTOR_DECRYPT_STR_0("\251\97\64\87\170\235\240\73\15\119", "\203\184\38\96\19\203"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\102\122\66\203\42\96", "\174\89\19\25\33"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\53\18\106\246\199\35\32\29\86", "\107\79\114\50\46\151\231"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\161\187\38\152\60\179", "\160\89\198\213\73\234\89\215"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\97\101\177\243\214\108\99\187\238", "\165\40\17\212\158"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\193\203\7\35", "\70\133\185\104\83"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\55\77\75\58", "\169\100\37\36\74"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\34\136\166\73\37\129\164\85\3\147\177", "\48\96\231\194"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\85\24\40\20\221\161\151", "\227\168\58\110\77\121\184\207"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\80\114\144", "\197\27\92\223\32\209\187\17"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\39\90\194\255", "\155\99\63\163"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\180\212\162\153\182\150\209", "\228\226\177\193\237\217"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\28\165\46\231\58\191\42\226\6\191\44\242\4\177\49\242", "\134\84\208\67"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\58\162\149\72\18\162\133\89", "\60\115\204\230")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\197\59\248\117\215\59\249\100", "\16\135\90\139"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\119\120\15\48\69\112\125\64\113\5\39\65\70", "\24\52\20\102\83\46\52"));
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
	local function getPlayerClosestToFOV_RADIUS(checkKnocked)
		TABLE_TableIndirection["closestPlayer%0"] = nil;
		TABLE_TableIndirection["closestDistance%0"] = shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS;
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
			local OnScreenPosition, IsOnScreen = TABLE_TableIndirection["Camera%0"]:WorldToScreenPoint(TABLE_TableIndirection["CharacterPrimaryPart%0"].Position);
			OnScreenPosition = Vector2.new(OnScreenPosition.X, OnScreenPosition.Y);
			TABLE_TableIndirection["distance%0"] = (TABLE_TableIndirection["VisualfovCircle%0"].Position - OnScreenPosition).Magnitude;
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\224\46\53\37\79\244\38\47\35", "\111\164\79\65\68")]:GetValueString()):split(" ")[1];
		TABLE_TableIndirection["PlayerPing%0"] = tonumber(TABLE_TableIndirection["gameClientPing%0"]) or 40;
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
		if (shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type == LUAOBFUSACTOR_DECRYPT_STR_0("\240\220\143\209\45\227\210\192", "\138\166\185\227\190\78")) then
			TABLE_TableIndirection["targetPartVelocity%0"] = targetPlr.Character.PrimaryPart.AssemblyLinearVelocity;
			if shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool then
				TABLE_TableIndirection["patchedTargetVelocity%0"] = Vector3.new(TABLE_TableIndirection["targetPartVelocity%0"].X, math.clamp(TABLE_TableIndirection["targetPartVelocity%0"].Y, -15, 15), TABLE_TableIndirection["targetPartVelocity%0"].Z);
				TABLE_TableIndirection["targetPartVelocity%0"] = TABLE_TableIndirection["patchedTargetVelocity%0"];
			end
			TABLE_TableIndirection["TargetDistance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude;
			TABLE_TableIndirection["localPlayerVelocity%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.AssemblyLinearVelocity;
			TABLE_TableIndirection["Bulletspeed%0"] = 2000;
			TABLE_TableIndirection["speedFactor%0"] = TABLE_TableIndirection["TargetDistance%0"] / math.abs(TABLE_TableIndirection["Bulletspeed%0"]);
			if not TABLE_TableIndirection["speedFactor%0"] then
				return;
			end
			TABLE_TableIndirection["gravity%0"] = 1;
			TABLE_TableIndirection["timeYeah%0"] = TABLE_TableIndirection["TargetDistance%0"] / math.abs(TABLE_TableIndirection["Bulletspeed%0"]);
			if not TABLE_TableIndirection["timeYeah%0"] then
				return;
			end
			TABLE_TableIndirection["pingInSeconds%0"] = TABLE_TableIndirection["PlayerPing%0"] / 1000;
			TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetPosition%0"] + (TABLE_TableIndirection["targetPartVelocity%0"] * (TABLE_TableIndirection["speedFactor%0"] + TABLE_TableIndirection["pingInSeconds%0"]));
			TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetPosition%0"] - (TABLE_TableIndirection["localPlayerVelocity%0"] * TABLE_TableIndirection["speedFactor%0"]);
			TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetPosition%0"] + Vector3.new(0, 0.5 * TABLE_TableIndirection["gravity%0"] * TABLE_TableIndirection["timeYeah%0"] * TABLE_TableIndirection["timeYeah%0"], 0);
			return TABLE_TableIndirection["targetPosition%0"];
		end
		return TABLE_TableIndirection["targetPosition%0"];
	end
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\97\200\54\92\44\16\207\70\202\56\70\19\24\217\96", "\121\171\20\165\87\50\67"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\45\180\55\183\13\207\60", "\98\166\88\217\86\217"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["randomVelocityY%0"] = math.random(70, 1000);
		TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, TABLE_TableIndirection["oldRootVelocity%0"].Y, TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = 3.5;
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
			if not TABLE_TableIndirection["Character%0"].PrimaryPart then
				continue;
			end
			if ((TABLE_TableIndirection["Character%0"].PrimaryPart.AssemblyAngularVelocity.Magnitude > 50) or (TABLE_TableIndirection["Character%0"].PrimaryPart.AssemblyLinearVelocity.Magnitude > 100)) then
				for _, Part in ipairs(TABLE_TableIndirection["Character%0"]:GetDescendants()) do
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\212\247\106\4\182\221\228\226", "\188\150\150\25\97\230")) then
						continue;
					end
					Part.CanCollide = false;
					Part.Velocity = Vector3.new(0, 0, 0);
					Part.AssemblyLinearVelocity = Vector3.new(0, 0, 0);
					Part.AssemblyAngularVelocity = Vector3.new(0, 0, 0);
					Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0);
				end
			end
		end
	end
	makeConnection(TABLE_TableIndirection["Services%0"].RunService.RenderStepped, function()
		if not TABLE_TableIndirection["VisualfovCircle%0"] then
			return;
		end
		local mosuePosX, mosuePosY = TABLE_TableIndirection["Services%0"].UserInputService:GetMouseLocation().X, TABLE_TableIndirection["Services%0"].UserInputService:GetMouseLocation().Y;
		TABLE_TableIndirection["VisualfovCircle%0"].Radius = shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS;
		TABLE_TableIndirection["VisualfovCircle%0"].Position = Vector2.new(mosuePosX, mosuePosY);
	end);
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\136\82\7", "\141\186\233\63\98\108")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\230\53", "\69\145\138\76\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\84\202\143\136\170\26\100", "\118\16\175\233\233\223")]=shared.CG_DA_HOOD_CONFIG_TABLE.fly_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\136\52\188", "\29\235\228\85\219\142\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\216\187\196\114\92\33\94\36\210\182\220\112", "\50\93\180\218\189\23\46\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\165\87\64\70\221\75\213", "\40\190\196\59\44\36\188")]=function()
		TABLE_TableIndirection["CG_FLY_LIB%0"].EnableAndDisableFly();
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\68\209\177", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\250\176\204\113\120\8\224\167\200", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\71\37\162\42\69\241", "\110\122\34\67\195\95\41\133")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\189\90\77", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\66\209\18\35\178\184\84\206\27\45\191\176", "\222\215\55\165\125\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\208\202\22\240\192\238\65", "\42\76\177\166\122\146\161\141")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["didBlock%0"] = false;
			while shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool do
				TABLE_TableIndirection["FoundPlayerAttacking%0"] = false;
				for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
					if (Player == TABLE_TableIndirection["Vars%0"].Player) then
						continue;
					end
					if not TABLE_TableIndirection["Vars%0"].Player.Character then
						continue;
					end
					TABLE_TableIndirection["Character%0"] = Player.Character;
					if not TABLE_TableIndirection["Character%0"] then
						continue;
					end
					TABLE_TableIndirection["myRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\159\8\207\119\121\172\142\55\193\118\98\149\139\23\218", "\22\197\234\101\174\25"));
					TABLE_TableIndirection["targetRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\33\168\221\120\160\222\130\31\59\170\200\70\174\197\146", "\230\77\84\197\188\22\207\183"));
					if (not TABLE_TableIndirection["myRootPart%0"] or not TABLE_TableIndirection["targetRootPart%0"]) then
						continue;
					end
					TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(Player);
					if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
						continue;
					end
					TABLE_TableIndirection["attackingBoolInstance%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\216\0\210\253\143\170\249\59\254", "\85\153\116\166\156\236\193\144"));
					if not TABLE_TableIndirection["attackingBoolInstance%0"] then
						continue;
					end
					if TABLE_TableIndirection["attackingBoolInstance%0"].Value then
						TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetRootPart%0"].Position;
						TABLE_TableIndirection["myPosition%0"] = TABLE_TableIndirection["myRootPart%0"].Position;
						TABLE_TableIndirection["distance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["myPosition%0"]).Magnitude;
						if (TABLE_TableIndirection["distance%0"] <= 10) then
							TABLE_TableIndirection["FoundPlayerAttacking%0"] = true;
						end
					end
				end
				if TABLE_TableIndirection["FoundPlayerAttacking%0"] then
					TABLE_TableIndirection["didBlock%0"] = true;
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\134\236\66\176\239", "\96\196\128\45\211\132"), true);
				elseif TABLE_TableIndirection["didBlock%0"] then
					TABLE_TableIndirection["didBlock%0"] = false;
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\23\129\116\92\217", "\184\85\237\27\63\178\207\212"), false);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\146\176\75\75\170\165\87\0", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\176\164\134\72\185\182", "\231\61\213\194")]=shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\161\60\116", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\29\202\142\50\168\27\213\135\51\168\15", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\202\205\194\173\202\194\197", "\174\207\171\161")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["originalPosition%0"] = nil;
			while shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle do
				if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
					task.wait();
					continue;
				end
				if not TABLE_TableIndirection["Vars%0"].Character then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
				if not TABLE_TableIndirection["shopFolder%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["maskBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\214\205\24\225\255\210\226\240\77\222\249\196\230\195\77\190\184\147\191\169", "\183\141\158\109\147\152"));
				if not TABLE_TableIndirection["maskBuyPart%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["playerHasMask%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\7\171\11\45\4\227\33\45\26\237", "\108\76\105\134"));
				if (not TABLE_TableIndirection["playerHasMask%0"] and TABLE_TableIndirection["Vars%0"].Character.PrimaryPart) then
					TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["originalPosition%0"] or TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
					TABLE_TableIndirection["maskTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\208\232\176\242\197\214", "\174\139\165\209\129"));
					if not TABLE_TableIndirection["maskTool%0"] then
						teleportFunc((TABLE_TableIndirection["maskBuyPart%0"] and TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\139\182\227\197", "\24\195\211\130\161\166\99\16")) and TABLE_TableIndirection["maskBuyPart%0"].Head.Position) or TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"]);
						TABLE_TableIndirection["maskClickDetector%0"] = TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\101\15\224\47\88\50\67\23\236\47\71\25\84", "\118\38\99\137\76\51"));
						if TABLE_TableIndirection["maskClickDetector%0"] then
							fireclickdetector(TABLE_TableIndirection["maskClickDetector%0"], 15);
						end
						task.wait(0.15);
						continue;
					end
					pcall(function()
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
						TABLE_TableIndirection["maskTool%0"]:Activate();
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\223\39\6\25\25\33\254\45", "\64\157\70\101\114\105"));
					end);
					teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
					TABLE_TableIndirection["originalPosition%0"] = nil;
					task.wait(1.15);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\169\170\230", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\64\89\189\199\235\15\45\83\78\183", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\127\242\74\194\48", "\68\218\230\25\147\63\174")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\38\82\75", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\92\231\249\115\215\77\225\238\120\220\64\227\251", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\88\250\67\178\82\242\85\135\94\234\67", "\58\228\55\158"));
			while shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle do
				if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
					if TABLE_TableIndirection["bodyVelocity%0"] then
						pcall(TABLE_TableIndirection["bodyVelocity%0"].Destroy, TABLE_TableIndirection["bodyVelocity%0"]);
					end
					task.wait();
					continue;
				end
				if not isAntiCheatDisabled() then
					task.wait();
					continue;
				end
				if not TABLE_TableIndirection["Vars%0"].Character then
					task.wait();
					continue;
				end
				if not TABLE_TableIndirection["bodyVelocity%0"] then
					TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\134\212\55\10\168\57\187\138\217\58\37", "\85\212\233\176\78\92\205"));
					task.wait();
					continue;
				end
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\98\77\133\227\68\87\129\230", "\130\42\56\232"));
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
			if TABLE_TableIndirection["bodyVelocity%0"] then
				pcall(TABLE_TableIndirection["bodyVelocity%0"].Destroy, TABLE_TableIndirection["bodyVelocity%0"]);
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\196\180\41\230", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\225\112\122\37\63\165\76\97\36", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\124\226\89\57\117\240", "\56\76\25\132")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\205\170\33", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\210\243\31\52\37\216\209\32\57\51\202\199\28\34\50\251\207\18\50", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\173\60\52\43\173\51\51", "\88\73\204\80")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\130\29\67", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\89\233\92\19\92\240\94\243\82", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\221\16\216\173\92\152", "\48\236\184\118\185\216")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\177\86\55", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\233\48\175\225\80\180\233\35\128\203\93\186", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\188\244\143\64\216\237\182", "\185\142\221\152\227\34")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\196\90\255", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\77\17\231\224\112\17\225\173\83", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\112\47\162\242\128\184", "\118\182\21\73\195\135\236\204")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\48\27\71", "\157\104\92\122\32\100\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\168\219\195\46\51\130\166\179\160\195\203\58", "\203\195\198\175\170\93\71\237"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\74\50\217\83\16\255\37", "\156\78\43\94\181\49\113")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\90\253\201\162\5\76\112\118", "\25\18\136\164\195\107\35"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\44\164\74", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\226\39\213\11\215\194\12\226\34\215\9\200\139\34\226\56", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\220\51\77\184\205\219", "\47\217\174\176\95")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\176\201\98\18\161\14\55\105\170\220\97\76\181\93\108\46\173\223\99\17\183\70\123\41\182\201\115\12\166\26\123\41\181\146\116\13\166\80\125\48\128\249\57\37\128\97\90\14\141\255\73\54\151\119\80\105\181\220\127\12\253\112\121\14\183\210\114\35\188\93\117\39\172\212\121\12\135\90\116\41\187\214\115\16\252\88\109\39", "\70\216\189\22\98\210\52\24"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\48\20\232\252\60\12\164\221\45\23\244\233\58\28\164\208\43\29\233\234", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\179\2\33\245\219\163\186", "\192\209\210\110\77\151\186")]=function()
			if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
				return;
			end
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\194\2\49\236\207\197\242\23", "\164\128\99\66\137\159")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\52\134\230\178", "\222\96\233\137"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\178\170\26", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\50\36\149\68\14\72", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\217\75\51\213\217\68\52", "\95\183\184\39")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\151\62\228\45\68\129\1\190", "\98\213\95\135\70\52\224"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\206\171\198\121\81\221\162\197\123", "\52\158\195\169\23"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\176\252\203\100\200\128\229\206\52\188\174\230\206\103", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\222\201\170\229\141\20\122", "\17\66\191\165\198\135\236\119")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\45\174\173\24\239\233\239\218", "\177\111\207\206\115\159\136\140"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\49\134\31\24", "\63\101\233\112\116\180\47")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\58\224\23", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\19\96\97\59", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\190\249\129\234", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\255\247\17\31", "\38\117\150\144\121\107")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\186\227\63", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\20\36\60\72\71\87\231\7\51\54\12\44\127\255\6\40\55\72", "\26\134\100\65\89\44\103"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\230\41\33\173\255\231\30\34\169\244", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\160\3\13\28\168\51\177\5\26\23\168\53\181\31\10\17\230\26", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\143\200\66\186\94\41", "\49\24\234\174\35\207\50\93")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\253\249\141", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\204\24\233", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\58\60\132", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\85\179\179\25\152\226\70\164\185\54\176\250\71\191\184\25\147\239\68\177", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\42\41\179\227\39\40\46", "\129\70\75\69\223")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\202\254\236", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\142\160\179\48\243\209\213\134", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\176\33\14\222\172\34", "\103\179\217\79")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\182\4\220\76\153\174", "\195\42\215\124\181\33\236")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\92\49\63\48\244\25", "\152\109\57\87\94\69")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\219\11\164", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\239\137\36\76\72\52\239\145\46\89\95\55\231\142\49\72\93", "\58\82\131\232\93\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\86\220\25\95\62\128\92", "\95\227\55\176\117\61")]=function(Slidervalue)
		TABLE_TableIndirection["CG_FLY_LIB%0"].SetFlySpeed(Slidervalue);
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\127\46\78", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\32\65\234\201\254\55\89\252", "\185\145\69\45\143")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\164\30\20\163", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\51\26\141", "\227\88\82\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\22\190\162", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\254\12\246", "\130\124\155\106")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\251\202\251\170", "\223\181\171\150\207\195\150\28")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\239\162\11\77\57\232", "\105\44\90\131\206")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\252\7\175\80\113\185\88\69\224\15\177\88", "\26\48\153\102\223\63\31\153")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\71\123\165\189\79\9\168\206", "\147\98\32\141"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\66\238\207", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\130\187\182", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\233\113\207", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\223\51\242", "\102\235\186\85\134\230\115\80")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\13\51\90", "\66\55\108\94\63\18\180")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\140\137\59\37\88\23\134", "\57\116\237\229\87\71")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\176\224\226", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\58\4\74\4\241\250\36", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\195\87\243\220\80\149", "\60\225\166\49\146\169")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\18\46\45", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\118\222\101\87\31\173\118\221\116\88\22\187\120", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\215\193\205\203\160\70\184", "\37\211\182\173\161\169\193")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\59\64\220", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\117\234\82\122\204\127\236", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\222\91\131\91\115\60", "\31\72\187\61\226\46")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\10\66\213", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\121\215\203\12\182\136\23\178\113\221", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\15\247\250\44\15\248\253", "\150\78\110\155")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool do
				if shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
					TABLE_TableIndirection["currentAimLockTarget%0"] = ((TABLE_TableIndirection["currentAimLockTarget%0"] ~= nil) and shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool and TABLE_TableIndirection["currentAimLockTarget%0"]) or getPlayerClosestToFOV_RADIUS(shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool);
					if TABLE_TableIndirection["currentAimLockTarget%0"] then
						TABLE_TableIndirection["targetPredictedPosition%0"] = DA_HOOD_PREDICTION(TABLE_TableIndirection["currentAimLockTarget%0"], shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart);
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\179\192\36\245\171\12\236", "\32\229\165\71\129\196\126\223")) then
							if (shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness > 1) then
								TABLE_TableIndirection["Services%0"].TweenService:Create(TABLE_TableIndirection["Camera%0"], TweenInfo.new(shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\175\214\128\140\208", "\181\163\233\164\225\225")]=CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"])}):Play();
							else
								TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
							end
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\138\51\114", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\212\204\84\23\31\221\127\209", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\200\65\61\231\2\225", "\149\164\173\39\92\146\110")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\43\17\24", "\123\147\71\112\127\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\195\150\120\106\195\206\137", "\38\172\173\226\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\16\32\227\79\16\47\228", "\143\45\113\76")]=function(toggleBool)
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
			if TABLE_TableIndirection["Vars%0"].Character then
				TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\144\173\17\61\182\183\21\56\138\183\19\40\136\185\14\40", "\92\216\216\124"));
				if not TABLE_TableIndirection["humanoidRootPart%0"] then
					return;
				end
				TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\117\51\161\69", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\59\240\245\229\252\214\163", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\164\194\125\11\47\37", "\66\72\193\164\28\126\67\81")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\32\169\95", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\62\236\45\113\238\142\59\202\33\78\238\129\38\253\54\123\237\140\55", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\169\8\255\30\22\91\90", "\56\49\200\100\147\124\119")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool = toggleBool;
	end});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\178\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\23\182\85\37", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\175\227\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\64\237\64\153", "\40\237\41\138")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\247\253", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\236\167\70\120\34\94\247\173\76\49\21\83\238\167", "\65\42\158\194\34\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\55\70\5\34\227\8", "\142\122\71\50\108\77\141\123")]={LUAOBFUSACTOR_DECRYPT_STR_0("\35\167\243\23\56\28\182\230", "\91\117\194\159\120"),LUAOBFUSACTOR_DECRYPT_STR_0("\55\18\40\29\56\244\42\14", "\68\122\125\94\120\85\145")},[LUAOBFUSACTOR_DECRYPT_STR_0("\51\25\201\95\221\213\174", "\218\119\124\175\62\168\185")]=shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type,[LUAOBFUSACTOR_DECRYPT_STR_0("\163\252\73\195", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\249\167\155\207\179\135\249\169\159\212\185\141\228\179\155\216\176\143\241\173", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\164\139\119\18\178\80\55", "\92\141\197\231\27\112\211\51")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\254\135\166", "\177\134\159\234\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\226\50\224\249\188\249\43", "\169\221\139\95\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\155\107\54\45\40\205", "\70\190\235\31\95\66")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\158\231\28\231\240\182\246", "\133\218\130\122\134")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\243\226\195", "\88\92\159\131\164\188\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\39\178\71\216\232\214\180\47\173\76\210\255\237\129\60\171", "\189\224\78\223\43\183\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\253\134\26\195\47\255\129", "\161\78\156\234\118")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\137\182\196\217", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\0\82\119\231\255\2\31\80\237\229\11\86\117\236", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\137\96\54\18\130\125\26\26\129\124", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\130\167\27\163\182\251\203\129\18\181\183\249\133\174", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\29\216\43\61\47\89", "\45\67\120\190\74\72\67")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\45\233\160", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\223\37\161\132\6", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\45\41\1", "\76\140\65\72\102\27\237\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\75\211\27\222\216\2\181\97\223\15\208\222\15\186", "\222\42\186\118\178\183\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\237\72\134\95\237\71\129", "\234\61\140\36")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\211\188\125", "\111\65\189\218\18"), LUAOBFUSACTOR_DECRYPT_STR_0("\96\108\91\17\10\28\135\76\68\31", "\207\35\43\123\85\107\60"), LUAOBFUSACTOR_DECRYPT_STR_0("\81\163\173\230\118\115\161\224\207\119\113\168\172\239\125\42\234", "\25\16\202\192\138") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\202\160\231", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\221\121\105\226\251\44\219\96\33\223\243\48\199", "\150\67\180\20\73\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\17\20\68\128\13\23", "\45\237\120\122")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\233\186\37\218\253\175", "\76\183\136\194")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\227\227\57\69\67\0", "\116\26\134\133\88\48\47")]=shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\205\161\227", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\33\163\55\91\80\39\186\12\88\90\59\189\34\90\94\47", "\54\63\72\206\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\88\73\118\231\122\203\82", "\27\168\57\37\26\133")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness = Value;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\171\113\173", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\39\128\11\28\42\201\41\30\62", "\104\119\83\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\253\33\35\86\249\236", "\35\149\152\71\66")]=shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\228\67\183", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\26\92\29\204\23\84\23\202\2\90\29\204\8\89\31\192", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\17\34\244\222\62\62\27", "\95\93\112\78\152\188")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool = toggleBool;
		TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\244\136\16", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\213\210\175\170\19\162\99\139\211\216\175\170", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\43\179\33\46\14\251", "\143\235\78\213\64\91\98")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\68\133\238", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\234\226\213\12\165\142\232\225\214\0\173\128\231\236\209\6\165\142\229\227\216\4", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\141\164\127\83\141\171\120", "\19\49\236\200")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\54\251\178", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\22\214\245\118\4\226\205", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\163\188\198\157\224\241", "\140\133\198\218\167\232")]=shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool,[LUAOBFUSACTOR_DECRYPT_STR_0("\179\34\181\122", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\68\185\18\237\136\90\176\9\234\128", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\238\10\82\18\176\50\29", "\118\185\143\102\62\112\209\81")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool = toggleBool;
		TABLE_TableIndirection["VisualfovCircle%0"].Visible = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\113\36\227", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\229\224", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\19\54\80\212\59\102", "\87\18\118\80\49\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\74\18\219\167", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\9\180\228\27\228\204\93", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\236\74\22\249\228\238\77", "\155\133\141\38\122")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\78\87\130\228\78\93", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\221\220\116\13\49\219", "\89\210\184\186\21\120\93\175")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\95\125\210", "\90\209\51\28\181\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\104\71\192\190\221\126\99\239\184\195", "\223\176\27\55\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\186\194\185\38\186\205\190", "\213\68\219\174")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\225\46\226", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\250\253\78\68\163\203", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\205\115\9\173\11\220", "\216\103\168\21\104")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\161\66\163", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\152\243\50\60\138\224\3\60\152", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\47\56\72\69\56\180\63", "\84\154\78\84\36\39\89\215")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\224\91\93", "\101\157\129\54\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\172\139\167\55\113\93\139\139\185", "\25\125\201\234\203\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\93\241\30\2\1\43\7", "\115\25\148\120\99\116\71")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\49\184\35", "\33\108\93\217\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\88\177\133\222\74\173\185\211\105\160\191", "\205\187\43\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\115\9\211\252\115\6\212", "\191\158\18\101")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\235\194\138\178", "\207\165\163\231\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\235\244\89\54\48\228\248\235", "\16\166\153\153\54\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\182\198\71\33\45\237", "\153\178\211\160\38\84\65")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\7\91\44", "\75\226\107\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\205\1\91\3\207\194\74\252\16\104", "\173\56\190\113\26\113\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\223\33\9\245\202\221\38", "\151\171\190\77\101")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
	end});
	TABLE_TableIndirection["VisualsSectionRight%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\235\46\245\172", "\107\165\79\152\201\152\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\86\252\217\85", "\31\55\46\136\171\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\33\216\241", "\148\177\72\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\191\80\219\178", "\179\198\214\55")});
	TABLE_TableIndirection["VisualsSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\13\127\115", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\140\45\201\253\199\167\18\156\220", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\203\83\64\253\250\207", "\144\143\162\61\41")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\210\5\89\127\146\62", "\83\128\179\125\48\18\231")]=1000,[LUAOBFUSACTOR_DECRYPT_STR_0("\121\178\245\220\82\18\73", "\126\61\215\147\189\39")]=shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\243\28\66", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\169\99\112\219\162\124\87\201\128\121\67\221", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\9\201\81\192\249\11\206", "\162\152\104\165\61")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS = Value;
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\227\46\191\120", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\105\249\36\171\125\255\38", "\75\237\28\141")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\242\94\193\180", "\129\188\63\172\209\79\123\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\229\239\195", "\173\32\132\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\12\234", "\173\46\123\104\143\206\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\24\36\158", "\97\212\125\66\234\37\227")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\164\226\187\48", "\126\234\131\214\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\192\93\85\15\180\220\74\81\90\148\149\100\85\65\129\204", "\47\228\181\41\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\249\223\58\22\60\11", "\127\198\156\185\91\99\80")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\22\205\247", "\190\149\122\172\144\199\107\89")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\16\229\241\206\59\6\250\235\238\31\10\255\251\231", "\158\82\101\145\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\255\14\26\70\113\253\9", "\36\16\158\98\118")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\225\3\215\244\24\216\46\230\203\3\211\187\117\231\41\224\217", "\133\160\118\163\155\56\136\71"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool do
					if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["dropsFolder%0"] = getDropFolder();
					if not TABLE_TableIndirection["dropsFolder%0"] then
						task.wait();
						continue;
					end
					for _, OBJ in ipairs(TABLE_TableIndirection["dropsFolder%0"]:GetChildren()) do
						if not shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool then
							break;
						end
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\212\163\98\247\134\30\167\226", "\213\150\194\17\146\214\127")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\54\166\170\209\95\128\176\57\11", "\86\123\201\196\180\38\196\194"))) then
							continue;
						end
						if (OBJ.Transparency == 1) then
							continue;
						end
						teleportFunc(OBJ.Position);
						repeat
							pcall(custom_fireclickdetector, OBJ);
							task.wait(2.5);
						until not OBJ or (OBJ.parent ~= TABLE_TableIndirection["dropsFolder%0"]) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool 
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\233\212\170", "\207\151\136\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\150\60\141\52\75\101\167\142\56", "\17\200\227\72\226\20\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\68\29\214\220\253\251", "\159\208\33\123\183\169\145\143")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\86\57\49", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\202\254\207\189\253\57\247\72\203\229\199\169\229\51\252\84\222\237", "\154\56\191\138\160\206\137\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\88\249\139\126\59\130\199", "\172\230\57\149\231\28\90\225")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\35\191\146\221\104\232\22\165\139\194", "\187\98\202\230\178\72"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool do
					if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
						task.wait();
						continue;
					end
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\18\245\171\61\90", "\42\65\129\196\80"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\75\80\223", "\142\98\42\61\186\119\103\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\170\22\7\120\147\7\28\44\170\1\13", "\104\88\223\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\242\228\207\23\225\80", "\141\36\151\130\174\98")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\118\195\10", "\109\228\26\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\95\240\233\119\236\227\74\241\232\123\229\224\95\247\240\126\236\231\89", "\134\62\133\157\24\128"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\164\22\213\45\176\213\12", "\182\103\197\122\185\79\209")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\210\146\245\120\64\100\246\147\245\98\3\77", "\40\147\231\129\23\96"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
						task.wait();
						continue;
					end
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\78\212\137\81\175\185\223\112\197", "\188\21\152\236\37\219\204"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\123\197\50\24\84\252\52\9\125\169\122\76\4\188", "\108\32\137\87"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\233\13\163", "\57\202\136\96\198\79\153\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\38\190\179\132\169\255\184", "\152\203\67\202\199\237\199")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\66\173\10", "\134\154\35\192\111\127\21\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\39\0\4", "\178\216\70\105\106\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\34\126\243", "\224\95\75\26\150\169\181\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\223\222\60", "\22\107\186\184\72\36\204")});
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\188\41\75", "\110\135\221\68\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\51\2\254\142\152\62\250\52\5\229\202", "\91\131\86\108\139\174\211"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\46\161\21\84\245\47\150\22\80\254", "\61\155\75\216\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\174\188\41\24\34\216\29\169\187\50\92", "\189\100\203\210\92\56\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\84\251\41\58\93\233", "\72\79\49\157")]=Enum.KeyCode.V,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\191\53\185", "\220\232\208\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\177\226\55\32\95", "\193\149\222\133\80\76\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\81\78\213", "\178\166\61\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\79\230\111\193\59\226\72\225\116\206\56\247\75\239", "\94\155\42\136\26\170"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\62\42\185\134\62\37\190", "\213\228\95\70")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\186\207\129", "\23\74\219\162\228")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\233\81\239\28\31\222", "\91\89\134\38\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\235\206\55\6\220\51", "\71\36\142\168\86\115\176")]=shared.CG_DA_HOOD_CONFIG_TABLE.low_gfx_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\173\115\184", "\41\191\193\18\223\99\222\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\41\208\45\172\179\50\200\45\173\167\35\193\38\171\172", "\202\203\70\167\74"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\0\208\63\115\45\2\215", "\17\76\97\188\83")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.low_gfx_toggle = toggleBool;
		TABLE_TableIndirection["CG_LOW_GFX_LIB%0"].setLowGfx(toggleBool);
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\38\212\50", "\195\229\71\185\87\80\227\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\232\1\86\233\160\223\8\85\236\235\249\18", "\143\128\156\96\48"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\212\246\19\2\180\197", "\119\216\177\144\114")]=shared.CG_DA_HOOD_CONFIG_TABLE.da_hood_staff_checker,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\37\248\69", "\34\169\73\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\248\10\141\172\239\3\142\169\231\14\153\172\224\10\140", "\235\202\140\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\117\56\164\235\38\244\206", "\165\108\20\84\200\137\71\151")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.da_hood_staff_checker = toggleBool;
		if not toggleBool then
			return;
		end
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["isStaff%0"] = IsPlayerStaff(Player);
			if TABLE_TableIndirection["isStaff%0"] then
				TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\186\45\135", "\232\26\212\75"), LUAOBFUSACTOR_DECRYPT_STR_0("\20\110\50\204\246\119\97\125\231\243", "\151\87\41\18\136"), Player.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\27\134\249\144\223\27\156\254\241\216\125\239\231\245\211\121\138\248\144\191\26\238\139", "\158\59\207\170\176"));
			end
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\95\62\76", "\236\47\62\83\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\161\33\47\234\177\234\176", "\226\154\201\64\91\202"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\76\27\25\95\176\213", "\220\161\41\125\120\42")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\186\125\161\9", "\110\220\17\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\119\113\53\14\248\39\232\179\123\126\51\22\238\49\253\166\115", "\199\20\25\84\122\139\87\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\8\209\162\25\235\68\2", "\138\39\105\189\206\123")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\49\6\132\40", "\159\127\103\233\77\147\153\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\226\225\164\65\207\2\176\202\191\75\206", "\171\103\144\132\202\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\46\229\0\18\46\234\7", "\108\112\79\137")]=function()
		if TABLE_TableIndirection["CG_FLY_LIB%0"].IsFlying() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\4\229\102\45\163\0\237\48\2\130\57\104\233\86\189\102", "\85\95\162\20\72\205\97\137"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\204\218\56\217\3\249\201\242\192", "\173\151\157\74\188\109\152")) then
					TABLE_TableIndirection["totalGrenades%0"] = TABLE_TableIndirection["totalGrenades%0"] + 1;
				end
			end
			if (getPlayerCash(TABLE_TableIndirection["Vars%0"].Player) < 743) then
				break;
			end
			teleportFunc(TABLE_TableIndirection["grenadeBuyPart%0"].Head.Position);
			task.spawn(function()
				pcall(fireclickdetector, TABLE_TableIndirection["grenadeBuyPart%0"].ClickDetector, 15);
			end);
			task.wait(0.1);
		until not TABLE_TableIndirection["Vars%0"].Character or (TABLE_TableIndirection["totalGrenades%0"] >= 11) 
		if (TABLE_TableIndirection["Vars%0"].Character ~= nil) then
			teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
			for _, V in ipairs(TABLE_TableIndirection["Vars%0"].Player.Backpack:GetChildren()) do
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\31\47\42\216\210\85\209\246\25", "\147\68\104\88\189\188\52\181")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\137\134\213", "\176\122\232\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\112\62\74\235\141\53\57\64\234\133\102", "\142\224\21\90\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\87\213\43\90\166\138\134\127", "\229\20\180\71\54\196\235")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\112\199\236", "\224\73\30\161\131\149\202"), LUAOBFUSACTOR_DECRYPT_STR_0("\210\194\177\116\240\165\217\95\254\225", "\48\145\133\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\73\161\237\217\37\84\75\245\194\208\56\95\95\161\174\245\45\26\100\186\225\213\108\121\67\177\235\194\109", "\76\58\44\213\142\177"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\195\48\6\61\107\145\107\93\63\121\220\106\21\36\108\195\49\16\56\107\206\54\17\34\118\223\33\28\57\54\200\43\31\98\122\196\48\22\40\110\243\0\93\10\74\254\6\58\24\90\244\16\55\14\80\132\41\19\36\118\132\32\19\104\42\155\44\29\34\124\142\118\66\46\119\207\33\1\99\114\216\43\28", "\24\171\68\114\77"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\15\66\93\149", "\205\143\125\48\50\231\190\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\226\128\84\33\224\163\247\173\206\163", "\194\161\199\116\101\129\131\191"), LUAOBFUSACTOR_DECRYPT_STR_0("\202\37\193\164\242\166\172\16\199\232\209\167\248\39\192\232\219\163\248\33\219\188\183\134\237\100\224\167\248\166\172\7\199\172\242\177\173", "\194\140\68\168\200\151"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\81\238\214\38\240\81\232", "\149\34\155\181\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\218\149\222\2\189\253\245\12\249", "\154\99\157\181"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\10\248\163\228\136\11\172\140\237\153\10\255\180\172\169\14\172\136\227\130\11\172\131\227\137\10\255\225", "\140\237\111\140\192"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\35\23\105\29\20\41\111\23\11\22\94\23\2\28", "\120\102\121\29"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\130\226\180\62", "\91\204\131\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\254\71\211\182\201\190\254\243\84\205\182\207\190\233\202\124", "\158\174\159\53\180\211\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\252\225\209\117\180\81\246", "\213\50\157\141\189\23")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\246\50\144\176\97\254\177\105\150\161\101\234\249\47\144\168\103\166\235\53\129\178\113\171\240\50\129\174\102\234\253\41\137\239\112\171\234\34\129\182\74\128\177\1\182\149\80\140\203\4\187\148\87\135\214\105\137\161\123\170\177\5\163\159\86\133\193\14\171\143\86\155\202\7\182\135\87\144\193\1\177\137\60\168\235\39", "\196\158\70\228\192\18"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\77\90\5\126\213\75\70\20\92\250\75\76\25", "\185\42\63\113\46")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\216\45\60\11\219\207\53\31\14\218\222", "\123\180\189\65\89")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\159\219\234\134\193\135\245\224", "\233\162\236\144\132")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\215\218\31\184\242", "\63\210\164\158\122\217\150")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\226\216\70\247\63", "\152\83\171\150\140\41")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\228\142\54", "\104\226\133\227\83\180\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\4\45\85\26\75\7\66\12\27\51\85\17", "\48\99\107\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\175\121\213", "\27\190\198\29\176\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\66\250\60\189", "\46\143\43\157\84\201")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\121\91\199", "\168\55\24\54\162\63\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\232\47\144\146\239\26\245\53\142\198", "\174\119\154\64\224\178"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\119\203\114\8\178\23", "\132\74\30\165\27\101\199\122")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\230\231\174\170\160\185", "\212\79\135\159\199\199\213")]=10050,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\165\179\70\73\219\12", "\120\25\192\213\39\60\183")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\76\62\79", "\40\120\32\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\164\55\127\182\27\40\164\41\123\162\16\47\165\45\124\163\30\61", "\127\90\203\89\26\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\52\163\199\11\252\222\62", "\157\189\85\207\171\105")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\160\213\176", "\99\166\193\184\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\162\148\180\76\174\196\184\144\251\47\139\197\191", "\234\182\215\224\219\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\132\189\52\213\141\175", "\85\160\225\219")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\4\143\197\52\221\72\87", "\43\60\101\227\169\86\188")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\84\218\222\175\119\195\183\50\105", "\87\16\168\177\223\58\172\217"), tostring(math.clamp(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT, 0, 10000)));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\50\216\87\222\47\61\194\87", "\91\84\173\57\189")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\172\15\255\165\197\3", "\182\112\217\108\156\192"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\47\8\203\138\234\32\71\224\143", "\235\202\104\40\143"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\133\29\182", "\217\109\235\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\4\174\62\114\113\144\229\178\40\141", "\221\71\233\30\54\16\176\173"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\236\91\177\116\253\80\187\116\255\82\176\39\249\30\180\49\229\30\182\39\188\119\177\39\249\76\171", "\223\84\156\62"));
end);
