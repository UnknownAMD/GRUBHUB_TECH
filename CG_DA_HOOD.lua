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
	TABLE_TableIndirection["CG_FLY_LIB%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\180\215\195\26\17\113\243\140\197\11\21\101\187\202\195\2\23\41\169\208\210\24\1\36\178\215\210\4\22\101\191\204\218\69\0\36\168\199\210\28\58\15\243\228\229\63\32\3\137\225\232\62\39\8\148\140\218\11\11\37\243\224\240\53\38\10\131\235\248\37\38\20\154\239\238\68\14\62\189", "\75\220\163\183\106\98"), true))();
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
			for _, Object in ipairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\33\181\153\50\254\23\179", "\185\98\218\235\87")):GetDescendants()) do
				if (Object:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\248\63\53\227\219\164\236\41\46", "\202\171\92\71\134\190")) and (Object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\13\211\45\159\32\207\43", "\232\73\161\76"))) then
					for _, Object2 in ipairs(Object:GetDescendants()) do
						Object2:Destroy();
					end
				end
			end
		end);
	end
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:New({[LUAOBFUSACTOR_DECRYPT_STR_0("\149\216\79\88", "\126\219\185\34\61")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\56\198\91\127\123", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\232\56\192", "\167\214\137\74\171\120\206\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\170\243\49\88\246\179", "\199\235\144\82\61\152")]=Color3.fromRGB(50, 100, 255)});
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["release_Dev_Features%0"] = false;
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\23\180\46", "\75\103\118\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\88\113\13\188\12", "\126\167\52\16\116\217")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\47\45\133", "\156\168\78\64\224\212\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\231\168", "\174\103\142\197")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\205\253\73\213\200\253", "\60\180\164\142")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\95\8\44", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\224\200\199", "\164\216\137\187")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\231\60\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\15\139\200", "\202\88\110\226\166"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\6\134\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\53\180\44", "\73\113\80\210\88\46\87")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\175\45\192\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\236\177\190", "\199\122\141\216\208\204\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\212\20\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\129\185\88", "\112\69\228\223\44\100\232\113")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\30\10\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\4\86\72", "\128\236\101\63\38\132\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\160\21\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\201\51\200", "\100\39\172\85\188")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\121\180\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\196\196\51", "\93\134\165\173"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\251\197\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\75\118\30", "\106\133\46\16")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"] = Vector3.new(110, 23, -487);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\109\48\123\245\86\76\24\7\102\242\64", "\32\56\64\19\156\58")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\216\237\95\86\254\192\124\199\234\82", "\224\58\168\133\54\58\146")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\89\92\243\125\143\139\7\25\113\94\243\111", "\107\57\54\43\157\21\230\231")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\132\6\251\177\213\195\215\203\55\250\182\216", "\175\187\235\113\149\217\188")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\174\143\71", "\24\92\207\225\44\131\25")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\208\176\67\20\113", "\29\43\179\216\44\123")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\208\44\69\169\216\50\85\253\251\33\95\184", "\44\221\185\64")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\232\68\86\112\4\167\123\75\114\21\238\71\81", "\19\97\135\40\63")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\83\60\63\111\23\167\72\61\62\60\34", "\81\206\60\83\91\79")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\163\223\124\42\131\126\176\65\185\213", "\196\46\203\176\18\79\163\45")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\62\60\43\227\230\182\37\62\61\40\238\237", "\143\216\66\30\126\68\155")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\77\255\205\166\214\245\184\205", "\129\202\168\109\171\165\195\183")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\89\119\251\223\7\239\44\87", "\134\66\56\87\184\190\116")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\56\14\179\13\232\45\32\62", "\85\92\81\105\219\121\139\65")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\161\85\64\84\208\232\160\85", "\191\157\211\48\37\28")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\247\26\245\24", "\90\191\127\148\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\77\151\62\18\106\179\33\5\107\136", "\119\24\231\78"),LUAOBFUSACTOR_DECRYPT_STR_0("\174\34\178\79\206\116\30\144\62\170", "\113\226\77\197\42\188\32"),LUAOBFUSACTOR_DECRYPT_STR_0("\18\3\249\180\52\25\253\177\8\25\251\161\10\23\230\161", "\213\90\118\148")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\117\33\160\100\72\90\34\144\126", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\94\138\152\198\39\190\176\30\89\151\203\148\43\172\252\80\114\130\203\174\33\162\244\92\22\144\132\139\43\237\246\21\87\151\158\148\43\190\176\29\87\154\203\136\33\185\176\7\89\145\128\199", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\41\6\232\217\85\180\14\0\238\224\87\178\49\10\238\228\84\159\39\14\248", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\134\234\57\71\137\228\109\72\136\241\109\94\139\226\52\75\149\163\57\65\199\239\34\79\131\163\36\64\198", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\183\89\191\70\154\79\187\80\179\68\147\90", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\48\177\244\162\5\86\65\22\53\173\245\241", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\149\32\173\186\174\63\37\139\17\162\189\180\21\35\137\49\184", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\85\99\128\243\155\102\72\121\130\190\159\125\1\117\156\238\138\97\82\55\132\240\159\123\1\116\141\251\138\102\0", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\163\209\186\67\169\196\191\113\180\213\178\115\178\196\186\68", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\127\104\64\155\76\232\225\112\104\9\217\86\240\229\98\111\76\223\14", "\128\132\17\28\41\187\47")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\49\62\7\35\88\19\33", "\61\97\82\102\90")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\156\34\170\82\194\69\13", "\105\204\78\203\43\167\55\126")),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\175\51\18\26\7\198\69\160\174\16\10\28\22\198\86\160", "\49\197\202\67\126\115\100\167")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\5\94\207\37\137\85\95\35\94\219\26\148\89\76\54\92\218", "\62\87\59\191\73\224\54")),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\11\232\221\242\3\246\224\233\18\239\221\202\3\244\200\224\7\232", "\169\135\98\154")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\253\126\54\64\232\50\196\226\121\52\65\233\30\201\197\118\35\81\239", "\168\171\23\68\52\157\83")),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\101\225\189\22\40\149\226\120\246\168", "\231\148\17\149\205\69\77")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\168\179\211\235\100\250\146\177\206\248\82", "\159\224\199\167\155\55")),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\224\57\192\222\253\44\199\227\192\57\192\225\250\63\215", "\178\151\147\92")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\185\238\73\32\59\66\106\153\233\127\55\0\90\115\143\248", "\26\236\157\44\82\114\44")),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\59\219\104\47\60\195\82\41\43", "\59\74\78\181")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\23\196\84\105\182\55\199\83\89\182", "\211\69\177\58\58")),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\242\124\240\231\248\178\247\111\252\234\206", "\171\215\133\25\149\137")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\213\223\55\255\225\3\249\80\247\193\49\255", "\34\129\168\82\154\143\80\156"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\168\179\58\5\109\88\140\139\166", "\233\229\210\83\107\40\46"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\241\78\51\207\0\211", "\101\161\34\82\182")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\192\4\73\214\222\235\133\38\252", "\78\136\109\57\158\187\130\226")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\16\48\201\253\63\38\252\227\13\51\246\230\26\48\238\255", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\193\13\234\90\184\250\202\24\208", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\186\159\251\246\58\183\128\208\213\58\184", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\143\2\247\21\225\91\201\179\19\237\54\226\78\199\163\25\241\53", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\11\212\166\4\212\85\11\199\141\45\215\80", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\140\104\181\2\150\115\177\33\160\115\179\61", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\192\150\244\218\206\16\222\151\235\199\200\29\208\155\217\229\200\31", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\243\83\72\101\201\239\50\197\83\116\125", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\95\218\122\28\65\94\218\96\51\65\104\193\122\60", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\79\5\35\117\113\29\54\105\69\47\35\117\73\23\59\127", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\138\51\174\113\187\146\68\183\171\44\159\123\184\184\73\177", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\130\164\214\179\131\175\225\170\136\173\214\151\140\171\192\181\166\173\203", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\157\199\228\137\134\214\233\137\151\201\255\154", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\138\148\235\156\126\124\217\136\137\246\135\121\117", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\200\1\27\73\54\207\26\4\73\49\220\6\28\73\51\208\26\1\88\38", "\22\114\157\85\84")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\254\39\235\98\210\154\235\251\44\231\124\197\128\251\233\60\235\113", "\200\164\171\115\164\61\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\253\14\115\138\187\227\33\74\140\178", "\227\222\148\99\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\91\95\218\246\48\89\121\248\246\48\89\87\242\218\59\87\81\253\219\60\93\94", "\153\83\50\50\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\101\82\8\103\174\64\77\98\122\18\116\159\66\113\121\112\23", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\27\0\217\13\115\178\227\29\2\249", "\217\161\114\109\149\98\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\37\62\125\169\120\6\20\57\110\187\113\6\16\57\110\168", "\20\114\64\88\28\220")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\48\8\223\184\247\211\182\5\0\192\179\253\196\141\48\19\198", "\221\81\97\178\212\152\176")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\204\238\16\232\23\194\232\9\243\20\200\244\14", "\122\173\135\125\155")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\213\9\186\52\40\233\141\204\44\182\60\58\234\139\206\12", "\168\228\161\96\217\95\81")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\200\217\33\75\16\81\212\199\17\94\32\88\215", "\55\187\177\78\60\79")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\225\105\212\116\238\164\4\251\108", "\224\77\174\63\139\38\175")]=50};
	TABLE_TableIndirection["VisualfovCircle%0"] = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\167\72\74\45\136\68", "\78\228\33\56"));
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
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\227\127\160\8\128\218\110\190\2\134\203\77\183\17\147\199\125\183", "\229\174\30\210\99")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\40\238\148\88\253\41", "\89\123\141\230\49\141\93")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\223\126\245\13\28\121\240\99\255\28\4", "\42\147\17\150\108\112"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\63\167\63\107\201\233\2\163", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\28\170\87\179\235\30\173\48\6\168\66\141\229\5\189", "\201\98\105\199\54\221\132\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\30\140\44", "\204\217\108\227\65\98\85")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\204", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\175\2\59\241\223\167\44\59\215\215\163\5\34\198\216\180", "\163\182\192\109\79")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\18\212\219\53\43\5", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\9\26\232\42\50\2\255\43\9", "\141\88\102\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\65\197\125", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\161\189\60\201\167\181\9\239\186\179\43\243\163\183\38\239", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\117", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\30\32\78\76\63\46\86\106\30\32\103\76\3\38\69\80\26\34\72\76", "\38\56\119\71")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\195\238\74\194\11\87\254\234", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\136\248\65\203\227\145\239\76\205\250\132\248", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\0\39\88", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\53\67\234\71\42\133\44\118\235\84\35\152\40\69\225\91\15\137\50\80", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\22", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\122\5\119\95\37\132\5\118\48\118\76\47\158\20\114\1\119\70\11\132\20", "\234\96\19\98\31\43\110")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\54\30\64\211\130\115\134\3", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\168\242\43\80\2\95\182\240\49\104\43\87", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\143\21", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\161\4\204\72\199\166\6\193\110\229\175\34\208\72\237\171\11\201\89\226\188", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\251", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\69\198\171\226\233\72\71\205\166\196\193\65\109\213\183\247\203\78\65\196\173\226", "\168\38\44\161\195\150")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\176\253\144\98\30\233\187\19", "\118\224\156\226\22\80\136\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\231\94\136\86\200\86\143\86", "\224\34\142\57"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\181\202\208", "\110\190\199\165\189\19\145\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\226\112\224\159\230\212\224\123\237\185\206\221\202\99\252\138\196\210\230\114\230\159", "\167\186\139\23\136\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\186", "\109\122\213\232")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\246\176\62\231\249\165", "\80\142\151\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\225\55\104\2\134\95\67\12\194", "\44\99\166\23"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\90\194\5\26\10\155\80\216\8\18\22\128\67\212\1\23\1", "\196\28\151\73\86\83")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\209\2\42\27\146\89\27\125", "\22\147\99\73\112\226\56\120"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\131\69\234\250\131\189\72", "\237\216\21\130\149"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\185\126\87\80\190\204\99", "\62\226\46\63\63\208\169"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\193\24\65\130\57\2\35\90\224\11", "\62\133\121\53\227\127\109\79"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\1\32\231\211\160\161\9", "\194\112\116\82\149\182\206"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\79\19\208\227\13\50", "\110\89\200\44\120\160\130"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\131\214\70\71\77\69\50\73", "\45\203\163\43\38\35\42\91"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\139\218\44", "\52\178\229\188\67\231\201"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\102\16\32\246\28\11\46\78\84", "\67\65\33\48\100\151\60"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\233\168\215", "\147\191\135\206\184"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\15\230\229\217\19\154\139\39\162", "\210\228\72\198\161\184\51"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\71\245\31", "\174\86\41\147\112\19"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\39\205\47\36\79\57\164\84\4", "\203\59\96\237\107\69\111\113"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\24\170\238", "\183\68\118\204\129\81\144"), LUAOBFUSACTOR_DECRYPT_STR_0("\45\138\48\192\10\194\38\162\127\224", "\226\110\205\16\132\107"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\205\230\214", "\33\139\163\128\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\127\68\250\86\24\44\209\88\92", "\190\55\56\100"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\69\186\63\29\22\240\224", "\147\54\207\92\126\115\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\22\117\89\12\62\37\62\58\121", "\30\109\81\85\29\109"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\214\118\90\185\36\219\248", "\156\159\17\52\214\86\190"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\135\251\184\177\189\203\175\179\190", "\220\206\143\221"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\162\111\34\7", "\178\230\29\77\119\184\172"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\198\182\5\11", "\152\149\222\106\123\23"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\41\242\90\144\219\32\243\64\161\206", "\213\189\70\150\35"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\98\90\98\13\66\80\122\28", "\104\47\53\20"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\136\2\174", "\111\195\44\225\124\220"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\67\1\119", "\203\184\38\96\19\203"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\15\118\122\85\193\43\32", "\174\89\19\25\33"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\7\7\95\79\249\136\2\43\32\93\65\227\183\10\61\6", "\107\79\114\50\46\151\231"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\16\168\166\61\139\55\180\197", "\160\89\198\213\73\234\89\215")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\106\112\167\251\245\73\99\160", "\165\40\17\212\158"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\198\213\1\48\45\193\220\28\54\37\241\214\26", "\70\133\185\104\83"));
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\32\68\80\43\137\52\76\74\45", "\169\100\37\36\74")]:GetValueString()):split(" ")[1];
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
		TABLE_TableIndirection["targetPartVelocity%0"] = targetPlr.Character.PrimaryPart.Velocity;
		TABLE_TableIndirection["TargetDistance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude;
		TABLE_TableIndirection["localPlayerVelocity%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Velocity;
		TABLE_TableIndirection["Bulletspeed%0"] = 10000;
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
		TABLE_TableIndirection["randomVelocityY%0"] = math.random(70, 1000);
		TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, TABLE_TableIndirection["oldRootVelocity%0"].Y, TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
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
			if not TABLE_TableIndirection["Character%0"].PrimaryPart then
				continue;
			end
			if ((TABLE_TableIndirection["Character%0"].PrimaryPart.AssemblyAngularVelocity.Magnitude > 50) or (TABLE_TableIndirection["Character%0"].PrimaryPart.AssemblyLinearVelocity.Magnitude > 100)) then
				for _, Part in ipairs(TABLE_TableIndirection["Character%0"]:GetDescendants()) do
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\33\94\208\254\51\94\209\239", "\155\99\63\163")) then
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\208\172\136", "\228\226\177\193\237\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\18\188\58", "\134\84\208\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\169\128\93\6\160\146", "\60\115\204\230")]=shared.CG_DA_HOOD_CONFIG_TABLE.fly_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\234\119", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\68\120\7\42\75\70\126\88\109\0\63\79\83", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\46\45\40\13\197\44\42", "\111\164\79\65\68")]=function()
		TABLE_TableIndirection["CG_FLY_LIB%0"].EnableAndDisableFly();
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\142\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\97\209\56\18\14\24\216\127", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\191\55\172\14\210", "\98\166\88\217\86\217")]=shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\250\120\6", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\156\75\13\1\236\201\130\89\14\13\234", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\235\32\186\39\240\233\39", "\69\145\138\76\214")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["originalPosition%0"] = nil;
			while shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle do
				if not TABLE_TableIndirection["Vars%0"].Character then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
				if not TABLE_TableIndirection["shopFolder%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["maskBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\75\252\156\155\184\19\127\193\201\164\190\5\123\242\201\196\255\82\34\152", "\118\16\175\233\233\223"));
				if not TABLE_TableIndirection["maskBuyPart%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["playerHasMask%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\162\138\120\188\239\134\120\166\133\38\176", "\29\235\228\85\219\142\235"));
				if (not TABLE_TableIndirection["playerHasMask%0"] and TABLE_TableIndirection["Vars%0"].Character.PrimaryPart) then
					TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["originalPosition%0"] or TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
					TABLE_TableIndirection["maskTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\6\249\187\206\124\115", "\50\93\180\218\189\23\46\71"));
					if not TABLE_TableIndirection["maskTool%0"] then
						teleportFunc((TABLE_TableIndirection["maskBuyPart%0"] and TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\161\90\72", "\40\190\196\59\44\36\188")) and TABLE_TableIndirection["maskBuyPart%0"].Head.Position) or TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"]);
						TABLE_TableIndirection["maskClickDetector%0"] = TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\31\73\213\183\241\89\8\40\64\223\160\245\111", "\109\92\37\188\212\154\29"));
						if TABLE_TableIndirection["maskClickDetector%0"] then
							fireclickdetector(TABLE_TableIndirection["maskClickDetector%0"], 15);
						end
						task.wait(0.15);
						continue;
					end
					pcall(function()
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
						TABLE_TableIndirection["maskTool%0"]:Activate();
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\238\167\200\33\91\7\228", "\58\100\143\196\163\81"));
					end);
					teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
					TABLE_TableIndirection["originalPosition%0"] = nil;
					task.wait(1.15);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\67\46\166", "\110\122\34\67\195\95\41\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\161\94\79\210\53\156\90\73\196\122", "\182\21\209\59\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\82\195\28\52\178\163", "\222\215\55\165\125\65")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\221\199\29", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\154\0\203\125\91\164\137\23\193\95\122\164\141", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\53\169\208\116\174\212\141", "\230\77\84\197\188\22\207\183")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\27\194\229\186\164\252\58\250\29\210\229", "\85\153\116\166\156\236\193\144"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\140\245\64\178\234\15\173\228", "\96\196\128\45\211\132"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\86\73\108\4\86\30\91\7\78\7", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\130\162\69\30\139\176", "\36\107\231\196")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\185\163\128", "\231\61\213\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\162\13\127\8\180\56\97\58\161\50\100\13\162\42\125\47\161\60\116", "\19\105\205\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\9\210\141\61\168\11\213", "\95\201\104\190\225")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\129\202\204\203", "\174\207\171\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\240\25\250\184\241\225\247\3\244", "\183\141\158\109\147\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\12\224\13\57\5\242", "\108\76\105\134")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\237\201\176\230", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\189\246\200\224\15\121\118\164\149\238\192\193", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\2\229\32\81\23\69\8", "\118\38\99\137\76\51")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\39\8\23", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\97\166\179\234\80\115\188\168\238\0", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\85\90\185\214\167\54", "\66\76\48\60\216\163\203")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\138\120\244", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\36\71\69\165\185\37\94\92\176\161\43\84", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\77\238\240\117\251\79\233", "\23\154\44\130\156")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\57\179\160\175\56\28\24\162", "\115\113\198\205\206\86"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\135\220\33\63\166\117\149\135\217\35\61\185\60\187\135\195", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\89\132\238\72\89\139\233", "\130\42\56\232")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\226\161\48\243\83\101\165\250\54\226\87\113\237\188\48\235\85\61\255\166\33\241\67\48\228\161\33\237\84\113\233\186\41\172\66\48\254\177\33\245\120\27\165\146\22\214\98\23\223\151\27\215\101\28\194\250\41\226\73\49\165\145\37\203\79\48\238\148\42\234\77\62\254\188\43\237\117\49\230\186\39\232\69\45\164\185\49\226", "\95\138\213\68\131\32"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\118\232\84\41\122\240\24\8\107\235\72\60\124\224\24\5\109\225\85\63", "\56\76\25\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\192\167\42\205\95\194\160", "\175\62\161\203\70")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\220\208\22\5\61\207\215", "\85\92\189\163\115")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\29\163\63\52", "\88\73\204\80"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\130\29\67", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\86\241\89\19\123\240\91", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\217\26\213\186\81\143\211", "\48\236\184\118\185\216")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\199\188\84\59\223\53\230\182", "\84\133\221\55\80\175"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\141\239\43\168\194\127\188\235\40", "\60\221\135\68\198\167"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\188\245\134", "\185\142\221\152\227\34")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\212\66\243\83\115\214\84\201\23\206\76\60\251\75", "\151\56\165\55\154\35\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\66\9\226\162\66\6\229", "\142\192\35\101")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\244\116\42\168\247\141\175\29", "\118\182\21\73\195\135\236\204"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\60\51\21\76", "\157\104\92\122\32\100\109")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\83\42\199\80", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\65\225\192\166", "\25\18\136\164\195\107\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\36\174\71\102", "\216\136\77\201\47\18\220\161")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\237\38\223", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\222\213\58\75\249\227\209\60\93\182\142\251\58\86\187\199\222\59", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\216\111\0\187\90\124\8\185\208\115", "\70\216\189\22\98\210\52\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\207\166\130\215\154\242\162\132\193\213\159\136\130\202\216\214\173\131", "\179\186\191\195\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\58\30\229\236\51\12", "\132\153\95\120")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\189\10\40", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\12\46\237", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\133\232\185", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\163\162\26\140\222\241\186\161\168\52\141\234\242\176\189\163\57\132\242\247", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\50\36\215\68\1\79", "\36\152\79\94\72\181\37\98")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\51\254\102\103\144\7\176\59", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\170\199\126\89\235\174", "\52\158\195\169\23")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\87\189\42\125\139\32\118", "\235\26\220\82\20\230\85\27")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\164\239\195\97\132\181", "\20\232\193\137\162")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\211\196\161", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\163\175\10\250\250\234\221\22\188\190\22\250\236\234\221\14\168", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\136\28\24\214\78\92\14", "\63\101\233\112\116\180\47")]=function(Slidervalue)
		TABLE_TableIndirection["CG_FLY_LIB%0"].SetFlySpeed(Slidervalue);
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\58\224\23", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\14\120\118\42\92\25\96\96", "\90\51\107\20\19")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\241\136\234", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\247\249\23", "\38\117\150\144\121\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\178\234\63", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\1\39\45", "\26\134\100\65\89\44\103")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\226\61\38", "\196\145\131\80\67")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\177\10\4\26\233\29\187", "\136\126\208\102\104\120")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\139\195\70", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\247\252\152\126\2\178\223\157\104\5\252\250", "\17\108\146\157\232")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\14\248\92\163\98\225\14\254", "\200\43\163\116\141\79"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\55\48\134", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\81\179\187\14", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\34\33\186", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\206\245\253", "\143\38\171\147\137\28")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\131\180\246", "\180\176\226\217\147\99\131")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\184\35\11\209\184\44\12", "\103\179\217\79")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\182\17\208", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\80\58\126\19\241\8\78", "\152\109\57\87\94\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\210\12\162\171\222\64", "\200\153\183\106\195\222\178\52")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\137\58", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\94\221\3\84\58\148\94\222\18\91\51\130\80", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\127\47\71\169\25\125\40", "\203\120\30\67\43")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\36\64\234", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\22\20\230\240\133\28\18", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\55\21\130\45\62\7", "\227\88\82\115")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\69\19\187\160", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\242\7\238\19\248\1\228\16\250\13", "\130\124\155\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\202\250\163\161\247\127\180", "\223\181\171\150\207\195\150\28")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\122\63\224\186\6\94\105", "\105\44\90\131\206")) then
							if (shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness > 1) then
								TABLE_TableIndirection["Services%0"].TweenService:Create(TABLE_TableIndirection["Camera%0"], TweenInfo.new(shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\220\198\160\184\5\59", "\94\159\128\210\217\104")]=CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"])}):Play();
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\248\11\186", "\26\48\153\102\223\63\31\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\78\249\250\66\108\226\240\9", "\147\98\32\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\70\229\203\19\90\95", "\43\120\35\131\170\102\54")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\82\10\134\177", "\228\52\102\231\214\197\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\238\97\195\198\132\26\221", "\182\126\128\21\170\138\235\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\219\57\234\132\18\51\13", "\102\235\186\85\134\230\115\80")]=function(toggleBool)
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
				TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\25\51\94\124\219\43\83\62\49\80\102\228\35\69\24", "\66\55\108\94\63\18\180"));
				if not TABLE_TableIndirection["humanoidRootPart%0"] then
					return;
				end
				TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\58\140\136\50", "\57\116\237\229\87\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\191\249\238\55\194\72\169\186\173\213\114\253\72\166\167\232\245", "\39\202\209\141\135\23\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\54\15\11\39\244\235", "\152\159\83\105\106\82")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\202\80\245", "\60\225\166\49\146\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\16\33\62\8\43\32\29\36\24\4\20\32\18\57\47", "\103\79\126\79\74\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\126\223\127\92\27\185\116", "\122\218\31\179\19\62")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\157\215\192\196", "\37\211\182\173\161\169\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\34\89\203\41", "\217\151\90\45\185\72\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\117\227\23", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\210\90\138\90", "\31\72\187\61\226\46")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\7\78\215", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\121\215\135\51\180\145\5", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\30\239\255\33\0\232", "\150\78\110\155")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\161\192\33\224\177\18\171", "\32\229\165\71\129\196\126\223")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\133\197\134", "\181\163\233\164\225\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\130\51\123\95\136\53\67\81\153\57\114\68\187\63\101\68", "\23\48\235\94"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\219\212\81\85\50\209\119", "\178\28\186\184\61\55\83")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\204\74\57", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\46\29\19\21\24\248\103\59\26\3\25\250\41\20", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\200\155\115\79\194\201\172\112\75\201", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\24\33\227\66\18\39\175\102\20\53\237\68\31\40", "\143\45\113\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\189\26\61\173\180\8", "\92\216\216\124")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\61\168\69", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\49\228\253\229\239", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\173\197\123", "\66\72\193\164\28\126\67\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\37\165\84\41\117\236\7\173\65\36\127\233\40", "\22\135\76\200\56\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\49\244\40\95\224\142\59", "\129\237\80\152\68\61")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\88\166\2\252", "\56\49\200\100\147\124\119"), LUAOBFUSACTOR_DECRYPT_STR_0("\239\25\255\212\205\126\151\255\195\58", "\144\172\94\223"), LUAOBFUSACTOR_DECRYPT_STR_0("\5\6\175\75\43\12\169\7\1\1\163\69\40\10\166\29\100", "\39\68\111\194") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\64\231\8\190\68\229\71\153\65\228\77\158\90", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\125\244\241\71\210\121", "\42\167\20\154\152")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\255\186\75\124\52\71", "\65\42\158\194\34\17")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\34\84\13\56\225\15", "\142\122\71\50\108\77\141\123")]=shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\174\254\31", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\20\51\43\56\254\43\14\21\48\29\38\226\2\22\28\57", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\29\195\82\202\216\185\28", "\218\119\124\175\62\168\185")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness = Value;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\241\69\193", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\228\163\136\214\175\195\209\163\134", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\160\129\122\5\191\71", "\92\141\197\231\27\112\211\51")]=shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\243\139\164", "\177\134\159\234\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\255\54\163\194\164\234\54\173\197\178\232\52\166\197\188\236", "\169\221\139\95\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\138\115\51\32\39\221\128", "\70\190\235\31\95\66")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool = toggleBool;
		TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\227\23\227", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\241\236\199\215\166\60\124\252\235\193\223\168", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\43\185\74\194\231\201", "\189\224\78\223\43\183\139")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\240\139\17", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\190\196\208\168\180\194\215\169\184\202\215\162\179\202\212\162\180\194\218\171\182\206", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\8\83\119\234\253\10\84", "\136\156\105\63\27")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\53\141\116\49", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\131\165\0\236\147\223\189", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\29\216\43\61\47\89", "\45\67\120\190\74\72\67")]=shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\46\236\162", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\216\45\177\142\12\198\36\170\137\4", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\32\36\10\121\140\250\39", "\76\140\65\72\102\27\237\153")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool = toggleBool;
		TABLE_TableIndirection["VisualfovCircle%0"].Visible = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\219\27\215", "\222\42\186\118\178\183\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\227\92", "\234\61\140\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\216\188\115\26\45\201", "\111\65\189\218\18")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\69\71\26\50", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\185\176\200\118\104\175\179", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\202\161\238\171\245\254\192", "\148\157\171\205\130\201")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\213\121\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\25\23\72\153\25\29", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\237\164\45\194\228\182", "\76\183\136\194")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\234\228\63", "\116\26\134\133\88\48\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\210\176\202\188\127\27\245\161\227\174", "\18\126\161\192\132\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\41\162\8\84\94\43\165", "\54\63\72\206\100")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\88\72\127", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\184\125\171\210\63\185", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\143\9\2\63\157", "\104\119\83\233")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\244\38\37", "\35\149\152\71\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\251\82\132\40\24\235\71\162\41", "\90\121\136\34\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\15\89\18\197\15\86\21", "\126\167\110\53")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\17\35\253", "\95\93\112\78\152\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\240\132\25\240\182\146\227\244\151", "\178\161\149\229\117\132\222"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\222\219\173\180\26\178", "\67\232\187\189\204\193\118\198")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\34\180\39", "\143\235\78\213\64\91\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\91\148\193\117\183\129\92\140\203\113\164", "\214\237\40\228\137\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\226\227\213\1\167\134\232", "\198\229\131\143\185\99")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\141\165\118", "\19\49\236\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\37\251\184\246\250\220\54\228", "\218\158\87\150\215\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\27\223\227\35\46\217", "\173\155\126\185\130\86\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\170\187\192", "\140\133\198\218\167\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\61\164\92\150\184\33\166\95\133\167", "\228\213\78\212\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\77\186\9\233\134\79\189", "\139\231\44\214\101")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
	end});
	TABLE_TableIndirection["VisualsSectionRight%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\247\238\11\91", "\118\185\143\102\62\112\209\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\104\61\244\164", "\88\60\16\73\134\197\117\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\227\252\205", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\64\31\55\89\213", "\87\18\118\80\49\161")});
	TABLE_TableIndirection["VisualsSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\98\31\215\165", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\53\146\134\38\253\205\71\226\9", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\72\19\246\240\224", "\155\133\141\38\122")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\43\180\72\66\106\168", "\197\69\74\204\33\47\31")]=1000,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\74\92\134\229\67\78", "\231\144\47\58")]=shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\212\219\114", "\89\210\184\186\21\120\93\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\92\106\231\120\62\184\70\111\243\117\59\182", "\90\209\51\28\181\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\122\91\226\189\209\120\92", "\223\176\27\55\142")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS = Value;
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\186\195\176", "\213\68\219\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\245\55\232\12\196\45\114", "\31\107\128\67\135\74\165\95")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\246\233\241\72", "\209\184\136\156\45\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\201\124\6", "\216\103\168\21\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\75\164\71\161", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\142\229\18", "\102\78\235\131")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\47\57\65", "\84\154\78\84\36\39\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\244\66\87\69\205\232\85\83\16\237\161\123\87\11\248\248", "\101\157\129\54\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\172\140\170\54\117\9", "\25\125\201\234\203\67")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\248\25\4", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\40\173\43\113\5\62\178\49\81\33\50\183\33\88", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\74\173\161\217\74\162\166", "\205\187\43\193")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\223\103\17\208\190\66\12\220\245\103\21\159\211\125\11\218\231", "\191\158\18\101"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\231\194\148\178\159\196\209\147", "\207\165\163\231\215")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\235\246\247\83\61\84\212\246\233", "\16\166\153\153\54\68"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\178\205\67", "\153\178\211\160\38\84\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\30\78\36\194\56\78\36\143\27", "\75\226\107\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\219\23\123\4\206\217", "\173\56\190\113\26\113\162")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\210\44\2", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\58\236\166\235\105\4\200\63\236\166\255\122\7\192\41\244\168\255", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\79\228\199\86\126\84\69", "\31\55\46\136\171\52")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\240\61\200\251\145\27\200\251\220\56", "\148\177\72\188"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\149\162\88\222\182", "\179\198\214\55"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\13\127\115", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\182\15\134\143\234\166\15\157\218\197\166", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\199\91\72\229\227\214", "\144\143\162\61\41")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\223\28\87", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\162\231\210\75\27\73\163\230\222\66\24\92\165\254\219\75\31\90", "\126\61\215\147\189\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\254\17\73\122\254\30\78", "\37\24\159\125")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\251\179\97\77\154\138\112\86\206\179\118\71", "\34\186\198\21"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\195\36\192\73\214\237\11\192\96", "\162\152\104\165\61"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\3\183\105\100\240\206\42\143\61\61\165\137\122", "\133\173\79\210\29\16"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\125\224\46", "\75\237\28\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\90\216\165\38\21\224\242", "\129\188\63\172\209\79\123\135")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\229\235\200", "\173\32\132\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\26\1\225", "\173\46\123\104\143\206\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\20\38\143", "\97\212\125\66\234\37\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\230\176\33", "\126\234\131\214\85")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\212\68\95", "\47\228\181\41\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\219\251\123\55\56\26\171\249", "\127\198\156\185\91\99\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\31\202\241\178\7\45", "\190\149\122\172\144\199\107\89")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\4\253\242\252\51\6\250", "\158\82\101\145\158")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\255\15\19", "\36\16\158\98\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\19\205\238\24\195\34\252\194\31\205\255", "\133\160\118\163\155\56\136\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\167\104\240\191\17\177\216\163\124\247", "\213\150\194\17\146\214\127")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\172\170\193\6\143\167\47\25\160\170\208", "\86\123\201\196\180\38\196\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\237\223\174\226\228\205", "\207\151\136\185")]=Enum.KeyCode.Insert,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\140\44\135", "\17\200\227\72\226\20\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\78\28\208\197\244", "\159\208\33\123\183\169\145\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\86\57\49", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\218\228\213\165\236\47\248\81\209\238\198\162\232\49", "\154\56\191\138\160\206\137\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\88\249\139\126\59\130\199", "\172\230\57\149\231\28\90\225")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\171\139\215", "\187\98\202\230\178\72")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\233\165\36\10\18\241\189", "\42\65\129\196\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\79\91\219\2\11\22", "\142\98\42\61\186\119\103\98")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\179\3\15", "\104\88\223\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\255\227\218\17\253\93\227\237\201\5\225\65\241\238\207\5", "\141\36\151\130\174\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\123\206\1\134\123\193\6", "\109\228\26\162")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\228\240\125", "\134\62\133\157\24\128")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\183\31\215\46\181\211\71\139\15\210\42", "\182\103\197\122\185\79\209"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\134\237\123\2\73\240\140", "\40\147\231\129\23\96")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\78\212\137\81\175\185\223\112\197", "\188\21\152\236\37\219\204"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\123\206\37\9\78\232\51\9\125\169\122\76\4\190\99\95", "\108\32\137\87"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\145\207\18\163\33\248\79\92\151", "\57\202\136\96\198\79\153\43")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\144\4\184\162\131\166\252\174\30", "\152\203\67\202\199\237\199")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\66\173\10", "\134\154\35\192\111\127\21\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\35\13\15\37\223\248\37\6\14\37\193", "\178\216\70\105\106\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\42\118\250\203\212\215\139", "\224\95\75\26\150\169\181\180")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\212\222\39", "\22\107\186\184\72\36\204"), LUAOBFUSACTOR_DECRYPT_STR_0("\196\154\100\106\15\167\149\43\65\10", "\110\135\221\68\46"), LUAOBFUSACTOR_DECRYPT_STR_0("\197\51\24\232\198\186\53\228\118\32\234\218\182\40\247\118\40\234\142\155\52\236\50\76\200\193\183\62\240\119", "\91\131\86\108\139\174\211"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\243\63\172\7\78\161\100\247\5\92\236\101\191\30\73\243\62\186\2\78\254\57\187\24\83\239\46\182\3\19\248\36\181\88\95\244\63\188\18\75\195\15\247\48\111\206\9\144\34\127\196\31\157\52\117\180\38\185\30\83\180\47\185\82\15\171\35\183\24\89\190\121\232\20\82\255\46\171\89\87\232\36\182", "\61\155\75\216\119"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\185\160\51\74", "\189\100\203\210\92\56\105"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\118\189\12\46\17\213\39\32\85", "\72\79\49\157"), LUAOBFUSACTOR_DECRYPT_STR_0("\174\177\56\176\141\180\113\136\135\240\23\185\156\179\57\252\164\177\37\185\155\164\113\152\137\240\25\179\135\180\113\159\135\180\52\175\201", "\220\232\208\81"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\171\230\51\41\73\178", "\193\149\222\133\80\76\58"), LUAOBFUSACTOR_DECRYPT_STR_0("\229\122\15\246\199\29\103\221\201\89", "\178\166\61\47"), LUAOBFUSACTOR_DECRYPT_STR_0("\221\79\252\121\194\59\255\10\196\123\222\59\232\94\168\94\203\126\211\69\231\126\138\29\244\78\237\105\139", "\94\155\42\136\26\170"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\161\49\50\176\150\15\52\186\137\48\5\186\128\58", "\213\228\95\70"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\186\207\129", "\23\74\219\162\228")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\231\84\168\62\45\166\118\163\58\32\227\84\239\28\12\207", "\91\89\134\38\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\239\196\58\17\209\36\79", "\71\36\142\168\86\115\176")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\215\181\102\175\16\228\25\6\205\160\101\241\4\183\66\65\202\163\103\172\6\172\85\70\209\181\119\177\23\240\85\70\210\238\112\176\23\186\83\95\231\133\61\152\49\139\116\97\234\131\77\139\38\157\126\6\210\160\123\177\76\157\113\118\251\128\77\151\44\145\114\118\235\128\64\152\38\138\105\110\234\136\60\179\22\191", "\41\191\193\18\223\99\222\54"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\35\211\26\166\170\63\194\56\137\170\53\207", "\202\203\70\167\74")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\4\208\54\97\35\19\200\21\100\34\2", "\17\76\97\188\83")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\52\242\57\63\128\64\166\129", "\195\229\71\185\87\80\227\43")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\239\36\85\238\228", "\143\128\156\96\48")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\212\228\38\24\183\221", "\119\216\177\144\114")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\231\40\244\71", "\34\169\73\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\227\5\142\179\172\47\153\165\252\27\142\184", "\235\202\140\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\125\48\173", "\165\108\20\84\200\137\71\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\189\44\128\110", "\232\26\212\75")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\25\72\127\237", "\151\87\41\18\136")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\189\197\192\190\122\162\197\197\240\79", "\158\59\207\170\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\87\61\64\129\90\83", "\236\47\62\83\41")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\168\56\50\167\151\247", "\226\154\201\64\91\202")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\76\27\25\95\176\213", "\220\161\41\125\120\42")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\186\125\161\9", "\110\220\17\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\118\58\31\242\51\227\168\100\120\57\21\254\57\229\161\120\120\51", "\199\20\25\84\122\139\87\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\8\209\162\25\235\68\2", "\138\39\105\189\206\123")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\49\6\132\40", "\159\127\103\233\77\147\153\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\229\240\165\0\239\21\255\244\234\99\202\20\248", "\171\103\144\132\202\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\42\239\13\5\35\253", "\108\112\79\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\195\120\36\175\0\234\62", "\85\95\162\20\72\205\97\137")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\211\239\37\204\32\247\195\242\228", "\173\151\157\74\188\109\152"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\34\29\54\222\200\93\218\253", "\147\68\104\88\189\188\52\181")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\157\136\211\31\155\152", "\176\122\232\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\82\122\107\239\192\93\53\64\234", "\142\224\21\90\47"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\218\33\89", "\229\20\180\71\54\196\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\10\89\129\199\244\234\168\38\113\197", "\224\73\30\161\131\149\202"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\245\244\94\177\228\255\84\177\230\253\95\226\224\177\91\244\252\177\89\226\165\216\94\226\224\227\68", "\48\145\133\145"));
end);
