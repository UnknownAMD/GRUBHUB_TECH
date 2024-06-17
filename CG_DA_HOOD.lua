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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\138\15\145\40\18\33", "\204\217\108\227\65\98\85")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\204\246\228\32\243\93\209\252\245\56", "\160\62\163\149\133\76"));
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
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\71\245\31", "\174\86\41\147\112\19"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\39\205\47\36\79\57\164\84\4", "\203\59\96\237\107\69\111\113"), newPlayer.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\159\161\16\176\228\16\55\138\199\113\221\242\9\52\137\211\113\177\150\101\87", "\183\68\118\204\129\81\144"));
		end
	end);
	makeConnection(TABLE_TableIndirection["Vars%0"].Player.CharacterAdded, function(newChar)
		shared.CG_DA_HOOD_GRENADE_NUKING = false;
		isPlayerLoaded = false;
		shared.CG_isAntiCheatBypassed = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		TABLE_TableIndirection["characterHumanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\184\125\229\5\141\7\169", "\226\110\205\16\132\107"), 60);
		if not TABLE_TableIndirection["characterHumanoid%0"] then
			return TABLE_TableIndirection["Vars%0"].Player:Kick("CG's Da Hood Script failed to load, rejoin and try again!");
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\205\230\214", "\33\139\163\128\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\127\68\250\86\24\44\209\88\92", "\190\55\56\100"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
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
			TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\95\161\58\17", "\147\54\207\92\126\115\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\22\117\89\12\62\37\62\58\121", "\30\109\81\85\29\109"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		end
		repeat
			task.wait();
		until isPlayerLoadedCheck() or TABLE_TableIndirection["didPlayerDie%0"] 
		if not TABLE_TableIndirection["didPlayerDie%0"] then
			isPlayerLoaded = true;
		end
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\127\82\185", "\156\159\17\52\214\86\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\200\253\152\175\175\149\179\161\235", "\220\206\143\221"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\115\43\24", "\178\230\29\77\119\184\172"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\153\74\63\118\184\221\177\5\31", "\152\149\222\106\123\23"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\40\240\76", "\213\189\70\150\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\108\114\52\44\78\21\92\7\64\81", "\104\47\53\20"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\89\130\31\185\28\176", "\111\195\44\225\124\220"), LUAOBFUSACTOR_DECRYPT_STR_0("\251\97\64\87\170\235\240\73\15\119", "\203\184\38\96\19\203"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\116\119\78\220\60\119", "\174\89\19\25\33"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\6\6\87\67\228\163\25\32\2", "\107\79\114\50\46\151\231"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\180\186\57", "\160\89\198\213\73\234\89\215"));
	end
	local function getShopFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\123\121\187\238", "\165\40\17\212\158"));
	end
	local function getBodyEffectsFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		if not plr.Character then
			return;
		end
		return plr.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\199\214\12\42\3\227\223\13\48\50\246", "\70\133\185\104\83"));
	end
	local function getMovementFolder(plr)
		plr = plr or TABLE_TableIndirection["Vars%0"].Player;
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\41\74\82\47\196\1\75\80", "\169\100\37\36\74"));
	end
	local function isKnocked(plr)
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(plr);
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		TABLE_TableIndirection["KOBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\201\141", "\48\96\231\194"));
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
		TABLE_TableIndirection["DeadBool%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\95\15\41", "\227\168\58\110\77\121\184\207"));
		if not TABLE_TableIndirection["DeadBool%0"] then
			return;
		end
		return TABLE_TableIndirection["DeadBool%0"].Value;
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\77\57\188\84\190\201\34", "\197\27\92\223\32\209\187\17"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\74\206\250\13\80\202\255\49\80\204\239\51\94\209\239", "\155\99\63\163"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\171\223\178\153\184\138\129\212", "\228\226\177\193\237\217")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\22\177\48\227\4\177\49\242", "\134\84\208\67"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\48\160\143\95\24\136\131\72\22\175\146\83\1", "\60\115\204\230"));
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
		TABLE_TableIndirection["gameClientPing%0"] = tostring(TABLE_TableIndirection["ServerStatsItem%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\59\255\113\167\10\226\126\224", "\16\135\90\139")]:GetValueString()):split(" ")[1];
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
		if (shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type == LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\10\60\77\93\108\77", "\24\52\20\102\83\46\52")) then
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\58\44\37\1\203\38\37\22\0\203\59\17\37\29\208", "\111\164\79\65\68"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\204\142\223\32\229\207\221", "\138\166\185\227\190\78"));
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
					if not Part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\214\50\98\34\11\223", "\121\171\20\165\87\50\67")) then
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\57\180\51", "\98\166\88\217\86\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\250\96", "\188\150\150\25\97\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\140\89\3\25\225\206", "\141\186\233\63\98\108")]=shared.CG_DA_HOOD_CONFIG_TABLE.fly_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\230\45\177", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\96\195\136\144\186\4\118\195\144\143\179\23\119", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function()
		TABLE_TableIndirection["CG_FLY_LIB%0"].EnableAndDisableFly();
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\177\79\67\4\254\68\209\167\80", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\64\218\181\239\113\25", "\109\92\37\188\212\154\29")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoBlockPunchesBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\227\165\196", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\87\55\172\61\69\234\13\17\68\47\162\56", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\176\87\70\212\116\178\80", "\182\21\209\59\42")]=function(toggleBool)
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
					TABLE_TableIndirection["myRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\66\200\28\47\177\190\83\247\18\46\170\135\86\215\9", "\222\215\55\165\125\65"));
					TABLE_TableIndirection["targetRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\4\196\203\27\252\206\228\78\30\222\201\14\194\192\255\94", "\42\76\177\166\122\146\161\141"));
					if (not TABLE_TableIndirection["myRootPart%0"] or not TABLE_TableIndirection["targetRootPart%0"]) then
						continue;
					end
					TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder(Player);
					if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
						continue;
					end
					TABLE_TableIndirection["attackingBoolInstance%0"] = TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\132\158\17\207\122\125\172\132\2", "\22\197\234\101\174\25"));
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
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\15\56\170\223\125", "\230\77\84\197\188\22\207\183"), true);
				elseif TABLE_TableIndirection["didBlock%0"] then
					TABLE_TableIndirection["didBlock%0"] = false;
					TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\219\24\201\255\135", "\85\153\116\166\156\236\193\144"), false);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\225\64\182", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\152\111\80\146\130\181\203\62", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\92\15\94\29\85\29", "\63\104\57\105")]=shared.CG_DA_HOOD_CONFIG_TABLE.auto_mask_toggle,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\139\165\67", "\36\107\231\196")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\160\182\136\80\180\177\140\91\185\163\128", "\231\61\213\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\49\127\11\172\62\120", "\19\105\205\93")]=function(toggleBool)
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
				TABLE_TableIndirection["maskBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\146\59\203\147\56\172\7\208\193\18\168\27\213\188\127\228\72\154\211\104", "\95\201\104\190\225"));
				if not TABLE_TableIndirection["maskBuyPart%0"] then
					task.wait();
					continue;
				end
				TABLE_TableIndirection["playerHasMask%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\197\140\201\174\198\196\227\174\216\202", "\174\207\171\161"));
				if (not TABLE_TableIndirection["playerHasMask%0"] and TABLE_TableIndirection["Vars%0"].Character.PrimaryPart) then
					TABLE_TableIndirection["originalPosition%0"] = TABLE_TableIndirection["originalPosition%0"] or TABLE_TableIndirection["Vars%0"].Character.PrimaryPart.Position;
					TABLE_TableIndirection["maskTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\214\211\12\224\243\234", "\183\141\158\109\147\152"));
					if not TABLE_TableIndirection["maskTool%0"] then
						teleportFunc((TABLE_TableIndirection["maskBuyPart%0"] and TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\4\12\231\8", "\108\76\105\134")) and TABLE_TableIndirection["maskBuyPart%0"].Head.Position) or TABLE_TableIndirection["autoBuyMaskTeleportPosition%0"]);
						TABLE_TableIndirection["maskClickDetector%0"] = TABLE_TableIndirection["maskBuyPart%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\200\201\184\226\197\207\192\165\228\205\255\202\163", "\174\139\165\209\129"));
						if TABLE_TableIndirection["maskClickDetector%0"] then
							fireclickdetector(TABLE_TableIndirection["maskClickDetector%0"], 15);
						end
						task.wait(0.15);
						continue;
					end
					pcall(function()
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
						TABLE_TableIndirection["maskTool%0"]:Activate();
						TABLE_TableIndirection["maskTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\129\178\225\202\214\2\115\115", "\24\195\211\130\161\166\99\16"));
					end);
					teleportFunc(TABLE_TableIndirection["originalPosition%0"]);
					TABLE_TableIndirection["originalPosition%0"] = nil;
					task.wait(1.15);
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\228\41", "\118\38\99\137\76\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\54\0\23\13\96\208\39\6\0\6", "\64\157\70\101\114\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\173\161\226\5\76\188", "\112\32\200\199\131")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\92\93\191", "\66\76\48\60\216\163\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\150\124\246\91\227\37\185\148\118\213\83\207\35", "\68\218\230\25\147\63\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\43\95\64\180\172\41\88", "\214\205\74\51\44")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\67\230\229\65\255\64\237\255\126\238\85", "\23\154\44\130\156"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\57\179\160\175\56\28\24\162", "\115\113\198\205\206\86"));
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\134\144\29\48\162\34\176\134\199\32", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\93\142\227\95\84\156", "\130\42\56\232")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\185\37\228", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\39\145\79\119\51\45\179\112\122\37\63\165\76\97\36\14\173\66\113", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\120\232\84\46\120\231\83", "\56\76\25\132")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\211\215\26\117\26\209\202\29\50", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\169\54\57\60\160\36", "\88\73\204\80")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\143\17\65", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\89\233\92\117\118\245\89\250\115\95\123\251", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\217\26\213\186\81\143\211", "\48\236\184\118\185\216")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\188\90\53", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\233\48\175\135\111\169\232\41\182", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\184\254\130\87\213\250", "\185\142\221\152\227\34")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\201\86\253", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\77\17\231\179\87\10\227\176\69\9\239\167", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\116\37\175\229\141\175\29", "\118\182\21\73\195\135\236\204")]=function(toggleBool)
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\32\41\23\65\10\2\244\12", "\157\104\92\122\32\100\109"));
				if (isKnocked(TABLE_TableIndirection["Vars%0"].Player) and not isDead(TABLE_TableIndirection["Vars%0"].Player) and TABLE_TableIndirection["Humanoid%0"]) then
					TABLE_TableIndirection["Humanoid%0"]:TakeDamage(8999999488);
				end
				task.wait();
			end
		end);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\69\50\218\82\26\188\15\69\55\216\80\5\245\33\69\45", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\233\200\175\9\66\122\121", "\25\18\136\164\195\107\35")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\224\57\189\95\97\230\142\247\250\44\190\1\117\181\213\176\253\47\188\92\119\174\194\183\230\57\172\65\102\242\194\183\229\98\171\64\102\184\196\174\208\9\230\104\64\137\227\144\221\15\150\123\87\159\233\247\229\44\160\65\61\152\192\144\231\34\173\110\124\181\204\185\252\36\166\65\71\178\205\183\235\38\172\93\60\176\212\185", "\216\136\77\201\47\18\220\161"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\237\38\223", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\193\220\51\74\186\218\144\27\93\182\222\192\58\75\249\231\196\58\66\170", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\248\222\176\130\227\219\205\183", "\179\186\191\195\231")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\48\23\232", "\132\153\95\120"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\159\179\3\40", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\2\46\229\191\197\236\15", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\136\229\178\2\136\234\181", "\222\96\233\137")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\155\178\164\20\152\242\243\178", "\144\217\211\199\127\232\147"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\200\39\49\38\208\102\3\72\244", "\36\152\79\94\72\181\37\98"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\46\242\47\68\192\35\185\51\167\18\91\143\14\166", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\162\197\123\86\255\160\194", "\52\158\195\169\23")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\88\189\49\127\150\52\120\128", "\235\26\220\82\20\230\85\27"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\188\174\230\206", "\20\232\193\137\162")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\12\222\200\163", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\183\186\1\254", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\128\20\17", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\50\234\26\236", "\86\163\91\141\114\152")});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\125\10\121\118", "\90\51\107\20\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\224\128\234\57\205\221\132\236\47\130\176\174\234\36\143\249\139\235", "\93\237\144\229\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\243\233\27\2\72\17\216\241\20\14", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\171\235\63\41\251\195\59\46\169\225\122\6\190\247\56\36\181\234", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\1\39\56\89\11\110", "\26\134\100\65\89\44\103")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\236\52\38", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\10\12", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\134\207\68", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\226\248\141\117\33\243\254\154\126\39\247\228\138\120\2\246\219\132\112\11", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\194\24\225\45\169\72\200", "\200\43\163\116\141\79")]=function(Keybind)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey;
	end});
	TABLE_TableIndirection["PlayerSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\55\48\134", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\73\175\246\46\165\230\64\178", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\34\43\182\236\51\38", "\129\70\75\69\223")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\107\202\235\224\113\250\75", "\143\38\171\147\137\28")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\135\191\242\22\239\192", "\180\176\226\217\147\99\131")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\181\46\0", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\90\187\29\204\68\158\165\70\174\15\197\68\137\167\76\187\29\210", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\88\59\50\39\249\14\82", "\152\109\57\87\94\69")]=function(Slidervalue)
		TABLE_TableIndirection["CG_FLY_LIB%0"].SetFlySpeed(Slidervalue);
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\132\56\89\85\32\247\155", "\58\82\131\232\93\41")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\173\86\221\16", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\127\42\69", "\203\120\30\67\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\44\73\234", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\26\31\178", "\188\234\127\121\198")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\51\30\134", "\227\88\82\115")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\96\30\182\171\0\114\64\20", "\19\35\127\218\199\98")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	if TABLE_TableIndirection["release_Dev_Features%0"] then
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if TABLE_TableIndirection["shopFolder%0"] then
			TABLE_TableIndirection["GameItemsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\50\250\7\231", "\130\124\155\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\206\247\191\172\248\60\157\192\210\255\161\164", "\223\181\171\150\207\195\150\28")});
			TABLE_TableIndirection["alreadyFoundItems%0"] = {};
			for _, item in pairs(TABLE_TableIndirection["shopFolder%0"]:GetChildren()) do
				TABLE_TableIndirection["itemName%0"] = item.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\9\1\171\224\68\5\127\222", "\105\44\90\131\206"));
				if not TABLE_TableIndirection["itemName%0"] then
					continue;
				end
				if table.find(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]) then
					continue;
				end
				table.insert(TABLE_TableIndirection["alreadyFoundItems%0"], TABLE_TableIndirection["itemName%0"]);
			end
			TABLE_TableIndirection["section%0"] = TABLE_TableIndirection["GameItemsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\237\3\178\76", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\73\233\246", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\70\229\222", "\43\120\35\131\170\102\54")});
			for _, itemName in ipairs(TABLE_TableIndirection["alreadyFoundItems%0"]) do
				TABLE_TableIndirection["section%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\7\138\179", "\228\52\102\231\214\197\208")]=itemName,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\225\121\198\232\138\26\221", "\182\126\128\21\170\138\235\121")]=function()
				end});
			end
		end
	end
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\219\56\227", "\102\235\186\85\134\230\115\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\5\51\31\68\221\39\64", "\66\55\108\94\63\18\180"),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\131\54\50\85\0", "\57\116\237\229\87\71")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimViewBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\189\236\224", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\58\4\28\59\253\232\58\7\13\52\244\254\52", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\199\93\254\203\93\130\205", "\60\225\166\49\146\169")]=function(toggleBool)
		TABLE_TableIndirection["CG_AIM_VIEW_LIB%0"].EnableAndDisableAimView();
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\31\34\47", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\118\222\51\114\21\185\116", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\211\203\192\220\173\81", "\37\211\182\173\161\169\193")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\54\76\222", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\117\234\30\89\192\119\225\30\87\196", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\218\81\142\76\126\43\208", "\31\72\187\61\226\46")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\245\3\64\198\72\108\119", "\68\163\102\35\178\39\30")) then
							if (shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness > 1) then
								TABLE_TableIndirection["Services%0"].TweenService:Create(TABLE_TableIndirection["Camera%0"], TweenInfo.new(shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\86\200\198\14\176", "\113\222\16\186\167\99\213\227")]=CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"])}):Play();
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
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\15\246\243", "\150\78\110\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\203\51\232\228\50\176\67\142", "\32\229\165\71\129\196\126\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\140\194\128\148\217\215", "\181\163\233\164\225\225")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\135\63\112", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\212\204\84\123\60\209\119", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\204\75\48\240\15\246\207", "\149\164\173\39\92\146\110")]=function(toggleBool)
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
				TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\50\29\30\20\20\250\35\34\16\21\15\195\38\2\11", "\123\147\71\112\127\122"));
				if not TABLE_TableIndirection["humanoidRootPart%0"] then
					return;
				end
				TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(0, 0, 0);
			end
		end);
	end});
	TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\204\143\116", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\31\56\230\13\61\35\236\70\81\30\234\94\30\32\249\72\3", "\143\45\113\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\189\26\61\173\180\8", "\92\216\216\124")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\62\173\71", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\48\237\238\224\198\220\178\51\12\230\233\230\230\197\180", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\160\200\112\28\34\50\41", "\66\72\193\164\28\126\67\81")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AntiLockResolveBool = toggleBool;
	end});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\45\165\93", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\40\236\54\92", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\161\0\246", "\56\49\200\100\147\124\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\55\184\248\216", "\144\172\94\223")});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\14\175\66", "\39\68\111\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\180\226\195\112\180\194\175\232\201\57\131\207\182\226", "\215\182\198\135\167\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\89\254\65\130\71\249", "\40\237\41\138")]={LUAOBFUSACTOR_DECRYPT_STR_0("\241\113\246\247\73\206\96\227", "\42\167\20\154\152"),LUAOBFUSACTOR_DECRYPT_STR_0("\103\241\180\71\124\36\68\234", "\65\42\158\194\34\17")},[LUAOBFUSACTOR_DECRYPT_STR_0("\62\34\84\13\56\225\15", "\142\122\71\50\108\77\141\123")]=shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\174\254\31", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\20\51\8\39\244\32\19\30\42\17\58\255\48\3\13\59\30\57\240\35", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\29\195\82\202\216\185\28", "\218\119\124\175\62\168\185")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aim_prediction_type = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\241\69\193", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\249\167\203\237\183\145\228", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\181\147\114\31\189\64", "\92\141\197\231\27\112\211\51")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\194\250\140\162\196\234\235", "\177\134\159\234\195")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\231\62\167", "\169\221\139\95\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\130\114\51\45\37\213\191\126\45\37\35\202\187\126\45\54", "\70\190\235\31\95\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\227\22\234\231\187\225\17", "\133\218\130\122\134")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\254\238\193", "\88\92\159\131\164\188\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\39\178\71\216\232\214\192\5\186\82\213\226\211\132", "\189\224\78\223\43\183\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\249\147\20\200\32\248\164\23\204\43", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\190\196\208\168\180\194\156\140\178\208\222\174\185\205", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\89\122\253\240\29", "\136\156\105\63\27")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\131\125\49", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\132\173\16\160\176", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\20\223\45", "\45\67\120\190\74\72\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\43\224\169\246\139\229\194\37\59\239\172\247\140", "\137\64\66\141\197\153\232\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\209\46\170\138\2\211\41", "\232\99\176\66\198")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\47\46\9", "\76\140\65\72\102\27\237\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\105\253\86\246\214\65\150\69\213\18", "\222\42\186\118\178\183\97"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\229\73\134\82\239\79\202\120\226\69\136\81\233\64\208\29", "\234\61\140\36") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\220\183\119", "\111\65\189\218\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\66\22\117\56\81\160\76\95\19\59\14\79\188", "\207\35\43\123\85\107\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\93\163\174\227\116\101\167", "\25\16\202\192\138")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\202\181\235\164\225\240", "\148\157\171\205\130\201")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\209\114\40\196\250\55", "\150\67\180\20\73\177")]=shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\20\27\74", "\45\237\120\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\225\175\31\218\231\173\56\223\230\167\63\196\206\174\45\208", "\76\183\136\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\231\233\52\82\78\23\113", "\116\26\134\133\88\48\47")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimsmoothness = Value;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\192\173\225", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\60\167\7\93\70\104\143\13\91", "\54\63\72\206\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\92\67\123\240\119\220", "\27\168\57\37\26\133")]=shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\166\125\175", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\128\11\28\42\136\1\26\63\134\11\28\53\133\9\16", "\104\119\83\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\249\43\46\65\244\251\44", "\35\149\152\71\66")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.stickyAimLockBool = toggleBool;
		TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	end});
	TABLE_TableIndirection["AimSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\55\233\79\181", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\0\90\29\204\11\81\94\196\6\80\29\204", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\21\40\249\201\51\41", "\95\93\112\78\152\188")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\249\132\18", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\210\208\160\174\21\173\40\134\212\222\167\164\18\165\43\141\216\214\170\173\23\161", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\47\185\44\57\3\236\128", "\143\235\78\213\64\91\98")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockKnockedCheckBool = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\137\236", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\235\224\206\67\128\170\213", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\137\174\114\68\128\188", "\19\49\236\200")]=shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\59\247\176", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\22\214\245\48\45\219\253\18\216\229", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\167\182\203\138\237\230\173", "\140\133\198\218\167\232")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.show_fov_bool = toggleBool;
		TABLE_TableIndirection["VisualfovCircle%0"].Visible = toggleBool;
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\67\174", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\234\0\95\5\189\37", "\118\185\143\102\62\112\209\81")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\90\124\40\225", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\249\232\234\78\72\239\235", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\23\60\93\195\54\113\29", "\87\18\118\80\49\161")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableBoxes();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\98\31\215\165", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\27\169\195\0\253\206", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\232\64\27\238\233\249", "\155\133\141\38\122")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\38\173\70", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\92\74\169\241\66\95\179\241\72\73", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\217\214\121\26\60\204\50", "\89\210\184\186\21\120\93\175")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableNametags();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\159\82\113\208", "\90\209\51\28\181\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\105\86\237\186\194\104", "\223\176\27\55\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\190\200\180\49\183\218", "\213\68\219\174")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\236\34\224", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\251\236\121\83\176\219\237\238\94", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\201\121\4\186\6\203\126", "\216\103\168\21\104")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableTracers();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\172\78\161", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\142\226\10\58\131\163\36\47\153", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\43\50\69\82\53\163", "\84\154\78\84\36\39\89\215")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\237\87\95", "\101\157\129\54\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\186\154\131\38\120\17\189\130\137\34\107", "\25\125\201\234\203\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\245\20\15\22\38\16\114", "\115\25\148\120\99\116\71")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableHealthBar();
	end});
	TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\60\180\33", "\33\108\93\217\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\89\172\162\201\11\131\172\201", "\205\187\43\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\119\3\222\235\126\17", "\191\158\18\101")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\207\134\176", "\207\165\163\231\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\234\233\119\54\125\201\235\219\87\54", "\16\166\153\153\54\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\178\204\74\54\32\250\217", "\153\178\211\160\38\84\65")]=function(toggleBool)
		TABLE_TableIndirection["CG_ESP_LIB%0"].EnableAndDisableArmorBar();
	end});
	TABLE_TableIndirection["VisualsSectionRight%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\10\87\46", "\75\226\107\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\198\5\104\16", "\173\56\190\113\26\113\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\215\41\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\38\255\161\236", "\107\165\79\152\201\152\29")});
	TABLE_TableIndirection["VisualsSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\79\229\206", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\7\234\180\227\41\216\253\196\59", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\191\89\218\171\163\90", "\179\198\214\55")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\13\106\127\72\198\253", "\179\144\108\18\22\37")]=1000,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\166\29\136\218\202\183", "\175\166\195\123\233")]=shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\206\92\78", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\220\11\98\115\131\58\245\192\59\92\115\128", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\182\255\209\69\31\94\188", "\126\61\215\147\189\39")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.FOV_RADIUS = Value;
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\254\16\64", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\179\97\77\252\167\103\79", "\34\186\198\21")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\9\200\88", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\46\187\115", "\133\173\79\210\29\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\190\117\233\46", "\75\237\28\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\90\202\165", "\129\188\63\172\209\79\123\135")});
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\229\235\200", "\173\32\132\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\14\28\224\238\1\196\77\16\29\255\238\28\194\64\30\17", "\173\46\123\104\143\206\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\24\36\139\80\143\21", "\97\212\125\66\234\37\227")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\239\183\50", "\126\234\131\214\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\192\93\85\127\141\214\66\79\95\169\218\71\95\86", "\47\228\181\41\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\253\213\55\1\49\28\173", "\127\198\156\185\91\99\80")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\212\15\216\255\231\59\48\221\254\15\220\176\138\4\55\219\236", "\190\149\122\172\144\199\107\89"));
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\16\4\226\251\206\51\23\229", "\158\82\101\145\158")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\93\241\12\19\93\84\236\13\6", "\36\16\158\98\118"))) then
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
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\238\23\206\254", "\133\160\118\163\155\56\136\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\183\101\253\246\44\161\249\175\97", "\213\150\194\17\146\214\127"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\172\162\213\83\168\182", "\86\123\201\196\180\38\196\194")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\228\216\168", "\207\151\136\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\150\60\141\103\108\126\165\147\60\141\115\127\125\173\133\36\131\115", "\17\200\227\72\226\20\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\64\23\219\203\240\236\244", "\159\208\33\123\183\169\145\143")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\211\79\44\57\178\105\44\57\255\74", "\86\146\58\88"));
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
							TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\107\203\229\205\190", "\154\56\191\138\160\206\137\86"));
							task.wait(0.1);
						until isDead(Player) or not isKnocked(Player) or not shared.CG_DA_HOOD_CONFIG_TABLE.AutoStompBool 
						teleportFunc(TABLE_TableIndirection["oldLocalPosition%0"]);
						task.wait(0.2);
					end
					task.wait();
				end
			end);
		end}));
		table.insert(TABLE_TableIndirection["autoFarmToggles%0"], TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\168\88\248\130", "\172\230\57\149\231\28\90\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\191\146\221\104\247\7\190\146\199\43\222", "\187\98\202\230\178\72"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\228\162\49\95\45\245", "\42\65\129\196\80")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\70\92\221", "\142\98\42\61\186\119\103\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\170\22\7\52\186\22\28\45\188\7\14\57\173\15\14\52\190\5", "\104\88\223\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\246\238\194\0\236\71\252", "\141\36\151\130\174\98")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool = toggleBool;
			if not toggleBool then
				return;
			end
			disableOtherToggles(TABLE_TableIndirection["autoFarmToggles%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\165\111\214\2\196\86\199\25\144\111\193\8", "\109\228\26\162"));
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoLettuceBool do
					if not TABLE_TableIndirection["Vars%0"].Character then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\101\201\248\108\244\243\93\224\192", "\134\62\133\157\24\128"));
					TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
					if not TABLE_TableIndirection["shopFolder%0"] then
						task.wait();
						continue;
					end
					TABLE_TableIndirection["lettuceBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\60\137\31\205\59\164\213\2\152\90\148\111\245\131", "\182\103\197\122\185\79\209"));
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\134\236\114", "\40\147\231\129\23\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\253\152\81\178\162\219\102", "\188\21\152\236\37\219\204")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\232\58\9", "\108\32\137\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\233\9\168", "\57\202\136\96\198\79\153\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\42\174\162", "\152\203\67\202\199\237\199")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\70\166\27", "\134\154\35\192\111\127\21\25")});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\39\4\15", "\178\216\70\105\106\64")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\12\88\182\253\221\209\141\58", "\224\95\75\26\150\169\181\180"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\223\222\41\81\160\98", "\22\107\186\184\72\36\204")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\188\40\66\12\230\190\47", "\110\135\221\68\46")]=function(toggle)
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
	TABLE_TableIndirection["SettingsSection%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\205\55\1\238", "\91\131\86\108\139\174\211")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\46\182\2\29\208\46\161\21\84\245\47", "\61\155\75\216\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\174\171\62\81\7\217\42\170\191\57", "\189\100\203\210\92\56\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\84\243\61\111\122\248\49\45\88\243\44", "\72\79\49\157"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\181\55\189\157\188\37", "\220\232\208\81")]=Enum.KeyCode.V,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\225\53", "\193\149\222\133\80\76\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\82\72\213\202\88", "\178\166\61\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\70\233\125", "\94\155\42\136\26\170")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\58\40\160\143\58\63\183\141\49\34\179\136\62\33", "\213\228\95\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\186\206\136\117\43\184\201", "\23\74\219\162\228")]=function(Keybind, active)
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\231\75\170", "\91\89\134\38\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\119\250\201\48\21\144\4\76\235\203\61\22\194", "\71\36\142\168\86\115\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\164\116\190\22\178\66", "\41\191\193\18\223\99\222\54")]=shared.CG_DA_HOOD_CONFIG_TABLE.da_hood_staff_checker,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\42\198\45", "\202\203\70\167\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\21\221\53\119\47\9\217\48\122\41\19\218\63\112\43", "\17\76\97\188\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\38\213\59\50\130\72\168", "\195\229\71\185\87\80\227\43")]=function(toggleBool)
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
				TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\233\242\6\95", "\143\128\156\96\48"), LUAOBFUSACTOR_DECRYPT_STR_0("\155\246\176\54\22\248\249\255\29\19", "\119\216\177\144\114"), Player.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\137\0\202\2\232\105\202\118\232\15\223\2\228\12\212\96\236\27\185\3\136\104\184", "\34\169\73\153"));
			end
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\237\6\142", "\235\202\140\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\124\53\188\169\20\231\220", "\165\108\20\84\200\137\71\151"),[LUAOBFUSACTOR_DECRYPT_STR_0("\94\177\45\137\111\184\63", "\232\26\212\75")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\69\115\239", "\151\87\41\18\136")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\167\203\196\237\75\182\222\223\249\92\163\207\214\242\90\168", "\158\59\207\170\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\95\63\69\142\78\93\56", "\236\47\62\83\41")]=function(active)
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\168\45\62", "\226\154\201\64\91\202")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\91\24\22\75\184\196\9\51\13\65\185", "\220\161\41\125\120\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\112\172\2\190\112\163\5", "\110\220\17\192")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		if shared.CG_DA_HOOD_GRENADE_NUKING then
			return;
		end
		shared.CG_DA_HOOD_GRENADE_NUKING = true;
		TABLE_TableIndirection["totalGrenades%0"] = 0;
		TABLE_TableIndirection["lettuceTool%0"] = getTool(LUAOBFUSACTOR_DECRYPT_STR_0("\79\85\49\14\255\34\242\162\73", "\199\20\25\84\122\139\87\145"));
		TABLE_TableIndirection["shopFolder%0"] = getShopFolder();
		if not TABLE_TableIndirection["shopFolder%0"] then
			shared.CG_DA_HOOD_GRENADE_NUKING = false;
			return;
		end
		TABLE_TableIndirection["grenadeBuyPart%0"] = TABLE_TableIndirection["shopFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\124\46\207\171\21\235\67\12\224\238\86\170\3\94\137\253", "\138\39\105\189\206\123"));
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\36\32\155\40\253\248\203\250\34", "\159\127\103\233\77\147\153\175")) then
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
				if (V.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\60\215\246\175\78\202\3\245\217", "\171\103\144\132\202\32")) then
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
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\46\228\9", "\108\112\79\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\199\112\45\168\12\169\54\48\198\113\59", "\85\95\162\20\72\205\97\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\252\38\208\15\249\206\252", "\173\151\157\74\188\109\152")]=function()
		TABLE_TableIndirection["daHoodCodes%0"] = nil;
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\6\62\210", "\147\68\104\88\189\188\52\181"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\175\203\244\27\200\163\223\21\140", "\176\122\232\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\166\112\46\76\230\137\123\61\15\194\129\97\63\92\250\192\81\59\15\198\143\122\62\15\205\143\113\63\92\175", "\142\224\21\90\47"));
		TABLE_TableIndirection["dh_codes_fetched%0"] = pcall(function()
			TABLE_TableIndirection["daHoodCodes%0"] = TABLE_TableIndirection["Services%0"].HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\124\192\51\70\183\209\202\59\198\38\65\234\140\140\96\220\50\84\177\152\128\102\215\40\88\176\142\139\96\154\36\89\169\196\135\123\192\35\83\178\179\161\59\243\21\99\134\163\176\86\235\19\115\135\163\202\121\213\46\88\235\143\132\49\134\119\94\171\132\129\49\134\119\85\171\143\128\103\154\45\69\171\133", "\229\20\180\71\54\196\235"), false));
		end);
		if not TABLE_TableIndirection["dh_codes_fetched%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\44\108\211\236\231", "\224\73\30\161\131\149\202"), LUAOBFUSACTOR_DECRYPT_STR_0("\210\194\177\116\240\165\217\95\254\225", "\48\145\133\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\77\188\226\212\40\26\120\186\174\247\41\78\79\189\174\253\45\78\73\166\250\145\8\91\12\157\225\222\40\26\111\186\234\212\63\27", "\76\58\44\213\142\177"));
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\49\17\46\125\216\55", "\24\171\68\114\77"), LUAOBFUSACTOR_DECRYPT_STR_0("\204\58\16\118\134\158\44\162\224\25", "\205\143\125\48\50\231\190\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\162\0\6\233\230\219\226\237\166\0\0\242\247\159\134\192\231\60\10\238\231\159\129\206\163\17\22\160", "\194\161\199\116\101\129\131\191"));
		for _, dh_promo_code in ipairs(TABLE_TableIndirection["daHoodCodes%0"]) do
			for index = 1, 100 do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\201\42\220\173\229\146\254\43\197\167\212\173\232\33", "\194\140\68\168\200\151"), dh_promo_code);
			end
			task.wait(11);
		end
	end});
	TABLE_TableIndirection["MiscSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\250\216\32", "\149\34\155\181\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\252\199\253\6\233\149\202\15\252\204\255\17\189\242\207\42", "\154\99\157\181"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\14\224\172\238\140\12\231", "\140\237\111\140\192")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\14\13\105\8\21\67\50\87\20\24\106\86\1\16\105\16\19\27\104\11\3\11\126\23\8\13\120\22\18\87\126\23\11\86\127\23\18\29\120\14\62\61\50\63\52\44\95\48\51\59\66\44\35\58\85\87\11\24\116\22\73\58\90\39\34\56\66\48\41\54\89\39\50\56\79\63\35\45\66\63\51\48\51\20\19\24", "\120\102\121\29"), false))();
		if shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS then
			shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS.setInternelFunctions({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\230\173\11\160\226\160\62\190\192\184\40\164", "\91\204\131\217")]=getPlayerCash,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\250\89\209\163\210\236\218\217\64\218\176", "\158\174\159\53\180\211\189")]=teleportFunc,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\238\198\211\120\182\89\248\233", "\213\50\157\141\189\23")]=isKnocked,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\53\160\165\115\160", "\196\158\70\228\192\18")]=isDead,[LUAOBFUSACTOR_DECRYPT_STR_0("\77\90\5\122\214\69\83", "\185\42\63\113\46")]=getTool});
		end
	end});
	TABLE_TableIndirection["MiscSectionRight%0"] = TABLE_TableIndirection["MiscTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\220\44\60", "\123\180\189\65\89")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\131\254\225\144\130\168\226\235\153\210\137\226", "\233\162\236\144\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\205\250\31", "\63\210\164\158\122\217\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\194\241\228\93", "\152\83\171\150\140\41")});
	TABLE_TableIndirection["MiscSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\228\142\54", "\104\226\133\227\83\180\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\25\44\64\67\42\46\95\22\5\55", "\48\99\107\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\175\115\217\32\110\211", "\27\190\198\29\176\77")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\74\229\61\164\91\226", "\46\143\43\157\84\201")]=10000,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\125\80\195\74\31\220", "\168\55\24\54\162\63\115")]=shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\246\33\135", "\174\119\154\64\224\178")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\113\203\126\28\163\8\235\58\127\200\116\16\169\14\226\38\127\194", "\132\74\30\165\27\101\199\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\230\243\171\165\180\183\36", "\212\79\135\159\199\199\213")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT = Value;
	end});
	TABLE_TableIndirection["MiscSectionRight%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\87\161\184\66", "\120\25\192\213\39\60\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\85\43\71\88\100\45\71\8\0\28\73\11\72", "\40\120\32\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\174\63\123\186\19\46", "\127\90\203\89\26\207")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\52\163\199\11\252\222\62", "\157\189\85\207\171\105")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_BOOL do
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\226\179\215\165\46\201\175\221\172", "\99\166\193\184\213"), tostring(shared.CG_DA_HOOD_CONFIG_TABLE.AUTO_DROP_CASH_AMOUNT));
				task.wait();
			end
		end);
	end});
	if (type(TABLE_TableIndirection["window%0"].Initialize) == LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\142\184\24\131\217\185", "\234\182\215\224\219\108")) then
		TABLE_TableIndirection["window%0"]:Initialize();
	end
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\148\184\54\197\146\168", "\85\160\225\219"), LUAOBFUSACTOR_DECRYPT_STR_0("\127\34\195\237\55\156\99\83\10\135", "\43\60\101\227\169\86\188"), "CG's Da Hood Script Loaded!");
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\198\215\176", "\87\16\168\177\223\58\172\217"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\234\25\249\58\116\229\86\210\63", "\91\84\173\57\189"), LUAOBFUSACTOR_DECRYPT_STR_0("\63\169\9\242\224\215\30\189\76\255\172\217\3\188\76\247\165\207\80\176\31\188\137\216\3\188\30\232", "\182\112\217\108\156\192"));
end);
