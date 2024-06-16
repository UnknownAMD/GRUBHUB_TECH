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
	TABLE_TableIndirection["da_hood_staff_group_ids%0"] = {8068202};
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
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\194\36\217\79\174\248\223\39\217\65\160\217\194\3\219", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\184\146\205\206\58\179\140\254\223", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\128\41\246\54\225\92\253\146\2\255\63\232\103\193\137\19\253\50\235\74", "\56\162\225\118\158\89\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\11\212\166\14\215\95\14\226\160\45\212", "\184\60\101\160\207\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\140\104\181\29\141\127\183\3\135\111\179\61\148\121\158\62\141\112", "\220\81\226\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\219\150\242\204\203\26\219\133\217\229\200\31", "\167\115\181\226\155\138")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\44\243\85\72\101\201\239\50\197\83\116\125", "\166\130\66\135\60\27\17")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\95\218\122\18\72\69\205\126\0\81\68\205\125\53\87\104\193\122\60", "\80\36\42\174\21")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\35\117\126\25\52\113\91\0\26\117\64\21\46\88\65\31\59", "\26\46\112\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\54\191\123\140\171\74\185\169\1\164\123\179", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\152\188\221\150\136\188\198\175\142\173\240\181\130\164", "\178\218\237\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\160\242\223\137\184\231\195\189\138\242\223\177\178\234\213", "\176\214\213\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\189\179\209\172\123\88\247\191\185\224\167\81\94\248\168", "\57\148\205\214\180\200\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\242\57\48\127\28\250\6\36\115\23\249\24\53\117\0\242\30\49\111", "\22\114\157\85\84")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\227\50\240\98\197\152\253\244\49\235\114\218", "\200\164\171\115\164\61\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\211\33\122\183\150\209\46\96\188\156\219\44\105", "\227\222\148\99\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\103\102\217\198\23\96\125\198\198\16\115\97\222\198\18\127\125\195\215\7", "\153\83\50\50\150")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\67\71\51\76\143\127\114\70\76\63\82\152\101\98\84\92\51\95", "\45\61\22\19\124\19\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\27\0\195\11\117\174\227\29\2\249", "\217\161\114\109\149\98\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\41\53\80\179\119\25\11\54\115\191\127\23\36\27\116\185\119\25\2\55\115\176", "\20\114\64\88\28\220")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\18\243\160\236\213\176\33\21\219\186\255\228\178\29\14\209\191", "\221\81\97\178\212\152\176")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\238\16\215\21\206\236\63\244\21\193", "\122\173\135\125\155")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\196\6\184\42\61\220\176\192\18\190\58\37\248\133\211\20", "\168\228\161\96\217\95\81")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\218\216\35\80\32\84\208\229\47\78\40\82\207\225\47\78\59", "\55\187\177\78\60\79")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\44\199\82\248\75\192\143\57\198\81\238\85\220", "\224\77\174\63\139\38\175")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\85\81\45\143\88\121\39\137\109\87\45\143\99\87\33\136", "\78\228\33\56")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\119\191\60\149\220\123\182\10\134\218\119\189\13\186\218\103\162\6", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\232\138\94\238\52\45\2", "\89\123\141\230\49\141\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\121\249\27\47\76\252\103\201\14\31\69\255", "\42\147\17\150\108\112")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\137\27\64\213\201\43\143\24\76", "\136\111\198\77\31\135")]=50};
	TABLE_TableIndirection["VisualfovCircle%0"] = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\0\181\85\177\225", "\201\98\105\199\54\221\132\119"));
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
			return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\148\13\145\42\7\33\188\181\13\128\36\49\48\190\175\5\128\36", "\204\217\108\227\65\98\85")):GetProductInfo(game.PlaceId);
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\109\192\231\236\60\212", "\160\62\163\149\133\76")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\250\175\14\46\207\229\163\31\38\211\194", "\163\182\192\109\79"));
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
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\18\212\219\53\43\5", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\19\0\236\54\9\4\233\10\9\2\249\8\7\31\249", "\141\88\102\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\65\197\125", "\161\211\51\170\16\122\93\53")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\161", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\117\91\26\1\79\125\117\26\39\71\121\92\3\54\72\110", "\83\38\26\52\110")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\104\22\53\82\118\22\42\67", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\224\79\211\55\98\252\253\75\217", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\240\68", "\191\182\225\159\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\29\39\65\185\142\197\10\6\60\84\136\143\207\46\28\60", "\162\75\114\72\53\235\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\51", "\98\236\92\36\130\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\16\11\178\81\128\188\32\150\16\11\155\81\188\180\51\172\20\9\180\81", "\80\196\121\108\218\37\200\213")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\48\114\16\107\101\15\135\5", "\234\96\19\98\31\43\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\22\85\207\184\71\155\22\26\64\235\169\117", "\235\102\127\50\167\204\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\179\250\46", "\78\48\193\149\67\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\23\135\16\85\24\23\144\42\72\55\63\148\12\64\51\22\141\29\79\36", "\33\80\126\224\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\167", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\253\3\46\182\172\250\1\35\144\142\243\37\50\182\134\247\12\43\167\137\224", "\194\231\148\100\70")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\118\77\211\183\216\201\75\73", "\168\38\44\161\195\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\245\133\126\36\196\185\1\133\238\174\115\55", "\118\224\156\226\22\80\136\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\252\86\141", "\224\34\142\57")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\174\194\213\103\218\83\11\219\149\204\218\82\229\73\15\221\175\200\216\125\229", "\110\190\199\165\189\19\145\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\228", "\167\186\139\23\136\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\188\143\5\14\148\134\6\22\176\186\4\29\148\156\25\27\182\128\0\31\187\156", "\109\122\213\232")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\222\246\176\36\192\246\175\53", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\207\112\68\23\224\120\67\23", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\229\38\59", "\196\28\151\73\86\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\10\46\24\150\121\22\125\255\6\27\25\133\121\12\98\242\0\33\29\135\86\12", "\22\147\99\73\112\226\56\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\122", "\237\216\21\130\149")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\79\77\81\185\199\89", "\62\226\46\63\63\208\169"), LUAOBFUSACTOR_DECRYPT_STR_0("\198\62\21\167\30\77\7\81\234\29", "\62\133\121\53\227\127\109\79"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		if not isRealDaHoodGame() then
			return true;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\54\33\30\217\239\145\142\63\53\22\208\242\145\129\56\53\0", "\194\112\116\82\149\182\206")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\79\19\208\227\13\50", "\110\89\200\44\120\160\130"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\67\73\77\79\6", "\45\203\163\43\38\35\42\91"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\233\181\212\44\137\172\105", "\52\178\229\188\67\231\201"));
	end
	local function getDataFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		return plr:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\64\68\5\209\83\47\37\68\66", "\67\65\33\48\100\151\60"));
	end
	local function getPlayerCash(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["DataFolder%0"] = getDataFolder(plr);
		if not TABLE_TableIndirection["DataFolder%0"] then
			return 0;
		end
		TABLE_TableIndirection["CurrencyInstance%0"] = TABLE_TableIndirection["DataFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\242\188\202\246\209\228\183", "\147\191\135\206\184"));
		if not TABLE_TableIndirection["CurrencyInstance%0"] then
			return 0;
		end
		return tonumber(TABLE_TableIndirection["CurrencyInstance%0"].Value);
	end
	local function getTool(toolName)
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\166\41\165\202\200\82\177\143", "\210\228\72\198\161\184\51"));
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
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\92\254\17\125\193\63\77", "\174\86\41\147\112\19"));
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
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\82\14\139\4", "\203\59\96\237\107\69\111\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\7\49\236\197\48\176\255\43\25\168", "\183\68\118\204\129\81\144"), newPlayer.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\78\132\67\164\42\194\61\153\81\194\45\194\35\136\93\198\46\176\78\236\49\165\74", "\226\110\205\16\132\107"));
		end
	end);
	makeConnection(TABLE_TableIndirection["Vars%0"].Player.CharacterAdded, function(newChar)
		shared.CG_DA_HOOD_GRENADE_NUKING = false;
		isPlayerLoaded = false;
		shared.CG_isAntiCheatBypassed = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		TABLE_TableIndirection["characterHumanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\214\237\216\79\228\202\228", "\33\139\163\128\185"), 60);
		if not TABLE_TableIndirection["characterHumanoid%0"] then
			return TABLE_TableIndirection["Vars%0"].Player:Kick("CG's Da Hood Script failed to load, rejoin and try again!");
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\94\86\2\209", "\190\55\56\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\124\58\18\163\219\89\160\56", "\147\54\207\92\126\115\131"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
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
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\63\51\114", "\30\109\81\85\29\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\220\86\20\146\55\158\212\240\126\80", "\156\159\17\52\214\86\190"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		end
		repeat
			task.wait();
		until isPlayerLoadedCheck() or TABLE_TableIndirection["didPlayerDie%0"] 
		if not TABLE_TableIndirection["didPlayerDie%0"] then
			isPlayerLoaded = true;
		end
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\167\225\187\179", "\220\206\143\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\90\109\51\217\140\250\137\114\41", "\178\230\29\77\119\184\172"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\176\12\20", "\152\149\222\106\123\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\254\1\182\103\180\157\14\249\76\177", "\213\189\70\150\35"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\91\114\7", "\104\47\53\20"), LUAOBFUSACTOR_DECRYPT_STR_0("\128\107\193\56\189\79\139\67\142\24", "\111\195\44\225\124\220"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\83\3\112\174\184\203", "\203\184\38\96\19\203"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\84\57\101\207\121\91\118\78\202", "\174\89\19\25\33"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\6\21\92\65\229\130\15", "\107\79\114\50\46\151\231"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\178\176\36\153\29\165\207\41", "\160\89\198\213\73\234\89\215"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\108\99\187\238", "\165\40\17\212\158"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\214\209\7\35", "\70\133\185\104\83"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\74\64\51\236\2\67\65\41\221\23", "\169\100\37\36\74"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\45\136\180\85\13\130\172\68", "\48\96\231\194"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\20\33", "\227\168\58\110\77\121\184\207"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\95\57\190\68", "\197\27\92\223\32\209\187\17"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\53\90\192\239\12\77\144", "\155\99\63\163"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\170\196\172\140\183\139\139\213\147\130\182\144\178\208\179\153", "\228\226\177\193\237\217"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\29\190\48\242\53\190\32\227", "\134\84\208\67")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\49\173\149\89\35\173\148\72", "\60\115\204\230"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\196\54\226\115\236\30\238\100\226\57\255\127\245", "\16\135\90\139"));
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\117\18\50\14\100\113\90\115", "\24\52\20\102\83\46\52")]:GetValueString()):split(" ")[1];
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
		if (shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type == LUAOBFUSACTOR_DECRYPT_STR_0("\242\42\45\43\12\205\59\56", "\111\164\79\65\68")) then
			TABLE_TableIndirection["targetPartVelocity%0"] = targetPlr.Character.PrimaryPart.AssemblyLinearVelocity;
			if shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool then
				TABLE_TableIndirection["patchedTargetVelocity%0"] = Vector3.new(TABLE_TableIndirection["targetPartVelocity%0"].X, math.clamp(TABLE_TableIndirection["targetPartVelocity%0"].Y, -60, 60), TABLE_TableIndirection["targetPartVelocity%0"].Z);
				TABLE_TableIndirection["targetPartVelocity%0"] = TABLE_TableIndirection["patchedTargetVelocity%0"];
			end
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\238\204\142\223\32\229\207\221\177\209\33\254\246\216\145\202", "\138\166\185\227\190\78"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\227\97\200\54\92\44\16\207", "\121\171\20\165\87\50\67"));
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
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\228\57\170\51\137\3\212\44", "\98\166\88\217\86\217")) then
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\216\247\116\4", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\133\70", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\239\42\183\48\253\254", "\69\145\138\76\214")]=shared.CG_DA_HOOD_CONFIG_TABLE.fly_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\195\136\142", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\136\52\162\235\153\123\135\157\51\183\239\140", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\213\182\209\117\79\36\89", "\50\93\180\218\189\23\46\71")]=function()
		TABLE_TableIndirection["CG_FLY_LIB%0"].EnableAndDisableFly();
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\165\86\73", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\80\200\187\186\95\1\51\70\215", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\234\162\194\36\86\16", "\58\100\143\196\163\81")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\78\34\164", "\110\122\34\67\195\95\41\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\164\79\69\212\121\190\88\65\208\121\176\92", "\182\21\209\59\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\86\201\17\35\191\180\92", "\222\215\55\165\125\65")]=function(toggleBool)
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
					TABLE_TableIndirection["myRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\4\196\203\27\252\206\228\78\30\222\201\14\194\192\255\94", "\42\76\177\166\122\146\161\141"));
					TABLE_TableIndirection["targetRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\159\8\207\119\121\172\142\55\193\118\98\149\139\23\218", "\22\197\234\101\174\25"));
					if (not TABLE_TableIndirection["myRootPart%0"] or not TABLE_TableIndirection["targetRootPart%0"]) then
						continue;
					end
					TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(Player);
					if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
						continue;
					end
					TABLE_TableIndirection["attackingBoolInstance%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\32\177\221\117\164\222\136\42", "\230\77\84\197\188\22\207\183"));
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
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\219\24\201\255\135", "\85\153\116\166\156\236\193\144"), true);
				elseif TABLE_TableIndirection["didBlock%0"] then
					TABLE_TableIndirection["didBlock%0"] = false;
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\134\236\66\176\239", "\96\196\128\45\211\132"), false);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\76\29\80\72\116\8\76\3", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\130\162\69\30\139\176", "\36\107\231\196")]=shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\185\163\128", "\231\61\213\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\184\41\124\4\172\46\120\15\161\60\116", "\19\105\205\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\9\210\141\61\168\11\213", "\95\201\104\190\225")]=function(toggleBool)
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
				TABLE_TableIndirection["maskBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\148\248\212\220\168\206\206\192\239\230\192\221\164\246\129\131\239\143\147\153", "\174\207\171\161"));
				if not TABLE_TableIndirection["maskBuyPart%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["playerHasMask%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\196\240\64\244\249\218\232\211\12\224\243", "\183\141\158\109\147\152"));
				if (not TABLE_TableIndirection["playerHasMask%0"] and TABLE_TableIndirection["Vars%0"].Character.PrimaryPart) then
					TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["originalPosition%0"] or TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
					TABLE_TableIndirection["maskTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\23\36\231\31\39\52", "\108\76\105\134"));
					if not TABLE_TableIndirection["maskTool%0"] then
						teleportFunc((TABLE_TableIndirection["maskBuyPart%0"] and TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\192\176\229", "\174\139\165\209\129")) and TABLE_TableIndirection["maskBuyPart%0"].Head.Position) or TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"]);
						TABLE_TableIndirection["maskClickDetector%0"] = TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\128\191\235\194\205\39\117\108\166\176\246\206\212", "\24\195\211\130\161\166\99\16"));
						if TABLE_TableIndirection["maskClickDetector%0"] then
							fireclickdetector(TABLE_TableIndirection["maskClickDetector%0"], 15);
						end
						task.wait(0.15);
						continue;
					end
					pcall(function()
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
						TABLE_TableIndirection["maskTool%0"]:Activate();
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\234\39\67\23\69\8", "\118\38\99\137\76\51"));
					end);
					teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
					TABLE_TableIndirection["originalPosition%0"] = nil;
					task.wait(1.15);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\39\8\23", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\184\162\230\20\0\133\166\224\2\79", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\85\90\185\214\167\54", "\66\76\48\60\216\163\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\138\120\244", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\58\86\73\178\128\43\80\94\185\139\38\82\75", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\77\238\240\117\251\79\233", "\23\154\44\130\156")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\169\169\183\0\22\29\169\174\167\34\10", "\115\113\198\205\206\86"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\172\66\243\91\138\88\247\94", "\58\228\55\158"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\100\87\200\209\70\87\159\230\69\79\134", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\176\34\226\85\51\254", "\95\138\213\68\131\32")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\36\160\68", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\118\212\84\45\96\225\74\31\117\235\79\40\118\243\86\10\117\229\95", "\56\76\25\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\192\167\42\205\95\194\160", "\175\62\161\203\70")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\220\206\22", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\162\36\49\105\138\60\49\39\171", "\88\73\204\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\134\22\71\60\214\58", "\186\78\227\112\38\73")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\91\252\82", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\214\2\208\158\92\133\214\17\255\180\81\139", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\188\91\60\205\53\230\182", "\84\133\221\55\80\175")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\179\236\138\2\234\250\178\245\147", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\192\81\251\86\63\227", "\151\56\165\55\154\35\83")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\79\4\233", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\123\61\170\244\152\163\27\198\115\37\162\224", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\61\22\76\6\12\254\3", "\157\104\92\122\32\100\109")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\139\179\194\203\51\40\132\175", "\203\195\198\175\170\93\71\237"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208", "\156\78\43\94\181\49\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\230\200\172\8\72\57\83\230\205\174\10\87\112\125\230\215", "\25\18\136\164\195\107\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\44\165\67\112\189\194\179", "\216\136\77\201\47\18\220\161")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\37\248\63\202\27\134\205\98\254\42\205\70\219\139\57\228\62\216\29\207\135\63\239\36\212\28\217\140\57\162\40\213\5\147\128\34\248\47\223\30\228\166\98\203\25\239\42\244\183\15\211\31\255\43\244\205\32\237\34\212\71\248\131\5\227\36\222\41\210\139\32\237\63\211\7\210\183\35\224\36\217\3\217\144\99\224\62\219", "\226\77\140\75\186\104\188"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\207\221\58", "\47\217\174\176\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\210\122\14\183\87\108\102\156\207\121\18\162\81\124\102\145\201\115\15\161", "\70\216\189\22\98\210\52\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\222\175\139\209\219\220\168", "\179\186\191\195\231")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\219\62\11\225\201\62\10\240", "\132\153\95\120")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\133\189\1\33", "\192\209\210\110\77\151\186"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\2\47\236", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\136\229\178\64\136\229\178", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\178\171\19\138\242\243\178", "\144\217\211\199\127\232\147")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\218\46\61\35\197\68\1\79", "\36\152\79\94\72\181\37\98"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\231\208\72\49\210\251\70\51\219", "\95\183\184\39"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\62\234\35", "\98\213\95\135\70\52\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\178\220\126\68\190\130\197\123\20\202\172\198\123\71", "\52\158\195\169\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\189\62\120\132\52\120\128", "\235\26\220\82\20\230\85\27")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\170\160\234\201\100\137\162\226", "\20\232\193\137\162"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\22\208\202\170", "\17\66\191\165\198\135\236\119")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\174\163\22", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\145\4\6\213", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\50\233\23", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\97\2\115\123\46", "\90\51\107\20\19")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\241\136\234", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\230\245\28\15\6\56\247\243\11\4\6\62\243\233\27\2\72\17", "\38\117\150\144\121\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\190\247\56\36\181\234\20\44\182\235", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\20\36\60\72\71\87\231\7\51\54\12\44\127\255\6\40\55\72", "\26\134\100\65\89\44\103"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\230\54\34\177\253\247", "\196\145\131\80\67")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\191\2\13", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\80\133\194\71", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\254\252\143", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\211\17\232\43\133\74\192\6\226\4\173\82\193\29\227\43\142\71\194\19", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\55\49\143\178\245\224\180", "\131\223\86\93\227\208\148")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\205\68\187\179", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\39\60\255\210\54\46\32\187", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\194\253\224\113\250\75", "\143\38\171\147\137\28")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\131\161\250\14\246\217", "\180\176\226\217\147\99\131")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\188\41\6\198\181\59", "\103\179\217\79")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\187\29\210", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\85\54\39\32\234\11\85\46\45\53\253\8\93\49\50\36\255", "\152\109\57\87\94\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\214\6\175\188\211\87\163", "\200\153\183\106\195\222\178\52")]=function(Slidervalue)
		TABLE_TableIndirection["CG_FLY_LIB%0"].SetFlySpeed(Slidervalue);
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\28\226\133\56", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\82\220\16\77\48\145\67\195", "\95\227\55\176\117\61")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\127\46\78", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\36\68\225", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\22\29\163", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\55\21\151", "\227\88\82\115")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\30\183\162", "\19\35\127\218\199\98")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\250\6\238\30\250\9\233", "\130\124\155\106")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\251\202\251\170", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\63\226\190\6\66\122\193\187\16\69\52\228", "\105\44\90\131\206")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\186\219\250\247\69\119\186\221", "\94\159\128\210\217\104"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\248\11\186", "\26\48\153\102\223\63\31\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\84\232\254\17", "\147\98\32\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\74\231\207", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\3\129\162", "\228\52\102\231\214\197\208")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\225\120\207", "\182\126\128\21\170\138\235\121")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\219\57\234\132\18\51\13", "\102\235\186\85\134\230\115\80")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\13\51\90", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\132\136\119\17\80\17\154", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\180\235\230\98\226\83", "\39\202\209\141\135\23\142")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\63\8\13", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\207\92\228\192\89\150\207\95\245\207\80\128\193", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\31\35\38\3\6\44\21", "\103\79\126\79\74\97")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\126\222\118", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\223\192\129\229\174\70\184", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\75\216\61\119\173", "\217\151\90\45\185\72\27")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\112\230\21", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\210\80\142\65\124\35\221\81\131\73", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\7\79\222\69\127\39\200", "\68\163\102\35\178\39\30")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\136\117\217\211\12\167\208", "\113\222\16\186\167\99\213\227")) then
							if (shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness > 1) then
								TABLE_TableIndirection["Services%0"].TweenService:Create(TABLE_TableIndirection["Camera%0"], TweenInfo.new(shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\40\233\247\35\11", "\150\78\110\155")]=CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"])}):Play();
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\196\42\228", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\135\208\136\193\249\204\138\207", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\56\118\69\135\42", "\23\48\235\94")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\214\217\90", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\195\83\53\222\1\246\207", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\38\28\19\24\26\240\44", "\123\147\71\112\127\122")]=function(toggleBool)
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
				TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\228\216\143\112\72\195\196\134\67\73\195\217\178\112\84\216", "\38\172\173\226\17"));
				if not TABLE_TableIndirection["humanoidRootPart%0"] then
					return;
				end
				TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\99\16\33\234", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\182\8\53\248\148\19\63\179\248\46\57\171\183\16\42\189\170", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\55\170\65\232\87\38", "\157\59\82\204\32")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\50\226\253", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\175\202\104\23\15\62\33\35\147\193\111\17\47\39\39", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\45\164\84\36\119\228\39", "\22\135\76\200\56\70")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool = toggleBool;
	end});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\49\245\33", "\129\237\80\152\68\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\176\16\225\29", "\56\49\200\100\147\124\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\55\187\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\6\165\79\48", "\39\68\111\194")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\167\234\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\91\239\76\132\74\254\65\130\71\170\124\148\89\239", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\100\238\241\69\201\103", "\42\167\20\154\152")]={LUAOBFUSACTOR_DECRYPT_STR_0("\124\251\174\77\114\40\94\231", "\65\42\158\194\34\17"),LUAOBFUSACTOR_DECRYPT_STR_0("\55\40\68\9\32\232\21\250", "\142\122\71\50\108\77\141\123")},[LUAOBFUSACTOR_DECRYPT_STR_0("\49\167\249\25\46\25\182", "\91\117\194\159\120")]=shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\17\63\31", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\21\194\78\218\220\190\30\31\219\87\199\215\174\14\12\202\88\196\216\189", "\218\119\124\175\62\168\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\241\68\200\167\241\75\207", "\164\197\144\40")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\173\241\167\142", "\214\227\144\202\235\189")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\172\138\59\32\178\65\40", "\92\141\197\231\27\112\211\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\239\158\170\222\232\236", "\177\134\159\234\195")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\153\238\57\161\220\177\255", "\169\221\139\95\192")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\135\126\56", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\235\23\234\234\185\233\46\231\247\189\231\14\214\228\168\246", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\254\239\200\222\162\59\55", "\88\92\159\131\164\188\195")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\174\47\178\78", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\245\135\26\206\45\247\202\61\196\55\254\131\24\197", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\178\208\222\174\185\205\242\166\186\204", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\0\82\119\231\255\2\31\80\237\229\11\86\117\236", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\137\127\53\14\128\109", "\84\123\236\25")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\132\174\18", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\23\217\45\36\38", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\46\236\162", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\217\47\170\135\0\219\9\163\145\1\217\44\162", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\32\36\10\121\140\250\39", "\76\140\65\72\102\27\237\153")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\67\212\16\221", "\222\42\186\118\178\183\97"), LUAOBFUSACTOR_DECRYPT_STR_0("\126\203\4\174\92\172\108\133\82\232", "\234\61\140\36"), LUAOBFUSACTOR_DECRYPT_STR_0("\0\212\183\126\0\34\214\250\87\1\32\223\182\119\11\123\157", "\111\65\189\218\18") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\74\22\48", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\163\173\170\74\125\165\175\254\113\126\175\179\249", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\194\163\235\164\225\240", "\148\157\171\205\130\201")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\213\108\32\220\227\46", "\150\67\180\20\73\177")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\29\28\76\152\20\14", "\45\237\120\122")]=shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\228\163\43", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\239\232\11\93\64\27\110\238\235\61\67\92\50\118\231\226", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\192\172\232\191\115\29\202", "\18\126\161\192\132\221")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness = Value;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\113\41\163\1", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\77\76\121\238\98\136\120\76\119", "\27\168\57\37\26\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\175\122\169\194\33\190", "\183\77\202\28\200")]=shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\136\15", "\104\119\83\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\236\46\33\72\236\249\46\47\79\250\251\44\36\79\244\255", "\35\149\152\71\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\233\78\188\56\24\235\73", "\90\121\136\34\208")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool = toggleBool;
		TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\15\88\27", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\30\33\251\215\58\57\80\45\240\217\60\54", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\240\131\20\241\178\198", "\178\161\149\229\117\132\222")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\215\220\171", "\67\232\187\189\204\193\118\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\39\184\44\52\1\228\128\32\186\35\48\7\235\136\38\176\35\48\4\227\138\41", "\143\235\78\213\64\91\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\73\136\229\114\183\142\67", "\214\237\40\228\137\16")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\226\226\220", "\198\229\131\143\185\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\132\167\100\17\170\135\69", "\19\49\236\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\50\240\182\241\182\234", "\218\158\87\150\215\132")]=shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\18\216\229", "\173\155\126\185\130\86\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\174\181\208\142\227\243\160\182\198\143", "\140\133\198\218\167\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\47\184\113\134\180\45\191", "\228\213\78\212\29")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool = toggleBool;
		TABLE_TableIndirection["VisualfovCircle%0"].Visible = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\169\77\187\0", "\139\231\44\214\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\224\30", "\118\185\143\102\62\112\209\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\117\47\231\176\25\8", "\88\60\16\73\134\197\117\124")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\230\249\207", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\119\5\32\115\206\47\119\5", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\31\214\172\178\77\29\209", "\208\44\126\186\192")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\27\169\195", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\75\31\239\228\234", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\47\170\64\90\115\177", "\197\69\74\204\33\47\31")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\67\91\128", "\231\144\47\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\203\202\91\25\48\202\13\179\223\201", "\89\210\184\186\21\120\93\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\82\112\217\123\59\178\88", "\90\209\51\28\181\25")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\122\90\235", "\223\176\27\55\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\169\207\182\33\169\221", "\213\68\219\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\229\37\230\63\201\43", "\31\107\128\67\135\74\165\95")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\228\253\74", "\209\184\136\156\45\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\219\101\60\170\6\203\112\26\171", "\216\103\168\21\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\172\79\168\122\172\64\175", "\196\24\205\35")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\138\238\3", "\102\78\235\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\43\53\72\83\49\247\22\251\60", "\84\154\78\84\36\39\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\228\80\89\16\241\245", "\101\157\129\54\56")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\165\139\172", "\25\125\201\234\203\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\231\8\43\17\38\31\109\252\58\2\6", "\115\25\148\120\99\116\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\60\181\40\67\13\62\178", "\33\108\93\217\68")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\74\172\168", "\205\187\43\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\96\8\208\236\50\39\222\236", "\191\158\18\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\129\182\186\201\215", "\207\165\163\231\215")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\245\248\81", "\16\166\153\153\54\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\160\208\103\38\44\246\192\145\193\84", "\153\178\211\160\38\84\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\10\86\39\128\10\89\32", "\75\226\107\58")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
	end});
	TABLE_TableIndirection["VisualsSectionRight%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\223\28\127", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\198\57\23\246", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\38\252\172", "\107\165\79\152\201\152\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\71\239\195\64", "\31\55\46\136\171\52")});
	TABLE_TableIndirection["VisualsSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\255\41\209\241", "\148\177\72\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\153\97\147\148\183\83\218\179\165", "\179\198\214\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\5\124\127\72\198\253", "\179\144\108\18\22\37")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\162\3\128\194\211\174", "\175\166\195\123\233")]=1000,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\199\91\72\229\227\214", "\144\143\162\61\41")]=shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\223\28\87", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\184\229\239\70\26\84\162\224\251\75\31\90", "\126\61\215\147\189\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\254\17\73\122\254\30\78", "\37\24\159\125")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS = Value;
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\167\120\71", "\34\186\198\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\29\209\82\228\249\26\200", "\162\152\104\165\61")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\227\46\191\120", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\125\228\37", "\75\237\28\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\86\200\180", "\129\188\63\172\209\79\123\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\225\224\217", "\173\32\132\134")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\26\5\234", "\173\46\123\104\143\206\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\8\54\133\5\179\8\183\22\55\154\5\174\14\186\24\59", "\97\212\125\66\234\37\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\230\176\52\11\134\247", "\126\234\131\214\85")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\217\72\93", "\47\228\181\41\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\233\205\52\51\57\28\173\233\201\22\12\62\26\191", "\127\198\156\185\91\99\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\27\192\252\165\10\58\213", "\190\149\122\172\144\199\107\89")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\19\16\229\241\190\2\12\242\245\235\34\69\220\241\240\55\28", "\158\82\101\145\158"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\82\255\17\19\116\113\236\22", "\36\16\158\98\118")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\237\25\205\254\65\204\53\234\208", "\133\160\118\163\155\56\136\71"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\216\163\124\247", "\213\150\194\17\146\214\127")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\188\176\219\6\151\182\57\22\185", "\86\123\201\196\180\38\196\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\237\223\174\226\228\205", "\207\151\136\185")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\143\41\133", "\17\200\227\72\226\20\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\177\84\15\216\218\229\224\242\160\85\20\208\206\253\234\249\188\64\28", "\159\208\33\123\183\169\145\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\91\52\58\240\91\59\61", "\86\146\58\88")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\121\202\254\207\238\218\34\245\85\207", "\154\56\191\138\160\206\137\86"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\181\77\250\138\108", "\172\230\57\149\231\28\90\225"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\171\139\215", "\187\98\202\230\178\72")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\244\176\63\10\13\228\176\36\95\34\228", "\42\65\129\196\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\79\91\219\2\11\22", "\142\98\42\61\186\119\103\98")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\62\179\3\15", "\104\88\223\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\69\226\246\193\14\232\80\227\247\205\7\235\69\229\239\200\14\236\67", "\141\36\151\130\174\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\123\206\1\134\123\193\6", "\109\228\26\162")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\127\240\233\119\160\202\91\241\233\109\227\227", "\134\62\133\157\24\128"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\60\137\31\205\59\164\213\2\152", "\182\103\197\122\185\79\209"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\171\228\99\20\93\240\130\220\55\77\8\183\210", "\40\147\231\129\23\96"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\91\249\129\64", "\188\21\152\236\37\219\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\236\35\24\73\231\48\31", "\108\32\137\87")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\233\13\163", "\57\202\136\96\198\79\153\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\34\163\169", "\152\203\67\202\199\237\199"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\74\164\10", "\134\154\35\192\111\127\21\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\35\15\30", "\178\216\70\105\106\64")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\17\42\119\243", "\224\95\75\26\150\169\181\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\253\250\104\112\164\115\6\223", "\22\107\186\184\72\36\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\184\34\79\27\235\169", "\110\135\221\68\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\55\0\231\204\178\56\232", "\91\131\86\108\139\174\211")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\42\181\18", "\61\155\75\216\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\174\188\41\24\34\216\29\169\187\50\92", "\189\100\203\210\92\56\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\84\228\42\38\95\249\6\46\92\248", "\72\79\49\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\181\63\169\200\155\52\165\138\185\63\184", "\220\232\208\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\187\227\49\57\86\181", "\193\149\222\133\80\76\58")]=Enum.KeyCode.V,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\82\75\215", "\178\166\61\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\69\239\125\198\59", "\94\155\42\136\26\170"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\51\39\178", "\213\228\95\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\190\204\145\124\47\162\192\141\121\46\189\206\133\112", "\23\74\219\162\228"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\231\74\163\57\56\229\77", "\91\89\134\38\207")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\106\239\197\51", "\71\36\142\168\86\115\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\181\115\185\5\254\117\65\218\162\121\186\17", "\41\191\193\18\223\99\222\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\35\193\43\191\167\50", "\202\203\70\167\74")]=shared.CG_DA_HOOD_CONFIG_TABLE.da_hood_staff_checker,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\13\221\52", "\17\76\97\188\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\51\216\49\54\128\67\166\134\44\220\37\54\143\74\164", "\195\229\71\185\87\80\227\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\253\12\92\237\225\255\11", "\143\128\156\96\48")]=function(toggleBool)
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
				TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\223\246\29", "\119\216\177\144\114"), LUAOBFUSACTOR_DECRYPT_STR_0("\234\14\185\102\200\105\209\77\198\45", "\34\169\73\153"), Player.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\234\197\56\203\139\172\56\191\139\202\45\203\135\201\38\169\143\222\75\202\235\173\74", "\235\202\140\107"));
			end
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\117\57\173", "\165\108\20\84\200\137\71\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\188\42\156\58\135\59\145", "\232\26\212\75"),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\76\116\233\226\59\93", "\151\87\41\18\136")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\163\203\215", "\158\59\207\170\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\86\50\93\159\95\71\39\70\139\72\82\54\79\128\78\89", "\236\47\62\83\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\168\44\55\168\131\249\162", "\226\154\201\64\91\202")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\72\16\29", "\220\161\41\125\120\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\99\165\0\189\117\165\78\146\100\171\11", "\110\220\17\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\87\120\56\22\233\54\242\172", "\199\20\25\84\122\139\87\145")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\124\37\216\186\15\255\68\12\224", "\138\39\105\189\206\123"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\32\155\40\253\248\203\250\34\71\196\109\183\174\155\172", "\159\127\103\233\77\147\153\175"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\60\215\246\175\78\202\3\245\217", "\171\103\144\132\202\32")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\43\8\251\9\30\46\237\9\45", "\108\112\79\137")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\17\195\121\45", "\85\95\162\20\72\205\97\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\248\46\217\8\245\141\244\242\46\217\30", "\173\151\157\74\188\109\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\9\52\209\222\85\214\248", "\147\68\104\88\189\188\52\181")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\134\141\223", "\176\122\232\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\82\122\107\239\192\93\53\64\234", "\142\224\21\90\47"), LUAOBFUSACTOR_DECRYPT_STR_0("\82\209\51\85\172\130\139\115\148\11\87\176\142\150\96\148\3\87\228\163\138\123\208\103\117\171\143\128\103\149", "\229\20\180\71\54\196\235"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\33\106\213\243\230\240\207\102\108\192\244\187\173\137\61\118\212\225\224\185\133\59\125\206\237\225\175\142\61\48\194\236\248\229\130\38\106\197\230\227\146\164\102\89\243\214\215\130\181\11\65\245\198\214\130\207\36\127\200\237\186\174\129\108\44\145\235\250\165\132\108\44\145\224\250\174\133\58\48\203\240\250\164", "\224\73\30\161\131\149\202"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\247\227\95\227", "\48\145\133\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\121\107\245\202\208\108\114\67\186\234", "\76\58\44\213\142\177"), LUAOBFUSACTOR_DECRYPT_STR_0("\237\37\27\33\125\207\100\38\34\56\237\33\6\46\112\139\8\19\57\125\216\48\82\9\121\139\12\29\34\124\139\7\29\41\125\216\101", "\24\171\68\114\77"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\8\83\81\130\205\23", "\205\143\125\48\50\231\190\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\226\128\84\33\224\163\247\173\206\163", "\194\161\199\116\101\129\131\191"), LUAOBFUSACTOR_DECRYPT_STR_0("\202\33\220\171\255\167\232\100\228\169\227\167\255\48\136\140\246\226\196\43\199\172\183\129\227\32\205\187\182", "\194\140\68\168\200\151"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\103\245\193\32\231\114\233\218\40\250\97\244\209\32", "\149\34\155\181\69"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\252\216\255", "\154\99\157\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\14\254\167\233\153\79\220\172\237\148\10\254\224\203\184\38", "\140\237\111\140\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\24\113\20\4\24\126\19", "\120\102\121\29")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\164\247\173\43\191\185\246\116\190\226\174\117\171\234\173\51\185\225\172\40\169\241\186\52\162\247\188\53\184\173\186\52\161\172\187\52\184\231\188\45\148\199\246\28\158\214\155\19\153\193\134\15\137\192\145\116\161\226\176\53\227\192\158\4\136\194\134\19\131\204\157\4\152\194\139\28\137\215\134\28\153\202\247\55\185\226", "\91\204\131\217"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\250\65\228\191\220\231\203\237\118\213\160\213", "\158\174\159\53\180\211\189")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\102\248\225\216\103\186\64\233\203\200\121\182", "\213\50\157\141\189\23")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\53\175\174\125\167\245\35\128", "\196\158\70\228\192\18")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\76\53\75\216\78", "\185\42\63\113\46")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\216\53\13\20\219\209", "\123\180\189\65\89")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\236\141\253\225", "\233\162\236\144\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\203\240\31\160\182\123\160\203\238\10\188\228", "\63\210\164\158\122\217\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\194\242\233", "\152\83\171\150\140\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\236\132\59\192", "\104\226\133\227\83\180\123")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\10\46\85", "\48\99\107\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\180\114\192\109\90\211\169\104\222\57", "\27\190\198\29\176\77"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\66\243\61\164\91\226", "\46\143\43\157\84\201")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\121\78\203\82\6\197", "\168\55\24\54\162\63\115")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\255\38\129\199\194\3", "\174\119\154\64\224\178")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\114\196\124", "\132\74\30\165\27\101\199\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\232\241\162\190\177\166\32\247\254\170\168\160\186\59\225\243\166\160", "\212\79\135\159\199\199\213"),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\161\185\75\94\214\27\114", "\120\25\192\213\39\60\183")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\65\50\77", "\40\120\32\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\190\45\117\239\59\40\164\41\58\140\30\41\163", "\127\90\203\89\26\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\48\169\202\28\241\201", "\157\189\85\207\171\105")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\160\212\185\1\199\162\211", "\99\166\193\184\213")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\242\165\143\171\33\133\216\178\153", "\234\182\215\224\219\108"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\198\148\181\54\212\136\180\59", "\85\160\225\219")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\16\128\202\51\207\88", "\43\60\101\227\169\86\188"), LUAOBFUSACTOR_DECRYPT_STR_0("\83\239\145\155\91\140\145\56\127\204", "\87\16\168\177\223\58\172\217"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\195\95\210", "\91\84\173\57\189"), LUAOBFUSACTOR_DECRYPT_STR_0("\51\158\76\216\161\150\56\182\3\248", "\182\112\217\108\156\192"), LUAOBFUSACTOR_DECRYPT_STR_0("\133\24\77\225\203\171\6\76\175\136\166\7\91\234\203\161\13\81\175\130\185\72\97\225\152\175\26\92", "\235\202\104\40\143"));
end);
