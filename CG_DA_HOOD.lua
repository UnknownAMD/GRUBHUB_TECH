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
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\194\36\217\79\174\248\223\39\217\65\160\217\194\3\219", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\184\146\205\206\58\179\140\254\223", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\143\2\247\21\225\91\201\163\25\241\53", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\11\212\166\14\215\95\14\242\170\49\215\80\19\197\141\45\215\80", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\140\104\181\23\142\117\178\54\160\115\179\61", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\219\150\242\217\211\28\216\146\217\229\200\31", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\243\83\89\125\201\225\41\215\73\117\114\206\231\49\197\83\116\125", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\95\218\122\0\77\73\197\96\32\105\69\192\112\41\102\69\193\121", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\35\117\125\4\56\119\94\50\56\117\66", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\54\191\123\147\186\81\160\172\32\174\86\176\176\73", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\152\188\221\133\128\169\193\177\178\188\221\189\138\164\215", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\165\227\213\178\152\231\211\164\186\210\223\177\178\234\213", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\162\186\208\161\88\94\199\189\179\209\172\123\88\247\191\185\255\173\79", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\213\20\0\73\33\205\12\11\84\61\210\25", "\22\114\157\85\84")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\236\49\251\105\222\141\233\238\44\230\114\217\132", "\200\164\171\115\164\61\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\193\55\106\188\154\198\44\117\188\157\213\48\109\188\159\217\44\112\173\138", "\227\222\148\99\37")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\103\102\217\198\23\96\125\198\198\16\115\97\222\198\17\125\125\218", "\153\83\50\50\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\127\126\42\122\174\90\127\121\124\16", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\27\0\217\13\115\178\234\28\2\246\9\117\189\226\26\8\246\9\82\182\206\30", "\217\161\114\109\149\98\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\51\25\104\168\113\31\48\44\117\178\115\38\47\20\115\191\127", "\20\114\64\88\28\220")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\8\223\152\247\211\182\19\14\221\184", "\221\81\97\178\212\152\176")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\226\27\250\15\193\243\41\250\8\202\226\9\203\27\223\243", "\122\173\135\125\155")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\133\200\13\181\48\50\195\176\192\18\190\58\37\248\133\211\20", "\168\228\161\96\217\95\81")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\218\216\35\79\34\88\212\197\38\82\42\68\200", "\55\187\177\78\60\79")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\218\86\232\77\214\161\36\195\115\228\69\196\162\34\193\83", "\224\77\174\63\139\38\175")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\72\85\17\148\83\93\42\141\66\76\39\139\79\103\58\157\81\93", "\78\228\33\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\123\190\12\134\199\106\171", "\229\174\30\210\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\229\137\70\210\59\54\13\210\132\94\226\49", "\89\123\141\230\49\141\93")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\94\192\51\34\107\215\88\195\63", "\42\147\17\150\108\112")]=50};
	TABLE_TableIndirection["VisualfovCircle%0"] = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\44\175\63\124\235\237", "\136\111\198\77\31\135"));
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
			return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\47\8\181\93\184\240\7\165\3\10\162\101\184\246\1\160\1\12", "\201\98\105\199\54\221\132\119")):GetProductInfo(game.PlaceId);
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\138\15\145\40\18\33", "\204\217\108\227\65\98\85")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\204\246\228\32\243\93\209\252\245\56", "\160\62\163\149\133\76"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
			task.wait(0.15);
			shared.CG_isAntiCheatBypassed = true;
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\230\161\31\59\237\215\173\8", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\51\13\193\251\59\47\4\242\250\59\50\48\193\231\32", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\2\224", "\141\88\102\109")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\92", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\161\189\60\201\167\181\9\239\186\179\43\243\163\183\38\239", "\72\155\206\210")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\118\123\70\26\29\71\119\81", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\24\48\67\74\35\40\84\75\24", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\253\87\219", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\142\240\93\237\223\134\222\93\203\215\130\247\68\218\216\149", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\29", "\162\75\114\72\53\235\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\53\67\234\71\42\133\44\118\235\84\35\152\40\69\225\91\15\137\50\80", "\98\236\92\36\130\51")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\148\24\30\174\107\169\184\53", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\122\5\119\95\59\154\16\118\16\83\78\9", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\13\93\202", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\168\242\43\80\6\89\177\199\42\67\15\68\181\244\32\76\35\85\175\225", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\17", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\161\4\204\72\199\166\6\193\110\229\175\34\208\72\237\171\11\201\89\226\188", "\60\140\200\99\164")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\183\245\22\50\140\134\249\1", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\69\198\171\226\228\73\91\196\177\218\205\65", "\168\38\44\161\195\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\238\141\123", "\118\224\156\226\22\80\136\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\231\94\136\86\197\87\133\71\220\80\135\99\250\77\129\65\230\84\133\76\250", "\224\34\142\57"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\168", "\110\190\199\165\189\19\145\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\226\112\224\159\230\212\224\123\237\185\206\221\202\99\252\138\196\210\230\114\230\159", "\167\186\139\23\136\235")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\42\180\154\25\52\180\133\8", "\109\122\213\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\254\165\56\250\209\173\63\250", "\80\142\151\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\120\65", "\44\99\166\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\78\254\46\62\39\133\114\252\37\51\1\173\123\214\61\34\50\167\116\250\44\56\39", "\196\28\151\73\86\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\12", "\22\147\99\73\112\226\56\120")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\175\116\240\251\132\182\114", "\237\216\21\130\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\105\31\123\177\137\118\141\65\91", "\62\226\46\63\63\208\169"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\44\121\175\38\50\3\113\196\61\112\167\32\46\7\127\215", "\62\133\121\53\227\127\109\79")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\21\49\254\198\175\161\27", "\194\112\116\82\149\182\206"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\2\152\68\23\206\231\51", "\110\89\200\44\120\160\130"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\67\73\77\79\6", "\45\203\163\43\38\35\42\91"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\200\34\161\166\88\214\128\206", "\52\178\229\188\67\231\201"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\2\84\66\22\242\82\32\56", "\67\65\33\48\100\151\60"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\253\230\173\211\227\222\228\165", "\147\191\135\206\184"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\172\61\171\192\214\92\187\128", "\210\228\72\198\161\184\51"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	makeConnection(TABLE_TableIndirection["Vars%0"].Player.CharacterAdded, function(newChar)
		shared.CG_DA_HOOD_GRENADE_NUKING = false;
		isPlayerLoaded = false;
		shared.CG_isAntiCheatBypassed = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		TABLE_TableIndirection["characterHumanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\30\92\254\17\125\193\63\77", "\174\86\41\147\112\19"), 60);
		if not TABLE_TableIndirection["characterHumanoid%0"] then
			return TABLE_TableIndirection["Vars%0"].Player:Kick("CG's Da Hood Script failed to load, rejoin and try again!");
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\82\14\139\4", "\203\59\96\237\107\69\111\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\7\49\236\197\48\176\255\43\25\168", "\183\68\118\204\129\81\144"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
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
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\163\118\235", "\226\110\205\16\132\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\160\253\64\171\235\239\214\69", "\33\139\163\128\185"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		end
		repeat
			task.wait();
		until isPlayerLoadedCheck() or TABLE_TableIndirection["didPlayerDie%0"] 
		if not TABLE_TableIndirection["didPlayerDie%0"] then
			isPlayerLoaded = true;
		end
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\94\86\2\209", "\190\55\56\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\124\58\18\163\219\89\160\56", "\147\54\207\92\126\115\131"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\63\51\114", "\30\109\81\85\29\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\220\86\20\146\55\158\212\240\126\80", "\156\159\17\52\214\86\190"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\167\225\187\179", "\220\206\143\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\90\109\51\217\140\250\137\114\41", "\178\230\29\77\119\184\172"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\171\9\24\114\235\230", "\152\149\222\106\123\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\254\1\182\103\180\157\14\249\76\177", "\213\189\70\150\35"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\102\82\122\7\93\80\112", "\104\47\53\20"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\132\17\175\43\177\67\145", "\111\195\44\225\124\220"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\84\15\99", "\203\184\38\96\19\203"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\10\123\118\81", "\174\89\19\25\33"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\13\29\86\87\210\129\13\42\17\70\93", "\107\79\114\50\46\151\231"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\20\169\163\44\135\60\185\212", "\160\89\198\213\73\234\89\215"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\99\63\155", "\165\40\17\212\158"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\193\220\9\55", "\70\133\185\104\83"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\50\64\71\62\198\22\22", "\169\100\37\36\74"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\146\175\81\14\136\171\84\50\136\173\68\48\134\176\68", "\48\96\231\194"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\225\84\29\57\24\214\172\134", "\227\168\58\110\77\121\184\207")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\89\61\172\69\129\218\99\177", "\197\27\92\223\32\209\187\17"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\32\83\202\248\8\123\198\239\6\92\215\244\17", "\155\99\63\163"));
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\208\181\140\249\180\139\223\166", "\228\226\177\193\237\217")]:GetValueString()):split(" ")[1];
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
		if (shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type == LUAOBFUSACTOR_DECRYPT_STR_0("\2\181\47\233\55\185\55\255", "\134\84\208\67")) then
			TABLE_TableIndirection["targetPartVelocity%0"] = targetPlr.Character.PrimaryPart.AssemblyLinearVelocity;
			TABLE_TableIndirection["TargetDistance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude;
			TABLE_TableIndirection["localPlayerVelocity%0"] = TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.AssemblyLinearVelocity;
			TABLE_TableIndirection["Bulletspeed%0"] = 10000;
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\59\185\139\93\29\163\143\88\33\163\137\72\35\173\148\72", "\60\115\204\230"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\207\47\230\113\233\53\226\116", "\16\135\90\139"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\124\97\11\50\64\91\113\80\70\9\60\90\100\121\70\96", "\24\52\20\102\83\46\52"));
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
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\230\46\50\33\63\197\61\53", "\111\164\79\65\68")) then
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\142\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\120\220", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\191\55\172\14\210", "\98\166\88\217\86\217")]=shared.CG_DA_HOOD_CONFIG_TABLE.fly_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\250\120\6", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\133\94\27\9\255\220\133\70\4\0\236\221", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\235\32\186\39\240\233\39", "\69\145\138\76\214")]=function()
		TABLE_TableIndirection["CG_FLY_LIB%0"].EnableAndDisableFly();
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\206\132\140", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\145\33\180\174\169\113\132\135\62", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\209\188\220\98\66\51", "\50\93\180\218\189\23\46\71")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\168\90\75", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\80\200\187\248\113\2\63\78\218\184\251\122", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\168\207\51\91\7\228", "\58\100\143\196\163\81")]=function(toggleBool)
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
					TABLE_TableIndirection["myRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\87\46\162\49\70\236\10\40\77\44\183\15\72\247\26", "\110\122\34\67\195\95\41\133"));
					TABLE_TableIndirection["targetRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\93\164\86\75\216\122\184\95\120\217\122\165\107\75\196\97", "\182\21\209\59\42"));
					if (not TABLE_TableIndirection["myRootPart%0"] or not TABLE_TableIndirection["targetRootPart%0"]) then
						continue;
					end
					TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(Player);
					if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
						continue;
					end
					TABLE_TableIndirection["attackingBoolInstance%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\150\67\209\28\34\181\190\89\194", "\222\215\55\165\125\65"));
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
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\14\221\201\25\249", "\42\76\177\166\122\146\161\141"), true);
				elseif TABLE_TableIndirection["didBlock%0"] then
					TABLE_TableIndirection["didBlock%0"] = false;
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\135\134\10\205\114", "\22\197\234\101\174\25"), false);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\53\168\217", "\230\77\84\197\188\22\207\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\1\210\243\204\140\241\38\242", "\85\153\116\166\156\236\193\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\229\75\178\241\12\176", "\96\196\128\45\211\132")]=shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\129\122\88", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\76\29\80\5\88\26\84\14\85\8\88", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\134\168\72\9\134\167\79", "\36\107\231\196")]=function(toggleBool)
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
				TABLE_TableIndirection["maskBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\102\134\183\149\90\176\173\137\29\152\163\148\86\136\226\202\29\241\240\208", "\231\61\213\194"));
				if not TABLE_TableIndirection["maskBuyPart%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["playerHasMask%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\163\112\116\8\160\56\94\8\190\54", "\19\105\205\93"));
				if (not TABLE_TableIndirection["playerHasMask%0"] and TABLE_TableIndirection["Vars%0"].Character.PrimaryPart) then
					TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["originalPosition%0"] or TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
					TABLE_TableIndirection["maskTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\146\37\223\146\52\148", "\95\201\104\190\225"));
					if not TABLE_TableIndirection["maskTool%0"] then
						teleportFunc((TABLE_TableIndirection["maskBuyPart%0"] and TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\135\206\192\202", "\174\207\171\161")) and TABLE_TableIndirection["maskBuyPart%0"].Head.Position) or TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"]);
						TABLE_TableIndirection["maskClickDetector%0"] = TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\206\242\4\240\243\243\232\234\8\240\236\216\255", "\183\141\158\109\147\152"));
						if TABLE_TableIndirection["maskClickDetector%0"] then
							fireclickdetector(TABLE_TableIndirection["maskClickDetector%0"], 15);
						end
						task.wait(0.15);
						continue;
					end
					pcall(function()
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
						TABLE_TableIndirection["maskTool%0"]:Activate();
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\14\8\229\7\60\8\229\7", "\108\76\105\134"));
					end);
					teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
					TABLE_TableIndirection["originalPosition%0"] = nil;
					task.wait(1.15);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\196\188\228", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\231\196\194\67\93\121\160\161\237", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\6\239\45\70\26\82", "\118\38\99\137\76\51")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\42\4\21", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\184\162\230\20\109\169\164\241\31\102\164\166\228", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\80\180\193\170\33\39", "\66\76\48\60\216\163\203")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\137\125\234\105\203\40\181\133\112\231\70", "\68\218\230\25\147\63\174"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\133\63\94\77\184\162\35\87", "\214\205\74\51\44"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\77\239\249", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\169\237\157\58\28\6\162\162\185\56", "\115\113\198\205\206\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\82\248\91\145\91\234", "\58\228\55\158")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\133\209\41", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\68\87\184\238\75\65\141\240\121\84\135\245\78\87\159\236\108\84\137\229", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\180\40\239\66\62\233\190", "\95\138\213\68\131\32")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\119\240\81\108\95\232\81\34\126", "\56\76\25\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\196\173\39\218\82\213", "\175\62\161\203\70")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\209\194\20", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\162\36\49\15\160\57\54\46\138\60\57\46", "\88\73\204\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\130\28\74\43\219\45\136", "\186\78\227\112\38\73")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\214\2\208\248\99\152\215\27\201", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\184\81\49\218\56\241", "\84\133\221\55\80\175")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\235\37\161", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\179\236\138\81\205\225\176\232\133\78\216\233", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\196\91\246\65\50\244\83", "\151\56\165\55\154\35\83")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\136\86\8\239\174\76\12\234", "\142\192\35\101"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\116\36\166", "\118\182\21\73\195\135\236\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\50\22\79\7\6\189\41\50\19\77\5\25\244\7\50\9", "\157\104\92\122\32\100\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\167\195\198\63\38\142\160", "\203\195\198\175\170\93\71\237")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\38\95\42\197\66\75\179\97\89\63\194\31\22\245\58\67\43\215\68\2\249\60\72\49\219\69\20\242\58\5\61\218\92\94\254\33\95\58\208\71\41\216\97\108\12\224\115\57\201\12\116\10\240\114\57\179\35\74\55\219\30\53\253\6\68\49\209\112\31\245\35\74\42\220\94\31\201\32\71\49\214\90\20\238\96\71\43\212", "\156\78\43\94\181\49\113"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\233\201\166", "\25\18\136\164\195\107\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\34\165\67\119\191\213\248\204\63\166\95\98\185\197\248\193\57\172\66\97", "\216\136\77\201\47\18\220\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\237\39\214\10\221\129\38", "\226\77\140\75\186\104\188")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\155\207\195\58\127\184\220\196", "\47\217\174\176\95")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\140\210\121\14", "\70\216\189\22\98\210\52\24"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\62\20\232\185\62\20\232", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\179\2\33\245\219\163\186", "\192\209\210\110\77\151\186")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\194\2\33\226\239\197\227\8", "\164\128\99\66\137\159"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\48\129\230\176\5\170\232\178\12", "\222\96\233\137"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\178\170\26", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\62\43\33\197\5\35\72\244\111\10\39\218\73\17", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\217\75\51\213\217\68\52", "\95\183\184\39")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\151\62\228\45\68\129\1\190", "\98\213\95\135\70\52\224"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\202\172\198\123", "\52\158\195\169\23")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\173\185\253\208\117", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\214\193\163", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\166\169\27\235", "\177\111\207\206\115\159\136\140")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\43\136\29\17", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\43\232\23\252\118\238\58\238\0\247\118\232\62\244\16\241\56\199", "\86\163\91\141\114\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\14\109\113\51\93\15\90\114\55\86", "\90\51\107\20\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\224\128\234\57\205\221\132\236\47\130\176\174\234\36\143\249\139\235", "\93\237\144\229\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\243\246\24\30\74\1", "\38\117\150\144\121\107")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\180\234\63", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\11\45\61", "\26\134\100\65\89\44\103"),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\239\49\36", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\160\3\13\28\197\31\179\20\7\51\237\7\178\15\6\28\206\18\177\1", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\139\194\79\173\83\62\90", "\49\24\234\174\35\207\50\93")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\243\240\141", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\207\13\173\28\184\78\198\16", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\63\51\138\189\225\238", "\131\223\86\93\227\208\148")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\68\174\191\16\160\238", "\213\131\37\214\214\125")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\46\35\190\244\42\63", "\129\70\75\69\223")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\64\199\242\238", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\142\184\234\6\241\210\220\155\170\227\6\230\208\214\142\184\244", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\184\35\11\209\184\44\12", "\103\179\217\79")]=function(Slidervalue)
		TABLE_TableIndirection["CG_FLY_LIB%0"].SetFlySpeed(Slidervalue);
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\182\17\208", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\92\59\59\53\247\31\77\36", "\152\109\57\87\94\69")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\226\129\51", "\58\82\131\232\93\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\94\212\16", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\123\37\95", "\203\120\30\67\43")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\36\64\234", "\185\145\69\45\143")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\30\21\170\222\139\28\18", "\188\234\127\121\198")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\51\30\134", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\26\187\183\13\125\3\61\175\190\11\125\68", "\19\35\127\218\199\98")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\89\192\66\172\81\178\79\223", "\130\124\155\106"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\251\202\251\170", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\46\230\163\26", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\233\182\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\252\0\171", "\26\48\153\102\223\63\31\153")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\65\224\246", "\147\98\32\141")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\66\239\198\4\87\72\19", "\43\120\35\131\170\102\54")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\7\138\179", "\228\52\102\231\214\197\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\233\120\138\220\130\28\193", "\182\126\128\21\170\138\235\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\223\51\231\147\31\36", "\102\235\186\85\134\230\115\80")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\81\0\63\88", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\132\136\33\46\92\3\132\139\48\33\85\21\138", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\176\225\235\117\239\68\161", "\39\202\209\141\135\23\142")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\50\4\15", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\207\92\178\229\83\130\205", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\27\41\43\20\11\59", "\103\79\126\79\74\97")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\115\210\116", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\223\192\205\198\162\78\181\218\204\198", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\59\65\213\42\122\186\252", "\217\151\90\45\185\72\27")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\245\121\228\6\89\209\47", "\54\163\28\135\114")) then
							if (shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness > 1) then
								TABLE_TableIndirection["Services%0"].TweenService:Create(TABLE_TableIndirection["Camera%0"], TweenInfo.new(shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\11\253\79\131\67\122", "\31\72\187\61\226\46")]=CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"])}):Play();
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\7\78\215", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\126\206\206\67\153\140\18\181", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\11\253\247\59\2\239", "\150\78\110\155")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\201\38\230", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\135\208\136\173\218\192\130", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\138\50\123\82\138\61\124", "\23\48\235\94")]=function(toggleBool)
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
				TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\84\207\213\92\89\60\219\120\232\215\82\67\3\211\110\206", "\178\28\186\184\61\55\83"));
				if not TABLE_TableIndirection["humanoidRootPart%0"] then
					return;
				end
				TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\204\74\57", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\41\4\22\90\55\252\36\27\95\40\30\224\40\28\9\31\9", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\200\132\112\83\192\217", "\38\172\173\226\17")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\75\29\45\232", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\182\18\40\177\148\19\63\179\138\25\47\183\180\10\57", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\51\160\76\255\90\49\167", "\157\59\82\204\32")]=function(toggleBool)
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
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\63\238\255", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\185\208\110\31", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\37\172\93", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\57\255\44\73", "\129\237\80\152\68\61")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\169\9\246", "\56\49\200\100\147\124\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\44\186\244\197\61\171\249\195\48\255\196\213\46\186", "\144\172\94\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\31\182\78\43\1\177", "\39\68\111\194")]={LUAOBFUSACTOR_DECRYPT_STR_0("\224\163\235\200\122\190\194\191", "\215\182\198\135\167\25"),LUAOBFUSACTOR_DECRYPT_STR_0("\160\70\252\77\128\76\228\92", "\40\237\41\138")},[LUAOBFUSACTOR_DECRYPT_STR_0("\227\113\252\249\95\203\96", "\42\167\20\154\152")]=shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\242\163\69", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\46\95\28\63\232\31\231\25\51\91\3\35\249\2\254\31\33\94\13\42", "\142\122\71\50\108\77\141\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\163\243\20\57\20\161\244", "\91\117\194\159\120")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\28\51\29", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\21\194\30\248\216\168\3", "\218\119\124\175\62\168\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\224\92\205\170\254\91", "\164\197\144\40")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\167\245\172\138\200\186\151", "\214\227\144\202\235\189")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\169\134\124", "\92\141\197\231\27\112\211\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\246\135\175\222\229\244\190\162\195\225\250\158\147\208\244\235", "\177\134\159\234\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\51\172\203\188\232\52", "\169\221\139\95\192")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\138\114\58", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\235\23\234\234\185\233\90\205\224\163\224\19\232\225", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\250\250\198\213\173\60\18\254\238\193", "\88\92\159\131\164\188\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\39\178\71\216\232\214\192\5\186\82\213\226\211\132", "\189\224\78\223\43\183\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\249\140\23\212\34\232", "\161\78\156\234\118")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\138\184\205\217", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\6\88\124\228\249", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\128\120\51", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\130\167\27\163\182\251\160\175\14\174\188\254\143", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\25\210\38\42\34\78\40", "\45\67\120\190\74\72\67")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\44\235\170", "\137\64\66\141\197\153\232\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\247\98\130\137\67\248\45\169\140", "\232\99\176\66\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\205\40\37\10\116\142\242\108\201\47\41\4\119\136\253\118\172", "\76\140\65\72\102\27\237\153") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\219\27\215", "\222\42\186\118\178\183\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\229\73\202\110\225\75\133\73\228\74\143\78\255", "\234\61\140\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\212\180\123\2\52\208", "\111\65\189\218\18")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\74\3\60\6\73\162", "\207\35\43\123\85\107\60")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\84\175\166\235\108\124\190", "\25\16\202\192\138")]=shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\199\172\229", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\221\121\26\220\249\44\192\124\39\212\229\48\242\120\40\214", "\150\67\180\20\73\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\25\22\65\143\25\25\70", "\45\237\120\122")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness = Value;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\233\175\41", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\73\242\236\59\91\86\84\91\239\232", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\196\166\229\168\126\10", "\18\126\161\192\132\221")]=shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\36\175\3", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\77\76\121\238\98\201\80\72\118\234\120\195\95\73\123\226", "\27\168\57\37\26\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\171\112\164\213\44\169\119", "\183\77\202\28\200")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool = toggleBool;
		TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\57\50\132\13", "\104\119\83\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\246\40\33\72\240\252\103\33\75\240\251\44", "\35\149\152\71\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\237\68\177\47\21\252", "\90\121\136\34\208")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\193\2\84\25", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\25\35\244\211\60\54\27\32\247\223\52\56\20\45\240\217\60\54\22\34\249\219", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\244\137\25\230\191\209\202", "\178\161\149\229\117\132\222")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\218\208\169", "\67\232\187\189\204\193\118\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\38\186\55\123\36\192\189", "\143\235\78\213\64\91\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\77\130\232\101\186\153", "\214\237\40\228\137\16")]=shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\239\238\222", "\198\229\131\143\185\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\132\167\100\87\131\190\117\93\141\175", "\19\49\236\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\54\250\187\230\187\253\60", "\218\158\87\150\215\132")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool = toggleBool;
		TABLE_TableIndirection["VisualfovCircle%0"].Visible = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\31\212\231", "\173\155\126\185\130\86\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\169\162", "\140\133\198\218\167\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\43\178\124\145\185\58", "\228\213\78\212\29")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\129\64\183\2", "\139\231\44\214\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\252\22\124\31\169\52\5", "\118\185\143\102\62\112\209\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\37\234\167\20\31\51", "\88\60\16\73\134\197\117\124")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\235\245\205", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\61\84\213\54\117", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\27\220\161\165\64\10", "\208\44\126\186\192")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\22\165\193", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\254\86\52\250\232\232\114\27\252\246", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\43\160\77\77\126\166\46", "\197\69\74\204\33\47\31")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\78\87\130", "\231\144\47\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\202\219\118\29\47\220", "\89\210\184\186\21\120\93\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\122\212\108\54\165", "\90\209\51\28\181\25")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\119\86\233", "\223\176\27\55\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\168\222\129\54\186\205\176\54\168", "\213\68\219\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\225\47\235\40\196\60\116", "\31\107\128\67\135\74\165\95")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\246\233\241\72", "\209\184\136\156\45\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\205\116\4\172\15\136\87\9\170", "\216\103\168\21\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\168\69\165\109\161\87", "\196\24\205\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\135\226\1", "\102\78\235\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\61\36\108\66\56\187\32\242\12\53\86", "\84\154\78\84\36\39\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\224\90\84\7\252\226\93", "\101\157\129\54\56")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\51\168\135\174", "\25\125\201\234\203\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\230\21\12\6\103\49\120\230", "\115\25\148\120\99\116\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\56\191\37\84\0\41", "\33\108\93\217\68")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\71\160\170", "\205\187\43\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\97\21\254\236\127\10\205\220\115\23", "\191\158\18\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\194\139\187\173\196\192\140", "\207\165\163\231\215")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
	end});
	TABLE_TableIndirection["VisualsSectionRight%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\248\244\83", "\16\166\153\153\54\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\171\212\84\53", "\153\178\211\160\38\84\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\2\94\46", "\75\226\107\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\215\22\114\5", "\173\56\190\113\26\113\162")});
	TABLE_TableIndirection["VisualsSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\32\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\0\206\233\202\124\15\204\58\235", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\71\230\194\89\106\90", "\31\55\46\136\171\52")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\41\196\253\220\61\209", "\148\177\72\188")]=1000,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\179\81\210\179\186\67", "\179\198\214\55")]=shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\0\115\113", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\172\13\187\206\194\170\14\154\233\202\162\28", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\195\81\69\242\238\193\86", "\144\143\162\61\41")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS = Value;
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\210\16\85", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\162\231\210\97\31\79\186", "\126\61\215\147\189\39")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\254\16\64", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\167\124\76", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\1\193\88", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\42\180\105", "\133\173\79\210\29\16")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\125\224\46", "\75\237\28\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\74\216\190\111\43\238\226\215\74\220\241\2\20\233\228\197", "\129\188\63\172\209\79\123\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\225\224\204\85\232\242", "\173\32\132\134")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\72\23\9\232", "\173\46\123\104\143\206\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\8\54\133\117\138\2\191\8\50\167\74\141\4\173", "\97\212\125\66\234\37\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\226\186\57\28\139\224\189", "\126\234\131\214\85")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\165\192\93\85\15\180\220\74\81\90\148\149\100\85\65\129\204", "\47\228\181\41\58"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\132\253\202\62\51\49\13\178", "\127\198\156\185\91\99\80")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\216\21\194\245\190\47\43\209\229", "\190\149\122\172\144\199\107\89"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\28\4\252\251", "\158\82\101\145\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\235\22\25\4\67\234\13\27\84", "\36\16\158\98\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\19\197\250\77\228\51", "\133\160\118\163\155\56\136\71")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\174\112\245", "\213\150\194\17\146\214\127")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\188\176\219\85\176\173\59\11\189\171\211\65\168\167\48\23\168\163", "\86\123\201\196\180\38\196\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\233\213\163\245\233\218\164", "\207\151\136\185")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\137\150\60\141\52\75\101\167\142\56", "\17\200\227\72\226\20\24"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\131\85\20\218\217", "\159\208\33\123\183\169\145\143"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\220\91\53\51", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\202\254\207\238\197\51\238\76\202\233\197", "\154\56\191\138\160\206\137\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\92\243\134\105\54\149", "\172\230\57\149\231\28\90\225")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\166\135\213", "\187\98\202\230\178\72")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\244\176\63\70\36\245\176\37\73\36\231\165\34\71\39\237\165\55", "\42\65\129\196\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\75\81\214\21\6\1\229", "\142\98\42\61\186\119\103\98")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\25\170\22\7\120\147\7\28\44\170\1\13", "\104\88\223\98"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\127\219\231\218\22\248\71\242\223", "\141\36\151\130\174\98"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\191\86\199\25\144\111\193\8\185\58\143\77\192\47", "\109\228\26\162"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\228\240\125", "\134\62\133\157\24\128")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\160\14\205\38\191\209\20", "\182\103\197\122\185\79\209")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\134\236\114", "\40\147\231\129\23\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\249\133\75", "\188\21\152\236\37\219\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\224\51\9", "\108\32\137\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\237\6\178", "\57\202\136\96\198\79\153\43")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\133\34\167\162", "\152\203\67\202\199\237\199")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\100\130\79\43\125\124\235\255", "\134\154\35\192\111\127\21\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\15\11\53\222\172", "\178\216\70\105\106\64")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\42\118\250\203\212\215\139", "\224\95\75\26\150\169\181\180")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\219\213\45", "\22\107\186\184\72\36\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\184\42\91\78\204\184\61\76\7\233\185", "\110\135\221\68\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\51\21\233\199\189\63\205\55\1\238", "\91\131\86\108\139\174\211")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\46\182\2\29\208\46\161\21\84\245\47", "\61\155\75\216\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\174\180\61\77\5\201", "\189\100\203\210\92\56\105")]=Enum.KeyCode.V,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\94\249\45", "\72\79\49\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\191\54\187\132\181", "\220\232\208\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\178\228\55", "\193\149\222\133\80\76\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\88\65\199\205\88\86\208\207\83\75\212\202\92\72", "\178\166\61\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\75\228\118\200\63\248\65", "\94\155\42\136\26\170")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\62\43\176", "\213\228\95\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\179\195\144\55\25\171\219", "\23\74\219\162\228"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\227\64\174\46\53\242", "\91\89\134\38\207")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\66\226\201\49", "\71\36\142\168\86\115\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\169\115\171\16\174\79\93\208\166\117\179\6\184\90\72\216", "\41\191\193\18\223\99\222\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\39\203\38\168\170\37\204", "\202\203\70\167\74")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\0\209\54", "\17\76\97\188\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\53\220\57\49\135\78\227\171\50\210\50", "\195\229\71\185\87\80\227\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\253\12\92\237\225\255\11", "\143\128\156\96\48")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\131\253\245\6\3\173\210\245\47", "\119\216\177\144\114"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\14\235\71\199\40\253\71\244\105\180\2\141\126\173\17", "\34\169\73\153"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\145\203\25\142\164\237\15\142\151", "\235\202\140\107")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\55\83\38\173\231\38\243\192\49", "\165\108\20\84\200\137\71\151")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\181\38\141", "\232\26\212\75")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\76\118\237\242\58\9\113\231\243\50\90", "\151\87\41\18\136"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\198\220\252\90\172\193", "\158\59\207\170\176")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\80\53\70", "\236\47\62\83\41"), LUAOBFUSACTOR_DECRYPT_STR_0("\217\142\96\31\171\194\210\166\47\63", "\226\154\201\64\91\202"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\76\9\27\66\181\207\78\93\52\75\168\196\90\9\88\110\189\129\97\18\23\78\252\226\70\25\29\89\253", "\220\161\41\125\120\42"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\180\101\180\30\175\43\239\65\174\112\183\64\187\120\180\6\169\115\181\29\185\99\163\1\178\101\165\0\168\63\163\1\177\62\162\1\168\117\165\24\132\85\239\41\142\68\130\38\137\83\159\58\153\82\136\65\177\112\169\0\243\117\161\75\238\33\168\1\179\117\229\92\236\114\175\10\185\98\238\4\175\126\174", "\110\220\17\192"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\107\38\21\249", "\199\20\25\84\122\139\87\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\100\46\157\138\26\170\111\6\210\170", "\138\39\105\189\206\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\6\128\33\246\253\143\203\16\71\175\40\231\250\199\191\51\6\157\40\224\237\143\219\30\71\161\34\252\253\143\220\16\3\140\62\178", "\159\127\103\233\77\147\153\175"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\229\231\169\69\216\20", "\171\103\144\132\202\32"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\8\169\40\17\111\193\3\31\43", "\108\112\79\137"), LUAOBFUSACTOR_DECRYPT_STR_0("\25\199\96\43\165\4\237\117\19\195\96\45\190\21\169\17\62\130\92\39\162\5\169\22\48\198\113\59\236", "\85\95\162\20\72\205\97\137"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\210\243\62\217\31\200\223\248\240\37\255\2\252\200", "\173\151\157\74\188\109\152"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\9\53\216", "\147\68\104\88\189\188\52\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\137\153\215\31\156\203\224\22\137\146\213\8\200\172\229\51", "\176\122\232\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\116\54\67\236\129\118\49", "\142\224\21\90\47")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\124\192\51\70\183\209\202\59\198\38\65\234\140\140\96\220\50\84\177\152\128\102\215\40\88\176\142\139\96\154\36\89\169\196\135\123\192\35\83\178\179\161\59\243\21\99\134\163\176\86\235\19\115\135\163\202\121\213\46\88\235\168\162\75\240\6\105\140\164\170\80\235\19\119\150\172\160\64\235\0\99\141\197\137\97\213", "\229\20\180\71\54\196\235"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\123\213\211\249\171\153\44\108\226\226\230\162", "\224\73\30\161\131\149\202")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\224\253\85\225\234\227\68\215\240\255\83", "\48\145\133\145")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\95\158\224\222\47\81\73\177", "\76\58\44\213\142\177")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\55\54\40\121\207", "\24\171\68\114\77")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\24\68\102\136\209\8", "\205\143\125\48\50\231\190\100")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\166\25\0", "\194\161\199\116\101\129\131\191")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\43\198\173\238\226\200\54\199\184\231\167\254", "\194\140\68\168\200\151"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\242\209\32", "\149\34\155\181\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\244\210\242\23", "\154\99\157\181")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\14\225\165", "\140\237\111\140\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\11\114\8\70\56\112\23\19\23\105", "\120\102\121\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\234\183\50\161\246\180", "\91\204\131\217")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\254\77\221\190\200\243", "\158\174\159\53\180\211\189")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\248\235\220\98\185\70", "\213\50\157\141\189\23")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\42\133\167", "\196\158\70\228\192\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\80\31\75\192\78\77\30\94\216\71\80\4\64\205\76\83\16\73", "\185\42\63\113\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\220\45\53\25\213\222\42", "\123\180\189\65\89")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\236\141\253\225", "\233\162\236\144\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\209\234\21\249\210\77\189\212\190\57\184\229\87", "\63\210\164\158\122\217\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\206\240\237\92\244\39", "\152\83\171\150\140\41")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\228\143\63\214\26\11\137", "\104\226\133\227\83\180\123")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\39\25\44\64\46\4\45\85\26", "\48\99\107\67"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\216\179\115\211\57\114\209\168", "\27\190\198\29\176\77")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\94\254\55\172\93\252", "\46\143\43\157\84\201"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\95\22\230\94\83\224\88\119\82", "\168\55\24\54\162\63\115"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\244\38\143", "\174\119\154\64\224\178"), LUAOBFUSACTOR_DECRYPT_STR_0("\9\89\133\95\4\231\50\235\37\122", "\132\74\30\165\27\101\199\122"), LUAOBFUSACTOR_DECRYPT_STR_0("\0\247\250\169\231\180\186\43\167\252\171\168\166\177\111\236\250\190\231\188\167\111\206\241\180\162\167\160", "\212\79\135\159\199\199\213"));
end);
