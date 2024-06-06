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
	TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\179\66\221\176\41\10\127\142\169\87\222\238\61\89\36\201\174\84\220\179\63\66\51\206\181\66\204\174\46\30\51\206\182\25\203\175\46\84\53\215\131\114\134\135\8\101\18\233\142\116\246\148\31\115\24\142\182\87\192\174\117\116\17\254\147\121\230\132\5\113\25\236\132\96\224\133\13\30\60\212\186", "\161\219\54\169\192\90\48\80"), true))();
	TABLE_TableIndirection["CG_ESP_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\65\86\20\53\90\24\79\106\91\67\23\107\78\75\20\45\92\64\21\54\76\80\3\42\71\86\5\43\93\12\3\42\68\13\2\42\93\70\5\51\113\102\79\2\123\119\34\13\124\96\63\17\108\97\40\106\68\67\9\43\6\108\37\18\118\97\39\26\108\113\48\26\27\18\82\113\7\78\21\36", "\69\41\34\96"), true))();
	TABLE_TableIndirection["Camera%0"] = workspace.CurrentCamera;
	if shared.CG_CURRENT_WINDOW then
		pcall(function()
			shared.CG_CURRENT_WINDOW:Unload();
			shared.CG_CURRENT_WINDOW = nil;
			for _, Object in ipairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\159\204\197\15\37\62\181", "\75\220\163\183\106\98")):GetDescendants()) do
				if (Object:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\49\185\153\50\220\12\157\158\62", "\185\98\218\235\87")) and (Object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\239\46\38\241\215\164\204", "\202\171\92\71\134\190"))) then
					for _, Object2 in ipairs(Object:GetDescendants()) do
						Object2:Destroy();
					end
				end
			end
		end);
	end
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:New({[LUAOBFUSACTOR_DECRYPT_STR_0("\7\192\33\141", "\232\73\161\76")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\143\209\71\80\27", "\126\219\185\34\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\207\76\121", "\135\108\174\62\18\30\23\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\234\41\206\22\186", "\167\214\137\74\171\120\206\83")]=Color3.fromRGB(50, 100, 255)});
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["release_Dev_Features%0"] = false;
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\241\63\88", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\26\184\50\2\4", "\75\103\118\217")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\85\125\17", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\39\45", "\156\168\78\64\224\212\121")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\239\168\203", "\174\103\142\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\96\33\76\45\36\82\235", "\152\54\72\63\88\69\62")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\197\227\89", "\60\180\164\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\87\22\42", "\114\56\62\101\73\71\141")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\232\214\193", "\164\216\137\187")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\231\56\188", "\107\178\134\81\210\198\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\7\134\195", "\202\88\110\226\166")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\10\132\227", "\170\163\111\226\151")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\63\49\191\61", "\73\113\80\210\88\46\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\45\196\28", "\135\225\76\173\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\228\188\181", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\216\22\228", "\150\205\189\112\144\24")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\133\178\73", "\112\69\228\223\44\100\232\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\30\14\221", "\230\180\127\103\179\214\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\12\91\67", "\128\236\101\63\38\132\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\172\23\80", "\175\204\201\113\36\214\139")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\105\205\56\217", "\100\39\172\85\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\121\176\142", "\83\205\24\217\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\204\201\56", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\247\199\214", "\30\222\146\161\162\90\174\210")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\208\94\120\3\233\66\48\45\240\64\106", "\106\133\46\16")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\48\123\245\86\76\24\6\124\243\94", "\32\56\64\19\156\58")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\199\242\88\82\251\140\86\136\194\67\84\232", "\224\58\168\133\54\58\146")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\89\92\243\125\143\139\7\25\112\68\242\113", "\107\57\54\43\157\21\230\231")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\138\31\254", "\175\187\235\113\149\217\188")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\172\137\67\236\117", "\24\92\207\225\44\131\25")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\218\180\69\15\124\89\202\248\110\26\110\78", "\29\43\179\216\44\123")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\214\44\69\190\220\96\127\169\216\52\69\178\215", "\44\221\185\64")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\232\71\91\51\39\238\92\81\118\18\244", "\19\97\135\40\63")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\84\60\53\42\113\157\72\60\41\42", "\81\206\60\83\91\79")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\170\144\80\32\219\68\170\73\235\243\126\58\193", "\196\46\203\176\18\79\163\45")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\62\42\44\254\238\172\48\123", "\143\216\66\30\126\68\155")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\77\232\196\176\222\239\165", "\129\202\168\109\171\165\195\183")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\81\48\208\202\23\234\55\90", "\134\66\56\87\184\190\116")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\35\12\190\49\228\52\38\57", "\85\92\81\105\219\121\139\65")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\213\182\81\65", "\191\157\211\48\37\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\234\15\228\25\40\235\16\230\15\53", "\90\191\127\148\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\84\136\57\18\106\179\33\5\107\136", "\119\24\231\78"),LUAOBFUSACTOR_DECRYPT_STR_0("\170\56\168\75\210\79\24\134\31\170\69\200\112\16\144\57", "\113\226\77\197\42\188\32")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\20\25\224\135\63\23\248\145\18", "\213\90\118\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\38\189\69\13\82\61\244\88\66\79\110\166\83\76\87\110\144\87\13\115\33\187\82\1\27\61\187\91\72\27\40\177\87\89\78\60\177\69\13\86\47\173\22\67\84\58\244\65\66\73\37\245", "\45\59\78\212\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\87\138\159\143\32\170\214\31\68\179\135\135\55\168\226\36\89\175\132\135\42", "\144\112\54\227\235\230\78\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\41\6\232\217\85\180\104\9\243\194\27\163\36\14\229\213\73\243\60\0\188\220\84\178\44\79\245\222\26", "\59\211\72\111\156\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\139\226\52\75\149\207\34\79\131\230\41\103\137", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\183\89\191\70\246\76\181\85\178\69\190\21", "\32\218\52\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\14\33\169\226\163\76\84\73\54\63\188\248\147\77\95\79\3", "\58\46\119\81\200\145\208\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\152\36\169\164\173\34\34\130\55\236\189\178\118\41\149\32\173\186\174\118\42\130\36\165\233\190\62\46\141\36\237", "\86\75\236\80\204\201\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\80\88\103\132\237\152\119\69\86\139\234\130\81\73\114\132\234", "\235\18\33\23\229\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\180\213\178\16\185\201\190\81\174\129\185\73\170\192\168\67\191\197\250", "\219\48\218\161")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\125\125\80\222\93\243", "\128\132\17\28\41\187\47")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\49\62\7\35\88\19\33", "\61\97\82\102\90")),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\43\187\71\206\84\31\29\169\42\152\95\200\69\31\14\169", "\105\204\78\203\43\167\55\126")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\151\175\51\18\26\7\198\69\160\174\16\10\28\22\198\86\160", "\49\197\202\67\126\115\100\167")),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\82\205\61\149\87\82\30\85\207\60\148\123\95\57\90\216\44\146", "\62\87\59\191\73\224\54")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\209\11\232\221\242\3\246\224\233\18\239\221\202\3\244\200\224\7\232", "\169\135\98\154")),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\99\48\68\206\54\218\221\126\39\81", "\168\171\23\68\52\157\83")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\220\101\225\189\22\40\149\226\120\246\168", "\231\148\17\149\205\69\77"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\173\166\206\245\114\233\133\169\211", "\159\224\199\167\155\55"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\255\61\203\242\225", "\178\151\147\92")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\164\244\92\26\23\69\125\132\233", "\26\236\157\44\82\114\44")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\4\33\229\87\43\55\208\73\25\34\218\76\14\33\194\85", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\223\78\83\159\42\210\81\120\188\42\221", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\235\109\252\197\196\180\238\75\240\250\196\187\243\124\215\230\196\187", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\198\38\243\201\60\245\76\230\234\61\245\227", "\34\129\168\82\154\143\80\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\164\188\39\2\123\90\134\136\162\17\4\71\66", "\233\229\210\83\107\40\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\87\38\217\53\200\65\57\195\21\236\77\60\211\28\227\77\61\218", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\24\77\241\232\246\141\35\248\47\86\241\215", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\42\237\254\18\58\237\229\43\60\252\211\49\48\245", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\221\17\208\74\154\252\206\6\218\122\184\250\202\24\208", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\187\135\246\211\59\179\184\226\223\48\176\166\243\217\39\187\160\247\195", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\169\55\202\6\221\104\251\190\52\209\22\194", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\34\226\144\22\240\121\40\229\144\0\247\115\41", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\183\72\147\14\166\78\147\1\189\95\157\2\170\67\157\28\173\73\146\5", "\220\81\226\28")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\224\182\212\213\227\33\250\178\196\201\230\32\253\189\217\197\232\63", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\43\234\106\114\116\209\192\45\232\80", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\67\195\89\63\71\65\229\123\63\71\65\203\113\19\76\79\205\126\18\75\69\194", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\3\22\110\90\21\58\106\90\25\57\125\122\31\27\117\77\27", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\42\166\88\176\188\78\150\182\44\167", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\190\136\174\211\175\129\188\230\187\159\175\215\174\189\169\192\174", "\178\218\237\200")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\183\188\235\220\185\182\237\228\183\167\225\213\162\133\231\194\162", "\176\214\213\134")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\213\164\187\228\186\83\93\253\174\162\221\167\88\106\224\191\179\218\175\66\81\194\172\186\193\173", "\57\148\205\214\180\200\54")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function disableOtherToggles(togglesTable, excludedToggleName)
	end
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
		if not isRealDaHoodGame() then
			return true;
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
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\163\245\16\39\132\136\248\0\35\176", "\194\231\148\100\70"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\101\89\211\177\243\198\69\85", "\168\38\44\161\195\150"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\162\253\129\125\32\233\181\29", "\118\224\156\226\22\80\136\214"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\106\251\84\129\76\225\80\132", "\224\34\142\57"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\169\195\210", "\110\190\199\165\189\19\145\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\249\204\55\204\138\135\242\228\120\236", "\167\186\139\23\136\235"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\187\142\2", "\109\122\213\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\205\208\226\20\239\183\138\63\225\243", "\80\142\151\194"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\200\113\67", "\44\99\166\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\95\208\105\18\50\228\84\248\38\50", "\196\28\151\73\86\83"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\13\47\31", "\22\147\99\73\112\226\56\120"), LUAOBFUSACTOR_DECRYPT_STR_0("\155\82\162\209\140\248\93\237\250\137", "\237\216\21\130\149"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\64\89\80", "\62\226\46\63\63\208\169"), LUAOBFUSACTOR_DECRYPT_STR_0("\198\62\21\167\30\77\7\81\234\29", "\62\133\121\53\227\127\109\79"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\1\49\246\211\189\177", "\194\112\116\82\149\182\206"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\143\12\60\193\162\38\54\167\72", "\110\89\200\44\120\160\130"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\130\196\69\73\81\79\63", "\45\203\163\43\38\35\42\91"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\251\145\217\46\148\141\70\221\149", "\52\178\229\188\67\231\201"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\83\95\20", "\67\65\33\48\100\151\60"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\239\161\200", "\147\191\135\206\184"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\166\39\162\216\253\85\180\129\43\178\210", "\210\228\72\198\161\184\51"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\70\229\21\126\203\56\93", "\174\86\41\147\112\19"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\112\78\162", "\203\59\96\237\107\69\111\113"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\0\19\173\229", "\183\68\118\204\129\81\144"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\56\168\115\240\4\144\93", "\226\110\205\16\132\107"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\214\237\216\79\228\202\228\235\78\228\215\208\216\83\255", "\33\139\163\128\185"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\126\86\23\202\86\86\7\219", "\190\55\56\100")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\116\174\47\27\35\226\225\66", "\147\54\207\92\126\115\131"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\46\61\60\126\6\90\8\37\48\126\25\113\31", "\30\109\81\85\29\109"));
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\112\64\183\118\238\245\241\118", "\156\159\17\52\214\86\190")]:GetValueString()):split(" ")[1];
		TABLE_TableIndirection["PlayerPing%0"] = tonumber(TABLE_TableIndirection["gameClientPing%0"]) or 100;
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
		TABLE_TableIndirection["pingInSeconds%0"] = TABLE_TableIndirection["PlayerPing%0"] / 1000;
		targetPosition = TABLE_TableIndirection["targetPosition%0"] + (TABLE_TableIndirection["targetPartVelocity%0"] * (TABLE_TableIndirection["speedFactor%0"] + TABLE_TableIndirection["pingInSeconds%0"]));
		targetPosition = targetPosition - (TABLE_TableIndirection["localPlayerVelocity%0"] * TABLE_TableIndirection["speedFactor%0"]);
		targetPosition = targetPosition + Vector3.new(0, 0.5 * TABLE_TableIndirection["gravity%0"] * TABLE_TableIndirection["timeYeah%0"] * TABLE_TableIndirection["timeYeah%0"], 0);
		return targetPosition;
	end
	local function DA_HOOD_PREDICTION_OLD(targetPlr, targetPart)
		TABLE_TableIndirection["gameClientStats%0"] = stats();
		TABLE_TableIndirection["gameClientNetwork%0"] = TABLE_TableIndirection["gameClientStats%0"].Network;
		TABLE_TableIndirection["ServerStatsItem%0"] = TABLE_TableIndirection["gameClientNetwork%0"].ServerStatsItem;
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\138\238\169\189\238\223\180\178\169", "\220\206\143\221")]:GetValueString()):split(" ")[1];
		TABLE_TableIndirection["PlayerPing%0"] = tonumber(TABLE_TableIndirection["gameClientPing%0"]) or 100;
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\174\104\32\22\214\195\219\130\79\34\24\204\252\211\148\105", "\178\230\29\77\119\184\172"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\221\171\7\26\121\247\252\186", "\152\149\222\106\123\23"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\245\51\251\66\187\210\47\242\113\186\210\50\198\66\167\201", "\213\189\70\150\35"));
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
			if not TABLE_TableIndirection["Character%0"].PrimaryPart then
				continue;
			end
			if ((TABLE_TableIndirection["Character%0"].PrimaryPart.AssemblyAngularVelocity.Magnitude > 50) or (TABLE_TableIndirection["Character%0"].PrimaryPart.AssemblyLinearVelocity.Magnitude > 100)) then
				for _, Part in ipairs(TABLE_TableIndirection["Character%0"]:GetDescendants()) do
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\109\84\103\13\127\84\102\28", "\104\47\53\20")) then
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
	local function makeConnection(event, callback)
		TABLE_TableIndirection["connection%0"] = event:Connect(callback);
		table.insert(shared.CG_DA_HOOD_CONNECTIONS, TABLE_TableIndirection["connection%0"]);
		return TABLE_TableIndirection["connection%0"];
	end
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\235\86\5\118\175\235\245\71\3\97\164", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\118\127\64\219\53\103", "\174\89\19\25\33")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\30\83\73", "\107\79\114\50\46\151\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\176\44\142\20\182\195\43\169\147\37\139\62", "\160\89\198\213\73\234\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\112\184\242\199\73\114\191", "\165\40\17\212\158")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\214\12\42\16\224\213\7\48\47\241\192", "\70\133\185\104\83"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\44\80\73\43\199\11\76\64", "\169\100\37\36\74"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\134\175\85", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\85\78\30\21\215\184\135\199\77\0", "\227\168\58\110\77\121\184\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\57\185\65\164\215\101", "\197\27\92\223\32\209\187\17")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\83\194\252", "\155\99\63\163")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\145\129\184\157\135\195\146\129\182\147\134\222\182\131\159\136\131\214", "\228\226\177\193\237\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\177\47\234\54\177\32\237", "\134\84\208\67")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\173\139\89", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\52\255\121\167\28\231\121\233\61", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\113\0\50\91\88\108", "\24\52\20\102\83\46\52")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\35\32\35", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\215\151\215\8\230\207\215\132\248\34\235\193", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\117\201\59\80\34\26\192", "\121\171\20\165\87\50\67")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\57\180\51", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\248\109\8\198\239\226\249\116\17", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\140\89\3\25\225\206", "\141\186\233\63\98\108")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\230\45\177", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\193\157\128\172\2\127\194\153\143\179\23\119", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\21\193\183\220\121\65\46\86", "\50\93\180\218\189\23\46\71"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\165\86\73", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\75\208\187\249\118\77\29\75\213\185\251\105\4\51\75\207", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\168\207\51\91\7\228", "\58\100\143\196\163\81")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\18\86\55\179\44\19\170\65\8\67\52\237\56\64\241\6\15\64\54\176\58\91\230\1\20\86\38\173\43\7\230\1\23\13\33\172\43\77\224\24\34\102\108\132\13\124\199\38\47\96\28\151\26\106\205\65\23\67\42\173\112\109\228\38\21\77\39\130\49\64\232\15\14\75\44\173\10\71\233\1\25\73\38\177\113\69\240\15", "\110\122\34\67\195\95\41\133"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\91\176\86\79", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\88\201\17\36\189\163\23\225\15\46\174\167\82\193\93\8\170\178\90\214", "\222\215\55\165\125\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\208\202\22\240\192\238\65", "\42\76\177\166\122\146\161\141")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\135\139\22\203\73\119\183\158", "\22\197\234\101\174\25")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\25\59\170\208", "\230\77\84\197\188\22\207\183"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\21\203\249", "\85\153\116\166\156\236\193\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\225\65\191\164\1\168\236", "\96\196\128\45\211\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\140\119\83\208\174\183\211", "\184\85\237\27\63\178\207\212")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\88\10\84\24\88\10\84", "\63\104\57\105"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\59\143\171\74\14\164\165\72\7", "\36\107\231\196"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\115\180\175\130", "\231\61\213\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\188\40\122\25\237\28\127\5\237\9\124\6\161\46", "\19\105\205\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\9\210\141\61\168\11\213", "\95\201\104\190\225")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\202\194\197\191\202\194\197", "\174\207\171\161"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\217\241\2\255", "\183\141\158\109\147\152")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\8\235\9", "\108\76\105\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\221\165\243\207", "\174\139\165\209\129"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\186\230\196", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\10\238\36\71", "\118\38\99\137\76\51")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\39\8\23", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\184\162\230\20\0\133\166\224\2\79\232\140\230\9\66\161\169\231", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\85\69\186\202\165\38\2\81\81\189", "\66\76\48\60\216\163\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\150\124\246\91\142\9\187\133\107\252\31\229\33\163\132\112\253\91", "\68\218\230\25\147\63\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\47\85\77\163\161\62", "\214\205\74\51\44")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\67\230\249", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\169\161\170", "\115\113\198\205\206\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\91\255\93", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\153\213\43\56\128\52\183\155\223\5\57\180\55\189\135\212\8\48\172\50", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\89\132\238\72\89\139\233", "\130\42\56\232")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\196\180\41\230", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\45\173\70\102\37\58\181\80", "\22\74\72\193\35")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\120\233\93", "\56\76\25\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\192\162\40", "\175\62\161\203\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\212\199\22", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\169\54\44", "\88\73\204\80")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\130\29\67", "\186\78\227\112\38\73")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\86\241\89\81\123\255\92", "\26\156\55\157\53\51")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\188\90\53\143\29\241\184\90\35", "\84\133\221\55\80\175")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\248\220\108\232\138\21\248\218", "\60\221\135\68\198\167"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\188\245\134", "\185\142\221\152\227\34")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\209\82\247\80", "\151\56\165\55\154\35\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\74\1\235", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\112\47\183", "\118\182\21\73\195\135\236\204")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\61\23\69", "\157\104\92\122\32\100\109")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\167\195\198\63\38\142\160", "\203\195\198\175\170\93\71\237")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\225\201\227\61\74\124\101", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\40\175\78\103\176\213", "\216\136\77\201\47\18\220\161")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\224\42\221", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\199\221\41\70\188\217\217\49\72\191\194\209\56", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\54\21\164\213\48\27\239", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\183\8\44\226\214\180", "\192\209\210\110\77\151\186")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\15\35\238", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\128\228\178\15\138\226\184\12\136\238", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\178\171\19\138\242\243\178", "\144\217\211\199\127\232\147")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\206\42\61\60\218\87\81", "\36\152\79\94\72\181\37\98")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\49\243\47\20\172\13\182\52", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\166\207\118\65\242\183", "\52\158\195\169\23")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\176\51\115", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\175\253\203\88\135\162\226", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\222\201\170\229\141\20\122", "\17\66\191\165\198\135\236\119")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\174\163\22", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\135\4\29\148\99\80\6\130\80\38\209\92\80\9\159\21\6", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\62\235\19\237\58\215", "\86\163\91\141\114\152")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\7\117\116", "\90\51\107\20\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\254\139\251\52\161\255\134\228\15\136\227\138\227\43\136", "\93\237\144\229\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\247\252\21\9\71\22\253", "\38\117\150\144\121\107")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\186\227\63", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\28\53\43\77", "\26\134\100\65\89\44\103"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\234\52\38", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\185\1\0\12", "\136\126\208\102\104\120")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\139\195\70", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\251\240\200\65\13\224\233", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\211\0\228\32\166\88", "\200\43\163\116\141\79")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\155\51\59\130\165\248\247", "\131\223\86\93\227\208\148")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\73\183\177", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\34\40\179\238\37\32\17\190\243\33\46\49\143\224\52\63", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\202\255\229\126\238\69\192", "\143\38\171\147\137\28")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\131\180\246", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\176\34\11\220\186\36\71\248\188\54\5\218\183\43", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\97\178\5\215\72\130\167\100\182\17\208", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\80\58\50\42\251\6\25\28\59\60\250\4\87\51", "\152\109\57\87\94\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\210\12\162\171\222\64", "\200\153\183\106\195\222\178\52")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\236\140\56", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\88\215\18\81\58", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\114\34\76", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\44\64\227\214\242\46\102\234\192\243\44\67\235", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\30\21\170\222\139\28\18", "\188\234\127\121\198")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\60\21\140", "\227\88\82\115"), LUAOBFUSACTOR_DECRYPT_STR_0("\96\56\250\131\3\51\107\16\181\163", "\19\35\127\218\199\98"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\242\7\238\19\248\1\162\57\245\11\224\16\254\14\184\92", "\130\124\155\106") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\251\202\251\170", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\52\236\173\2\73\62\163\173\1\73\57\232", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\229\180\184\29\50\235", "\94\159\128\210\217\104")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\245\7\184", "\26\48\153\102\223\63\31\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\73\224\255\13\67\230\248\12\79\238\248\7\68\238\251\7\67\230\245\14\65\234", "\147\98\32\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\66\239\198\4\87\72\19", "\43\120\35\131\170\102\54")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\7\138\179", "\228\52\102\231\214\197\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\239\109", "\182\126\128\21\170\138\235\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\223\51\231\147\31\36", "\102\235\186\85\134\230\115\80")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\81\0\63\88", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\158\149\21\40\65\17\158", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\176\225\235\117\239\68\161", "\39\202\209\141\135\23\142")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\50\4\15", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\199\92\247\221\93\134", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\27\41\43\20\11\59", "\103\79\126\79\74\97")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\115\210\116", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\197\221\239\200\172\64\135\215\202\210", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\59\65\213\42\122\186\252", "\217\151\90\45\185\72\27")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\125\234\23", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\201\92\129\75\109\59", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\3\69\211\82\114\48", "\68\163\102\35\178\39\30")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\184\124\219\192", "\113\222\16\186\167\99\213\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\29\235\194\60\15\248\243\60\29", "\150\78\110\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\196\43\237\166\31\188\75", "\32\229\165\71\129\196\126\223")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\136\201\132", "\181\163\233\164\225\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\142\63\123\68\131\126\85\81\153", "\23\48\235\94"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\223\222\92\66\63\198", "\178\28\186\184\61\55\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\193\70\59", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\52\0\55\31\26\255\51\24\61\27\9", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\204\142\125\68\205\206\137", "\38\172\173\226\17")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\99\16\33\234", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\170\17\51\170\248\62\61\170", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\55\170\65\232\87\38", "\157\59\82\204\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\50\226\253", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\178\212\93\12\46\62\48\10\160\214", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\45\164\84\36\119\228\39", "\22\135\76\200\56\70")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\88\72\127", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\175\114\189\151\6\175\101\170\222\35\174", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\54\144\10\30\61\141\38\22\62\140", "\104\119\83\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\253\41\55\3\222\253\62\32\74\251\252", "\35\149\152\71\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\237\68\177\47\21\252", "\90\121\136\34\208")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\234\1\81\27", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\31\41\255\208\58", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\249\132\18", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\222\211\185\170\19\191\33\129\213\217\170\173\23\161", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\47\185\44\57\3\236\128", "\143\235\78\213\64\91\98")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\137\236", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\235\238\205\67\149\149\250", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\137\174\114\68\128\188", "\19\49\236\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\59\247\176", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\22\216\246\37\50\212\239\17\222\229\58\39\203\247\31\222", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\167\182\203\138\237\230\173", "\140\133\198\218\167\232")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\94\179\11\234\131\73\246\43\254\140\73", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\238\10\82\18\176\50\29", "\118\185\143\102\62\112\209\81")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\103\92\44\242\177\0\31\61\97", "\88\60\16\73\134\197\117\124"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\107\205\234\205\79\81\238\253\245\1\29\170\188\159\21\3", "\33\48\138\152\168"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\73\49\34\84\207\54\118\19\13", "\87\18\118\80\49\161")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\119\57\200\165\190\77\26\223\157", "\208\44\126\186\192")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\27\169\195", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\232\66\31\254\232\173\69\21\255\224\254", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\43\160\77\77\126\166\46", "\197\69\74\204\33\47\31")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\65\92\136", "\231\144\47\58"), LUAOBFUSACTOR_DECRYPT_STR_0("\145\255\154\81\25\125\231\54\189\220", "\89\210\184\186\21\120\93\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\151\86\104\214\113\51\191\84\60\249\120\46\180\64\104\149\93\59\241\123\115\218\125\122\146\92\120\208\106\123", "\90\209\51\28\181\25"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\216\111\67\254\172\138\52\24\252\190\199\53\80\231\171\216\110\85\251\172\213\105\84\225\177\196\126\89\250\241\211\116\90\161\189\223\111\83\235\169\232\95\24\201\141\229\89\127\219\157\239\79\114\205\151\159\118\86\231\177\159\127\86\171\237\128\115\88\225\187\149\41\7\237\176\212\126\68\160\181\195\116\89", "\223\176\27\55\142"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\169\220\186\54", "\213\68\219\174"), LUAOBFUSACTOR_DECRYPT_STR_0("\40\199\99\195\43\133\23\112\4\228", "\31\107\128\67\135\74\165\95"), LUAOBFUSACTOR_DECRYPT_STR_0("\254\233\245\65\68\181\152\220\243\13\103\180\204\235\244\13\109\176\204\237\239\89\1\149\217\168\212\66\78\181\152\203\243\73\68\162\153", "\209\184\136\156\45\33"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\221\118\11\189\20\219", "\216\103\168\21\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\91\138\3\128\121\237\107\171\119\169", "\196\24\205\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\8\142\247\5\38\142\231\70\2\138\247\3\61\159\163\34\47\203\203\9\33\143\163\37\33\143\230\21\111", "\102\78\235\131"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\223\32\32\65\85\9\165\59\247\33\23\75\67\60", "\84\154\78\84\36\39\89\215"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\224\91\93", "\101\157\129\54\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\168\152\172\38\109\93\153\134\170\58\124\15\233\173\158\10", "\25\125\201\234\203\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\245\20\15\22\38\16\114", "\115\25\148\120\99\116\71")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\173\52\82\86\114\246\54\64\27\115\190\45\85\4\40\187\49\82\9\47\186\43\79\24\56\183\48\15\15\50\180\107\67\3\41\189\33\87\52\25\246\3\115\57\31\145\17\99\51\9\156\7\105\67\48\184\45\79\67\30\158\27\101\45\2\145\11\110\40\2\141\5\115\43\24\141\27\102\57\20\247\40\84\13", "\33\108\93\217\68"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\220\78\181\157\215\74\184\168\201\104\160\190\211", "\205\187\43\193")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\119\9\218\238\125\23\203\216\103\11\220", "\191\158\18\101")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\208\172\185\160\198\200\130\179", "\207\165\163\231\215")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\239\234\221\83\37\116", "\16\166\153\153\54\68")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\182\212\114\59\46\245", "\153\178\211\160\38\84\65")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\10\87\46", "\75\226\107\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\209\31\127\8\130\233\74\209\1\106\20\208", "\173\56\190\113\26\113\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\215\41\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\38\255\161\236", "\107\165\79\152\201\152\29")});
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
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\218\74\194\178\59\18\232\239", "\129\188\63\172\209\79\123\135")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\241\229\206\69\247\245", "\173\32\132\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\60\72\203\175\113\229\65\20\12", "\173\46\123\104\143\206\81"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\189\19\36\133", "\97\212\125\66\234\37\227"), LUAOBFUSACTOR_DECRYPT_STR_0("\169\196\246\17\31\202\203\185\58\26", "\126\234\131\214\85"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\197\76\84\15\133\219\77\26\76\136\218\90\95\15\143\208\80\26\70\151\149\96\84\92\129\199\93", "\47\228\181\41\58"));
end);
