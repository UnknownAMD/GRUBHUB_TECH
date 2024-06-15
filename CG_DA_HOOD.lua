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
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:New({[LUAOBFUSACTOR_DECRYPT_STR_0("\149\216\79\88", "\126\219\185\34\61")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\56\198\91\127\123", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\232\56\192", "\167\214\137\74\171\120\206\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\170\243\49\88\246\179", "\199\235\144\82\61\152")]=Color3.fromRGB(50, 100, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\31\183\47", "\75\103\118\217")]=Enum.KeyCode.V});
	shared.CG_CURRENT_WINDOW = TABLE_TableIndirection["window%0"];
	TABLE_TableIndirection["release_Dev_Features%0"] = false;
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\85\125\17", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\34\33\153\177\11", "\156\168\78\64\224\212\121")});
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\239\168\203", "\174\103\142\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\119\33\82", "\152\54\72\63\88\69\62")});
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\197\227\89", "\60\180\164\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\87\22\60\38\225\1", "\114\56\62\101\73\71\141")});
	TABLE_TableIndirection["MiscTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\232\214\193", "\164\216\137\187")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\239\34\177", "\107\178\134\81\210\198\158")});
	TABLE_TableIndirection["MiscSection%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\15\143\195", "\202\88\110\226\166")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\14\139\249", "\170\163\111\226\151"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\57\182\61", "\73\113\80\210\88\46\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\41\203\6", "\135\225\76\173\114")});
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\236\181\181", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\220\25\254", "\150\205\189\112\144\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\141\187\73", "\112\69\228\223\44\100\232\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\26\1\199", "\230\180\127\103\179\214\28")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\4\82\67", "\128\236\101\63\38\132\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\168\24\74", "\175\204\201\113\36\214\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\197\49\217", "\100\39\172\85\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\125\191\148", "\83\205\24\217\224")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\192\56", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\243\200\204", "\30\222\146\161\162\90\174\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\71\116\15", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\37\117\232", "\32\56\64\19\156\58")});
	TABLE_TableIndirection["autoFarmToggles%0"] = {};
	TABLE_TableIndirection["autoLettuceFarmTeleportPosition%0"] = Vector3.new(-81, 23, -633);
	TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"] = Vector3.new(110, 23, -487);
	shared.CG_DA_HOOD_GRENADE_NUKING = shared.CG_DA_HOOD_GRENADE_NUKING or false;
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\216\237\95\86\254\192\125\221\235\76", "\224\58\168\133\54\58\146")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\70\67\244\121\138\199\45\86\89\79", "\107\57\54\43\157\21\230\231")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\132\6\251\177\213\195\215\203\54\224\183\198", "\175\187\235\113\149\217\188")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\160\150\66\235\112\116\48\239\167\67\236\125", "\24\92\207\225\44\131\25")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\210\182\71", "\29\43\179\216\44\123")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\218\40\67\178\213", "\44\221\185\64")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\238\68\86\103\0\245\81\31\81\0\244\77", "\19\97\135\40\63")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\83\63\50\44\52\238\111\39\58\59\56\161\82", "\81\206\60\83\91\79")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\164\223\118\111\229\68\176\64\174\195\97", "\196\46\203\176\18\79\163\45")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\42\113\16\33\187\220\172\45\108\27", "\143\216\66\30\126\68\155")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\77\233\202\187\222\239\173\136\46\199\208\161", "\129\202\168\109\171\165\195\183")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\89\119\236\214\17\231\54\74\50", "\134\66\56\87\184\190\116")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\48\73\152\24\248\40\59\51", "\85\92\81\105\219\121\139\65")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\186\87\77\104\220\241\166\82", "\191\157\211\48\37\28")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\13\241\25\18\208\10\231\25", "\90\191\127\148\124")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\80\130\47\19", "\119\24\231\78"),LUAOBFUSACTOR_DECRYPT_STR_0("\183\61\181\79\206\116\30\144\62\170", "\113\226\77\197\42\188\32"),LUAOBFUSACTOR_DECRYPT_STR_0("\22\25\227\176\40\34\251\167\41\25", "\213\90\118\148"),LUAOBFUSACTOR_DECRYPT_STR_0("\115\59\185\87\67\84\39\176\100\66\84\58\132\87\95\79", "\45\59\78\212\54")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\89\151\185\131\47\161\212\56", "\144\112\54\227\235\230\78\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\32\6\239\144\82\160\104\1\243\196\27\161\45\14\240\144\127\178\104\39\243\223\95\255\104\28\243\221\94\243\46\10\253\196\78\161\45\28\188\221\90\170\104\1\243\196\27\164\39\29\247\145", "\59\211\72\111\156\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\134\234\57\71\137\228\11\65\149\211\33\79\158\230\63\122\136\207\34\79\131", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\85\191\84\179\90\177\0\188\91\164\0\170\88\183\89\191\70\246\84\181\20\186\79\187\80\246\73\180\21", "\32\218\52\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\48\177\244\162\105\85\79\19\52\172\216\190", "\58\46\119\81\200\145\208\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\128\49\181\172\175\118\39\131\49\168\172\185\119", "\86\75\236\80\204\201\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\80\88\103\132\237\152\123\79\112\164\240\159\123\98\127\128\255\159", "\235\18\33\23\229\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\174\213\190\93\170\213\178\94\189\129\175\95\250\195\162\64\187\210\168\16\187\207\175\89\250\194\179\85\187\213\250", "\219\48\218\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\104\108\72\200\92\229\224\80\114\93\210\108\232\225\112\104", "\128\132\17\28\41\187\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\60\18\51\29\2\58\3\59\73\65\48\31\42\92\18\33\3\62\28", "\61\97\82\102\90")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\34\170\82\194\69\13", "\105\204\78\203\43\167\55\126")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\149\166\34\7\22\22\212", "\49\197\202\67\126\115\100\167")),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\94\207\37\137\85\95\35\94\219\26\148\89\76\54\92\218", "\62\87\59\191\73\224\54")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\213\7\234\197\238\1\251\221\226\6\201\221\232\16\251\206\226", "\169\135\98\154")),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\126\54\64\232\50\196\226\121\52\65\233\30\201\197\118\35\81\239", "\168\171\23\68\52\157\83")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\194\120\231\185\48\44\139\221\127\229\184\49\0\134\250\112\242\168\55", "\231\148\17\149\205\69\77")),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\179\211\235\100\250\146\177\206\248\82", "\159\224\199\167\155\55")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\223\231\40\194\196\246\46\196\254\240\57", "\178\151\147\92")),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\238\73\32\59\66\106\153\233\127\55\0\90\115\143\248", "\26\236\157\44\82\114\44")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\31\61\208\73\3\32\197\78\62\29\208\73\60\39\214\94", "\59\74\78\181")),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\196\84\105\182\55\199\83\89\182", "\211\69\177\58\58")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\133\240\119\198\236\217\161\236\122\240", "\171\215\133\25\149\137")),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\223\55\255\225\3\249\80\247\193\49\255", "\34\129\168\82\154\143\80\156")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\177\165\54\14\70\125\140\151\164\58\8\77", "\233\229\210\83\107\40\46"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\59\216\32\215\71\60\194", "\101\161\34\82\182"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\1\88\231\222\240", "\78\136\109\57\158\187\130\226")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\22\54\233\217\59\54\254\249\42", "\145\94\95\153")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\194\36\217\79\174\248\223\39\217\65\160\217\194\3\219", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\184\146\205\206\58\179\140\254\223", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\143\2\247\21\225\91\201\163\25\241\53", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\11\212\166\14\215\95\14\242\170\49\215\80\19\197\141\45\215\80", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\140\104\181\23\142\117\178\54\160\115\179\61", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\219\150\242\217\211\28\216\146\217\229\200\31", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\243\83\89\125\201\225\41\215\73\117\114\206\231\49\197\83\116\125", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\95\218\122\0\77\73\197\96\32\105\69\192\112\41\102\69\193\121", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\35\117\125\4\56\119\94\50\56\117\66", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\54\191\123\147\186\81\160\172\32\174\86\176\176\73", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\152\188\221\133\128\169\193\177\178\188\221\189\138\164\215", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\165\227\213\178\152\231\211\164\186\210\223\177\178\234\213", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\162\186\208\161\88\94\199\189\179\209\172\123\88\247\191\185\255\173\79", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\213\20\0\73\33\205\12\11\84\61\210\25", "\22\114\157\85\84")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\236\49\251\105\222\141\233\238\44\230\114\217\132", "\200\164\171\115\164\61\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\193\55\106\188\154\198\44\117\188\157\213\48\109\188\159\217\44\112\173\138", "\227\222\148\99\37")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\103\102\217\198\23\96\125\198\198\16\115\97\222\198\17\125\125\218", "\153\83\50\50\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\127\126\42\122\174\90\127\121\124\16", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\27\0\217\13\115\178\234\28\2\246\9\117\189\226\26\8\246\9\82\182\206\30", "\217\161\114\109\149\98\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\51\25\104\168\113\31\48\44\117\178\115\38\47\20\115\191\127", "\20\114\64\88\28\220")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\8\223\152\247\211\182\19\14\221\184", "\221\81\97\178\212\152\176")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\226\27\250\15\193\243\41\250\8\202\226\9\203\27\223\243", "\122\173\135\125\155")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\133\200\13\181\48\50\195\176\192\18\190\58\37\248\133\211\20", "\168\228\161\96\217\95\81")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\218\216\35\79\34\88\212\197\38\82\42\68\200", "\55\187\177\78\60\79")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\218\86\232\77\214\161\36\195\115\228\69\196\162\34\193\83", "\224\77\174\63\139\38\175")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\87\57\187\71\87\56\187\67\87\33\136", "\78\228\33\56")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\81\132\60\183\239\90\155\54\182", "\229\174\30\210\99")]=50};
	TABLE_TableIndirection["VisualfovCircle%0"] = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\228\148\82\225\56", "\89\123\141\230\49\141\93"));
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
		local fetchedProductInfo, productInfoError = pcall(function()
			return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\222\112\228\7\21\94\227\125\247\15\21\121\246\99\224\5\19\79", "\42\147\17\150\108\112")):GetProductInfo(game.PlaceId);
		end);
		return (fetchedProductInfo and (productInfoError.Creator.CreatorTargetId == 4698921)) or false;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\60\165\63\118\247\252", "\136\111\198\77\31\135")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\46\6\164\87\177\215\20\187\11\25\179", "\201\98\105\199\54\221\132\119"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\137\13\145\53\44\52\161\188", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\214\248\228\34\207\87\199\199\234\35\212\110\194\231\241", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\178\2\34", "\163\182\192\109\79")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\41", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\9\2\249\10\15\10\204\44\18\12\238\48\11\8\227\44", "\141\88\102\109")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\216\100\52\60\88\196", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\161\165\45\233\154\189\58\232\161", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\104\91\3", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\24\40\82\106\30\32\103\76\3\38\69\80\26\34\72\76", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\224", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\136\248\65\203\254\136\239\123\214\209\160\235\93\222\213\137\242\76\209\194", "\191\182\225\159\41")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\27\19\58\65\165\134\207\46", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\53\67\234\71\55\156\44\65\240\127\7\139", "\98\236\92\36\130\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\3\183", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\122\5\119\95\38\131\16\65\11\120\106\26\158\1\112\10\114\78\0\158", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\16", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\168\242\43\80\5\94\164\240\17\77\41\113\181\225\34\71\38\93\164\251\55", "\78\48\193\149\67\36")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\0\31\146\12\111\49\19\133", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\161\4\204\72\192\167\20\193\78\192\173\4", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\230\11\43", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\69\198\171\226\227\72\73\196\145\255\207\103\88\213\162\245\192\75\73\207\183", "\168\38\44\161\195\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\180\243", "\118\224\156\226\22\80\136\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\231\94\136\86\207\87\139\78\235\107\137\69\207\77\148\67\237\81\141\71\224\77", "\224\34\142\57")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\238\166\215\201\93\240\80\11", "\110\190\199\165\189\19\145\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\226\112\224\159\225\213\228\99", "\167\186\139\23\136\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\167\135\0", "\109\122\213\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\254\165\56\250\214\172\59\226\242\144\57\233\214\182\36\239\244\170\61\235\249\182", "\80\142\151\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\201", "\44\99\166\23")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\246\59\56\58\170\123", "\196\28\151\73\86\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\36\105\52\131\24\48\121\252\7", "\22\147\99\73\112\226\56\120"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\158\64\206\217\180\135\89\205\212\169\157\81\221\214\165\153\71", "\237\216\21\130\149")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\160\79\92\84\160\200\93\137", "\62\226\46\63\63\208\169"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\41\93\140\17\8\18", "\62\133\121\53\227\127\109\79"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\36\58\250\216\171\159", "\194\112\116\82\149\182\206"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\169\88\25\230\237\2\61\173\94", "\110\89\200\44\120\160\130"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\136\214\89\84\70\68\56\84", "\45\203\163\43\38\35\42\91"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\132\223\40\151\168\87\217", "\52\178\229\188\67\231\201"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\9\84\93\5\249\83\42\37", "\67\65\33\48\100\151\60"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\233\168\215", "\147\191\135\206\184"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\15\230\229\217\19\154\139\39\162", "\210\228\72\198\161\184\51"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\71\245\31", "\174\86\41\147\112\19"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\39\205\47\36\79\57\164\84\4", "\203\59\96\237\107\69\111\113"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\24\170\238", "\183\68\118\204\129\81\144"), LUAOBFUSACTOR_DECRYPT_STR_0("\45\138\48\192\10\194\38\162\127\224", "\226\110\205\16\132\107"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\205\230\214", "\33\139\163\128\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\127\68\250\86\24\44\209\88\92", "\190\55\56\100"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\95\161\58\17", "\147\54\207\92\126\115\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\22\117\89\12\62\37\62\58\121", "\30\109\81\85\29\109"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\100\87\181\51\205\239", "\156\159\17\52\214\86\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\200\253\152\175\175\149\179\161\235", "\220\206\143\221"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\122\35\24\202\201\214", "\178\230\29\77\119\184\172"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\170\15\22\100\220\231\177\26", "\152\149\222\106\123\23"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\249\52\249\83", "\213\189\70\150\35"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\124\93\123\24", "\104\47\53\20"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\129\67\133\5\153\9\165\73\130\8\175", "\111\195\44\225\124\220"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\245\73\22\118\166\174\214\82", "\203\184\38\96\19\203"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\61\86", "\174\89\19\25\33"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\11\23\83\74", "\107\79\114\50\46\151\231"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\15\163\182\61\133\43\228", "\160\89\198\213\73\234\89\215"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\100\185\255\203\71\120\176\204\202\71\101\132\255\215\92", "\165\40\17\212\158"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\204\215\27\39\39\235\218\13", "\70\133\185\104\83")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\38\68\87\47\249\5\87\80", "\169\100\37\36\74"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\35\139\171\83\11\163\167\68\5\132\182\95\18", "\48\96\231\194"));
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\236\91\26\44\89\232\166\141\207", "\227\168\58\110\77\121\184\207")]:GetValueString()):split(" ")[1];
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\83\41\178\65\191\212\120\161\73\51\176\84\129\218\99\177", "\197\27\92\223\32\209\187\17"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\43\74\206\250\13\80\202\255", "\155\99\63\163"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\170\196\172\140\183\139\139\213\147\130\182\144\178\208\179\153", "\228\226\177\193\237\217"));
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
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\22\177\48\227\4\177\49\242", "\134\84\208\67")) then
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\173\139\89", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\54\242", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\113\0\50\91\88\108", "\24\52\20\102\83\46\52")]=shared.CG_DA_HOOD_CONFIG_TABLE.fly_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\35\32\35", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\213\130\199\43\248\192\213\154\216\34\235\193", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\117\201\59\80\34\26\192", "\121\171\20\165\87\50\67")]=function()
		TABLE_TableIndirection["CG_FLY_LIB%0"].EnableAndDisableFly();
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\57\180\51", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\227\109\14\198\254\250\249\122\10", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\140\89\3\25\225\206", "\141\186\233\63\98\108")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\230\45\177", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\218\157\134\189\26\127\204\130\143\179\23\119", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function(toggleBool)
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
					TABLE_TableIndirection["myRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\21\193\183\220\121\65\46\86\15\219\181\201\71\79\53\70", "\50\93\180\218\189\23\46\71"));
					TABLE_TableIndirection["targetRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\177\86\77\74\211\65\218\150\84\67\80\236\73\204\176", "\40\190\196\59\44\36\188"));
					if (not TABLE_TableIndirection["myRootPart%0"] or not TABLE_TableIndirection["targetRootPart%0"]) then
						continue;
					end
					TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(Player);
					if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
						continue;
					end
					TABLE_TableIndirection["attackingBoolInstance%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\81\200\181\249\118\4\50\66", "\109\92\37\188\212\154\29"));
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
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\38\227\171\192\58", "\58\100\143\196\163\81"), true);
				elseif TABLE_TableIndirection["didBlock%0"] then
					TABLE_TableIndirection["didBlock%0"] = false;
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\56\78\44\160\52", "\110\122\34\67\195\95\41\133"), false);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\91\176\86\79", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\66\209\18\97\147\182\68\206", "\222\215\55\165\125\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\212\192\27\231\205\249", "\42\76\177\166\122\146\161\141")]=shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\163\134\4\201", "\22\197\234\101\174\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\33\177\211\123\174\196\141\43\56\164\219", "\230\77\84\197\188\22\207\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\21\202\240\142\160\243\62", "\85\153\116\166\156\236\193\144")]=function(toggleBool)
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
				TABLE_TableIndirection["maskBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\211\88\161\227\5\171\238\13\158\229\19\175\221\13\254\164\68\246\183", "\96\196\128\45\211\132"));
				if not TABLE_TableIndirection["maskBuyPart%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["playerHasMask%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\28\131\54\88\211\162\177\245\52\158\112", "\184\85\237\27\63\178\207\212"));
				if (not TABLE_TableIndirection["playerHasMask%0"] and TABLE_TableIndirection["Vars%0"].Character.PrimaryPart) then
					TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["originalPosition%0"] or TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
					TABLE_TableIndirection["maskTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\51\116\8\76\3\100", "\63\104\57\105"));
					if not TABLE_TableIndirection["maskTool%0"] then
						teleportFunc((TABLE_TableIndirection["maskBuyPart%0"] and TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\35\130\165\64", "\36\107\231\196")) and TABLE_TableIndirection["maskBuyPart%0"].Head.Position) or TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"]);
						TABLE_TableIndirection["maskClickDetector%0"] = TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\126\185\171\132\86\145\167\147\88\182\182\136\79", "\231\61\213\194"));
						if TABLE_TableIndirection["maskClickDetector%0"] then
							fireclickdetector(TABLE_TableIndirection["maskClickDetector%0"], 15);
						end
						task.wait(0.15);
						continue;
					end
					pcall(function()
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
						TABLE_TableIndirection["maskTool%0"]:Activate();
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\172\62\120\25\172\62\120", "\19\105\205\93"));
					end);
					teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
					TABLE_TableIndirection["originalPosition%0"] = nil;
					task.wait(1.15);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\219\196\203\171\139\236\207\172\217\206", "\174\207\171\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\251\11\242\237\219\249", "\183\141\158\109\147\152")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\5\231\11", "\108\76\105\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\213\180\228\202\198\196\178\243\193\205\201\176\230", "\174\139\165\209\129"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\178\238\205\196\2\115\115", "\24\195\211\130\161\166\99\16")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\12\237\53\101\19\74\12\234\37\71\15", "\118\38\99\137\76\51"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\213\51\8\19\7\47\244\34", "\64\157\70\101\114\105"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\169\170\230", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\95\28\139\207\164\53\40\95\75\182", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\127\242\74\194\48", "\68\218\230\25\147\63\174")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\38\82\75", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\67\210\240\118\227\73\240\207\123\245\91\230\243\96\244\106\238\253\112", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\135\196\39\124\139\57\189\135\215", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\93\142\227\95\84\156", "\130\42\56\232")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\185\37\228", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\38\181\74\80\38\33\175\68\80\38\41\166", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\120\232\84\46\120\231\83", "\56\76\25\132")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\211\215\26\117\15\201\204\30\37", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\169\54\57\60\160\36", "\88\73\204\80")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\143\17\65", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\89\233\92\64\110\243\90\237\83\95\123\251", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\217\26\213\186\81\143\211", "\48\236\184\118\185\216")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\168\90\49\193\59\236\185", "\84\133\221\55\80\175"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\179\244\140\65\210\174\156\246\138\79\216\250\180\247\141\81", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\196\91\246\65\50\244\83", "\151\56\165\55\154\35\83")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\168\87\17\254\179\25\74\161\178\66\18\160\167\74\17\230\181\65\16\253\165\81\6\225\174\87\0\224\180\13\6\225\173\12\7\225\180\71\0\248\152\103\74\201\146\118\39\198\149\97\58\218\133\96\45\161\173\66\12\224\239\103\4\198\175\76\1\207\174\74\8\239\180\74\10\224\149\77\9\225\163\72\0\252\238\79\16\239", "\142\192\35\101"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\116\36\166", "\118\182\21\73\195\135\236\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\51\22\76\1\14\233\72\24\8\79\20\29\248\12\124\51\84\1\0\238", "\157\104\92\122\32\100\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\167\195\198\63\38\142\160", "\203\195\198\175\170\93\71\237")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\12\74\45\208\97\16\238\58", "\156\78\43\94\181\49\113")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\70\231\203\175", "\25\18\136\164\195\107\35"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\44\164\74", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\237\39\214\72\221\142\33", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\220\51\77\184\205\219", "\47\217\174\176\95")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\220\117\9\162\85\123\45", "\70\216\189\22\98\210\52\24"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\234\215\172\137\214\249\222\175\139", "\179\186\191\195\231"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\62\21\225", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\163\27\36\231\154\129\189\190\78\25\248\213\172\162", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\2\46\229\253\197\227\8", "\164\128\99\66\137\159")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\34\136\234\181\16\136\234\181", "\222\96\233\137"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\141\188\168\19", "\144\217\211\199\127\232\147")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\46\51\45", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\192\83\45\214", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\54\227\35", "\98\213\95\135\70\52\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\170\206\127\64", "\52\158\195\169\23")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\177\236\199\112\200\140\232\193\102\135\225\194\199\109\138\168\231\198", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\218\220\164\238\130\19\95\35\210\192", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\191\171\22\251\168\193\208\12\189\161\83\212\237\245\211\6\161\170", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\140\22\21\193\67\75", "\63\101\233\112\116\180\47")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\52\233\23", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\4\120\119", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\252\132\232", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\230\245\28\15\107\20\245\226\22\32\67\12\244\249\23\15\96\25\247\247", "\38\117\150\144\121\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\186\226\54\47\186\237\49", "\90\77\219\142")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\239\41\99\151\225\230\53\39", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\185\8\1\21\253\19", "\136\126\208\102\104\120")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\139\214\74\162\71\48", "\49\24\234\174\35\207\50\93")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\247\251\137\100\0\230", "\17\108\146\157\232")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\77\207\21\234", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\58\60\154\181\230\229\179\47\46\147\181\241\231\185\58\60\132", "\131\223\86\93\227\208\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\68\186\186\31\180\224\78", "\213\131\37\214\214\125")]=function(Slidervalue)
		TABLE_TableIndirection["CG_FLY_LIB%0"].SetFlySpeed(Slidervalue);
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\8\42\40\186", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\206\255\236\108\224\84\223\224", "\143\38\171\147\137\28")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\131\180\246", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\184\38\9", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\190\24\208", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\92\49\42", "\152\109\57\87\94\69")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\226\132\49\75\91\49\232", "\58\82\131\232\93\41")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\173\86\221\16", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\123\34\91\164\22\62\1\94\178\17\112\36", "\203\120\30\67\43")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\180\30\5\161\148\184\96\112", "\185\145\69\45\143"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\164\30\20\163", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\38\22\142\43", "\227\88\82\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\22\190\162", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\254\12\246", "\130\124\155\106")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\251\202\251\170", "\223\181\171\150\207\195\150\28")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\239\162\11\77\57\232", "\105\44\90\131\206")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\240\11\255\105\118\252\109", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\69\235\242\23\76\249", "\147\98\32\141")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\79\226\205", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\15\138\160\172\181\147\93\8\128\176\169\177\131", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\225\121\198\232\138\26\221", "\182\126\128\21\170\138\235\121")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\219\56\227", "\102\235\186\85\134\230\115\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\5\51\31\94\219\33\92", "\66\55\108\94\63\18\180"),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\131\54\50\85\0", "\57\116\237\229\87\71")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\189\236\224", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\58\4\6\61\251\244\53\5\11\53", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\199\93\254\203\93\130\205", "\60\225\166\49\146\169")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\25\27\44\62\14\21\124", "\103\79\126\79\74\97")) then
							if (shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness > 1) then
								TABLE_TableIndirection["Services%0"].TweenService:Create(TABLE_TableIndirection["Camera%0"], TweenInfo.new(shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\153\89\193\114\83\31", "\122\218\31\179\19\62")]=CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"])}):Play();
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\157\215\192\196", "\37\211\182\173\161\169\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\52\89\208\104\87\182\244\49", "\217\151\90\45\185\72\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\121\225\19\67\207\104", "\54\163\28\135\114")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\215\92\133", "\31\72\187\61\226\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\8\87\219\107\113\39\200", "\68\163\102\35\178\39\30"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\113\214\203\1\180\128\26", "\113\222\16\186\167\99\213\227")]=function(toggleBool)
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
				TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\6\27\246\247\32\1\242\242\28\1\244\226\30\15\233\226", "\150\78\110\155"));
				if not TABLE_TableIndirection["humanoidRootPart%0"] then
					return;
				end
				TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\196\42\228", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\135\208\136\193\249\204\138\207\193\179\208\208\134\200\151\132\199", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\56\118\69\135\42", "\23\48\235\94")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\214\217\90", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\195\73\40\251\34\250\199\198\117\57\225\1\249\210\200", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\38\28\19\24\26\240\44", "\123\147\71\112\127\122")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\204\143\116", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\9\56\253\76", "\143\45\113\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\177\24\57", "\92\216\216\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\59\171\72\233", "\157\59\82\204\32")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\63\238\255", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\168\201\60\46\34\35\54", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\60\188\81\41\120\244", "\22\135\76\200\56\70")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\169\53\254\37\72\237\153", "\129\237\80\152\68\61")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\87\164\5\244", "\56\49\200\100\147\124\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\55\178\252\195\61\180\196\205\44\184\245\216\14\190\226\216", "\144\172\94\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\14\174\75\38\14\161\76", "\39\68\111\194")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\64\231\68\130\74\225\8\166\76\243\74\132\71\238", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\113\227\250\67\201\112\212\249\71\194", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\247\175\78\126\34\65\190\137\71\104\35\67\240\166", "\65\42\158\194\34\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\34\84\13\56\225\15", "\142\122\71\50\108\77\141\123")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\56\173\251\29", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\18\57\31\57\244", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\16\206\89", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\249\69\200\170\243\67\239\160\233\74\205\171\244", "\164\197\144\40"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\241\166\135\223\183\128\251", "\214\227\144\202\235\189")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\228\171\129\116", "\92\141\197\231\27\112\211\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\197\216\202\135\208\166\215\133\172\213", "\177\134\159\234\195"), LUAOBFUSACTOR_DECRYPT_STR_0("\156\226\50\172\198\190\224\127\133\199\188\233\51\165\205\231\171", "\169\221\139\95\192") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\138\114\58", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\235\23\166\214\183\237\21\242\237\180\231\9\245", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\246\237\205\209\182\53", "\88\92\159\131\164\188\195")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\47\167\66\218\254\208", "\189\224\78\223\43\183\139")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\249\140\23\212\34\232", "\161\78\156\234\118")]=shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\187\200\219", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\0\82\72\229\243\6\75\115\230\249\26\76\93\228\253\14", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\141\117\56\25\141\122\63", "\84\123\236\25")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness = Value;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\138\167\18", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\12\215\41\35\58\13\2\17\211", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\235\164\236\132\250", "\137\64\66\141\197\153\232\142")]=shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\220\35\161", "\232\99\176\66\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\53\33\5\112\148\248\37\225\45\39\5\112\139\245\45\235", "\76\140\65\72\102\27\237\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\219\26\222\213\0\189\65", "\222\42\186\118\178\183\97")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool = toggleBool;
		TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\115\237\73\143", "\234\61\140\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\211\181\113\4\36\217\250\113\7\36\222\177", "\111\65\189\218\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\78\29\52\30\80\187", "\207\35\43\123\85\107\60")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\166\161\237", "\25\16\202\192\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\194\160\238\166\247\246\192\163\237\170\255\248\207\174\234\172\247\246\205\161\227\174", "\148\157\171\205\130\201"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\213\120\37\211\247\32\223", "\150\67\180\20\73\177")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\25\23\72", "\45\237\120\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\224\173\59\151\206\141\26", "\76\183\136\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\94\227\227\57\69\67\0", "\116\26\134\133\88\48\47")]=shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\205\161\227", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\32\161\19\80\80\62\168\8\87\88", "\54\63\72\206\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\88\73\118\231\122\203\82", "\27\168\57\37\26\133")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool = toggleBool;
		TABLE_TableIndirection["VisualfovCircle%0"].Visible = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\171\113\173", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\60\145", "\104\119\83\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\253\33\35\86\249\236", "\35\149\152\71\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\228\67\183", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\29\69\60\200\22\80\13", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\17\34\244\222\62\62\27", "\95\93\112\78\152\188")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\244\136\16", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\218\208\169\181\23\161", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\43\179\33\46\14\251", "\143\235\78\213\64\91\98")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\68\133\238", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\240\255\247\2\171\128\215\238\222\16", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\141\164\127\83\141\171\120", "\19\49\236\200")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\54\251\178", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\12\216\225\51\48\222", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\163\188\198\157\224\241", "\140\133\198\218\167\232")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\179\34\181\122", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\95\166\49\249\134\79\179\23\248", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\238\10\82\18\176\50\29", "\118\185\143\102\62\112\209\81")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\113\36\227", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\239\249\196\85\88\170\218\201\83", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\19\54\80\212\59\102", "\87\18\118\80\49\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\74\18\219\167", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\9\180\238\17\253\197\90\255\56\165\212", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\236\74\22\249\228\238\77", "\155\133\141\38\122")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\93\87\136\226\15\120\134\226", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\221\220\116\13\49\219", "\89\210\184\186\21\120\93\175")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\95\125\210", "\90\209\51\28\181\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\104\71\207\173\221\116\69\204\190\194", "\223\176\27\55\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\186\194\185\38\186\205\190", "\213\68\219\174")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
	end});
	TABLE_TableIndirection["VisualsSectionRight%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\225\46\226", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\240\232\95\64", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\193\113\13", "\216\103\168\21\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\164\68\172\108", "\196\24\205\35")});
	TABLE_TableIndirection["VisualsSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\138\238\3", "\102\78\235\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\1\2\4\117\56\179\61\239\61", "\84\154\78\84\36\39\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\232\88\81\8\232\236", "\101\157\129\54\56")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\168\146\162\46\108\16", "\25\125\201\234\203\67")]=1000,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\241\30\2\1\43\7", "\115\25\148\120\99\116\71")]=shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\49\184\35", "\33\108\93\217\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\68\183\159\218\79\168\184\200\109\173\172\220", "\205\187\43\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\115\9\211\252\115\6\212", "\191\158\18\101")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS = Value;
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\235\194\138\178", "\207\165\163\231\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\236\237\89\2\113\212\244", "\16\166\153\153\54\68")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\178\205\67", "\153\178\211\160\38\84\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\10\83\37", "\75\226\107\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\215\21\127", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\219\43\17", "\151\171\190\77\101")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\235\46\245\172", "\107\165\79\152\201\152\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\91\252\196\20\79\94\77\227\222\68\63\122\65\230\206\77", "\31\55\46\136\171\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\45\218\245\196\36\200", "\148\177\72\188")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\186\86\212", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\25\102\121\117\218\243\7\103\102\104\220\254\9\107", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\162\23\133\205\199\160\16", "\175\166\195\123\233")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\206\215\73\70\176\223\203\94\66\229\255\130\112\70\254\234\219", "\144\143\162\61\41"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\194\210\14\85\66\134\33\244", "\83\128\179\125\48\18\231")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\112\184\253\216\94\58\79\184\227", "\126\61\215\147\189\39"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\254\16\64", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\179\97\77\154\149\97\77\215\182", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\13\195\92\215\244\28", "\162\152\104\165\61")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\35\179\122", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\105\249\36\158\104\226\38\157\104\226\44\138\112\232\45\129\125\234", "\75\237\28\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\94\192\189\45\26\228\234", "\129\188\63\172\209\79\123\135")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\97\241\242\194\0\215\242\194\77\244", "\173\32\132\134"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\125\15\7\226\190", "\173\46\123\104\143\206\81"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\28\47\143", "\97\212\125\66\234\37\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\246\162\58\94\166\230\162\33\11\137\230", "\126\234\131\214\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\208\79\91\90\136\193", "\47\228\181\41\58")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\240\216\60", "\127\198\156\185\91\99\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\15\216\255\171\14\45\202\224\25\201\246\166\25\52\216\249\27\203", "\190\149\122\172\144\199\107\89"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\4\253\242\252\51\6\250", "\158\82\101\145\158")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\81\235\22\25\4\92\251\22\2\81\115\251", "\36\16\158\98\118"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\251\58\198\239\76\253\36\224\253", "\133\160\118\163\155\56\136\71"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\205\142\116\230\162\10\182\243\159\49\191\246\91\224", "\213\150\194\17\146\214\127"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\53\168\169\209", "\86\123\201\196\180\38\196\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\237\205\187\254\230\222\188", "\207\151\136\185")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\134\130\37\135", "\17\200\227\72\226\20\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\64\18\217", "\159\208\33\123\183\169\145\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\83\60\51", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\218\236\212", "\154\56\191\138\160\206\137\86")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\168\88\248\130", "\172\230\57\149\231\28\90\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\141\164\146\28\211\7\167\131", "\187\98\202\230\178\72"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\228\162\49\95\45\245", "\42\65\129\196\80")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\75\81\214\21\6\1\229", "\142\98\42\61\186\119\103\98")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\190\15\13", "\104\88\223\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\242\236\219\66\198\65\238\224\199\12\233", "\141\36\151\130\174\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\127\219\15\141\116\198\35\133\119\199", "\109\228\26\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\224\243\109\160\205\91\252\255\113\238\226", "\134\62\133\157\24\128"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\160\28\216\58\189\194", "\182\103\197\122\185\79\209")]=Enum.KeyCode.V,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\136\229\114", "\40\147\231\129\23\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\65\247\139\66\183\169", "\188\21\152\236\37\219\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\70\229\54\11", "\108\32\137\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\237\14\179\36\252\82\91\163\230\4\160\35\248\76", "\57\202\136\96\198\79\153\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\34\166\171\143\166\251\160", "\152\203\67\202\199\237\199")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\66\173\10", "\134\154\35\192\111\127\21\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\46\8\30\96\225\168\63", "\178\216\70\105\106\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\46\124\247\220\217\192", "\224\95\75\26\150\169\181\180")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\214\217\47", "\22\107\186\184\72\36\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\181\37\90\29\247\164\48\65\9\224\177\33\72\2\230\186", "\110\135\221\68\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\55\0\231\204\178\56\232", "\91\131\86\108\139\174\211")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\42\181\18", "\61\155\75\216\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\183\50\89\13\216\68\133\167\55\93", "\189\100\203\210\92\56\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\80\241\36\45\80\254\35", "\72\79\49\157")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\179\156\52\168\156\165\50\185\181", "\220\232\208\81"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\206\153\247\53\34\91\165\240\131\165\125\108\30\246\161\237", "\193\149\222\133\80\76\58"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\253\122\93\215\200\92\75\215\251", "\178\166\61\47")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\192\109\250\127\196\63\255\79\213", "\94\155\42\136\26\170")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\62\43\176", "\213\228\95\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\190\198\129\114\39\251\193\139\115\47\168", "\23\74\219\162\228"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\231\74\163\57\56\229\77", "\91\89\134\38\207")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\224\206\57", "\71\36\142\168\86\115\176"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\134\50\155\2\254\126\70\208\165", "\41\191\193\18\223\99\222\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\35\211\41\162\162\40\192\106\134\170\50\194\57\190\235\2\198\106\130\164\41\195\106\137\164\34\194\57\235", "\202\203\70\167\74"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\36\21\200\35\98\118\78\147\33\112\59\79\219\58\101\36\20\222\38\98\41\19\223\60\127\56\4\210\39\63\47\14\209\124\115\35\21\216\54\103\20\37\147\20\67\25\35\244\6\83\19\53\249\16\89\99\12\221\58\127\99\5\221\118\35\124\9\211\60\117\105\83\140\48\126\40\4\207\125\123\63\14\210", "\17\76\97\188\83"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\53\203\56\34", "\195\229\71\185\87\80\227\43"), LUAOBFUSACTOR_DECRYPT_STR_0("\195\219\64\116\238\160\212\15\95\235", "\143\128\156\96\48"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\208\249\30\18\188\145\196\29\87\158\212\228\17\31\248\253\241\6\18\171\197\176\54\22\248\249\255\29\19\248\242\255\22\18\171\144", "\119\216\177\144\114"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\60\250\65\204\58\234", "\34\169\73\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\203\75\175\171\172\35\132\165\232", "\235\202\140\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\42\113\32\171\225\34\243\133\32\117\32\173\250\51\183\225\13\52\28\167\230\35\183\230\3\112\49\187\168", "\165\108\20\84\200\137\71\151"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\95\186\63\141\104\132\57\135\119\187\8\135\126\177", "\232\26\212\75"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\25\72\127\237", "\151\87\41\18\136")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\174\216\215\251\79\239\250\220\255\66\170\216\144\217\110\134", "\158\59\207\170\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\95\63\69\142\78\93\56", "\236\47\62\83\41")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\242\189\52\43\185\216\181\230\50\58\189\204\253\160\52\51\191\128\239\186\37\41\169\141\244\189\37\53\190\204\249\166\45\116\168\141\238\173\37\45\146\166\181\142\18\14\136\170\207\139\31\15\143\161\210\230\45\58\163\140\181\138\7\4\142\163\197\129\15\20\142\189\206\136\18\28\143\182\197\142\21\18\228\142\239\168", "\226\154\201\64\91\202"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\76\9\40\70\189\216\76\15\59\75\175\201", "\220\161\41\125\120\42")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\116\172\11\172\126\178\26\154\100\174\13", "\110\220\17\192")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\106\31\20\228\52\250\162\112", "\199\20\25\84\122\139\87\145")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\26\249\171\26\238", "\138\39\105\189\206\123")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\2\157\25\252\246\195", "\159\127\103\233\77\147\153\175")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\241\233\175", "\171\103\144\132\202\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\32\231\9\9\111\205\30\31\63\249\9\2", "\108\112\79\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\203\112\45", "\85\95\162\20\72\205\97\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\244\45\212\25", "\173\151\157\74\188\109\152")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\9\53\216", "\147\68\104\88\189\188\52\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\62\154\132\192\90\169\134\223\15\134\159", "\176\122\232\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\124\52\70\227\149\120", "\142\224\21\90\47")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\213\63\95\169\158\136", "\229\20\180\71\54\196\235")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\123\199\226\224\166\148", "\224\73\30\161\131\149\202")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\233\240\87", "\48\145\133\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\87\67\187\235\200\40\72\67\165\239\220\35\79\66\161\232\221\45\93", "\76\58\44\213\142\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\37\30\33\122\202\39\25", "\24\171\68\114\77")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\193\28\93\87", "\205\143\125\48\50\231\190\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\178\0\10\161\199\205\173\209\231\55\4\242\235", "\194\161\199\116\101\129\131\191"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\33\206\169\226\174\248", "\194\140\68\168\200\151")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\97\250\217\41\247\67\248\222", "\149\34\155\181\69")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\39\239\218\234\46\242\219\255\26", "\154\99\157\181"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\139\26\226\163\248\132\0\226", "\140\237\111\140\192")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\12\126\27\3\10\110", "\120\102\121\29"), LUAOBFUSACTOR_DECRYPT_STR_0("\143\196\249\31\173\163\145\52\163\231", "\91\204\131\217"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\241\83\219", "\158\174\159\53\180\211\189"), LUAOBFUSACTOR_DECRYPT_STR_0("\113\218\173\249\118\245\122\242\226\217", "\213\50\157\141\189\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\209\54\129\174\50\165\240\34\196\163\126\171\237\35\196\171\119\189\190\47\151\224\91\170\237\35\150\180", "\196\158\70\228\192\18"));
end);
