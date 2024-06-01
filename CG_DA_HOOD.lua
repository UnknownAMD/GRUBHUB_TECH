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
	TABLE_TableIndirection["PlayerSection%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\41\82\61", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\197\231\82", "\60\180\164\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\87\1\44", "\114\56\62\101\73\71\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\236\221\208", "\164\216\137\187")});
	TABLE_TableIndirection["PlayerSectionRight%0"] = TABLE_TableIndirection["PlayerTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\231\60\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\22\150\212\171", "\202\88\110\226\166"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\6\134\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\57\181\48\90", "\73\113\80\210\88\46\87")});
	TABLE_TableIndirection["AimSectionLeft%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\175\45\192\23", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\236\177\190", "\199\122\141\216\208\204\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\212\20\245", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\129\185\88", "\112\69\228\223\44\100\232\113")});
	TABLE_TableIndirection["AimSectionRight%0"] = TABLE_TableIndirection["AimTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\250\30\10\214", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\29\75\84\229", "\128\236\101\63\38\132\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\160\21\65", "\175\204\201\113\36\214\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\197\50\212\16", "\100\39\172\85\188")});
	TABLE_TableIndirection["VisualsSectionLeft%0"] = TABLE_TableIndirection["VisualsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\121\180\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\196\196\51", "\93\134\165\173"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\251\197\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\75\118\30", "\106\133\46\16")});
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\109\48\123\245\86\76\24\7\102\242\64", "\32\56\64\19\156\58")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\216\237\95\86\254\192\124\199\234\82", "\224\58\168\133\54\58\146")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\89\92\243\125\143\139\7\25\113\94\243\111", "\107\57\54\43\157\21\230\231")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\132\6\251\177\213\195\215\203\55\250\182\216", "\175\187\235\113\149\217\188")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\174\143\71", "\24\92\207\225\44\131\25")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\208\176\67\20\113", "\29\43\179\216\44\123")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\208\44\69\169\216\50\85\253\251\33\95\184", "\44\221\185\64")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\232\68\86\112\4\167\123\75\114\21\238\71\81", "\19\97\135\40\63")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\83\60\63\111\23\167\72\61\62\60\34", "\81\206\60\83\91\79")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\163\223\124\42\131\126\176\65\185\213", "\196\46\203\176\18\79\163\45")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\62\60\43\227\230\182\37\62\61\40\238\237", "\143\216\66\30\126\68\155")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\77\255\205\166\214\245\184\205", "\129\202\168\109\171\165\195\183")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\89\119\251\223\7\239\44\87", "\134\66\56\87\184\190\116")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\56\14\179\13\232\45\32\62", "\85\92\81\105\219\121\139\65")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\161\85\64\84\208\232\160\85", "\191\157\211\48\37\28")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\247\26\245\24", "\90\191\127\148\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\77\151\62\18\106\179\33\5\107\136", "\119\24\231\78"),LUAOBFUSACTOR_DECRYPT_STR_0("\174\34\178\79\206\116\30\144\62\170", "\113\226\77\197\42\188\32"),LUAOBFUSACTOR_DECRYPT_STR_0("\18\3\249\180\52\25\253\177\8\25\251\161\10\23\230\161", "\213\90\118\148")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\117\33\160\100\72\90\34\144\126", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\94\138\152\198\39\190\176\30\89\151\203\148\43\172\252\80\114\130\203\174\33\162\244\92\22\144\132\139\43\237\246\21\87\151\158\148\43\190\176\29\87\154\203\136\33\185\176\7\89\145\128\199", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\41\6\232\217\85\180\14\0\238\224\87\178\49\10\238\228\84\159\39\14\248", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\134\234\57\71\137\228\109\72\136\241\109\94\139\226\52\75\149\163\57\65\199\239\34\79\131\163\36\64\198", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\183\89\191\70\154\79\187\80\179\68\147\90", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\48\177\244\162\5\86\65\22\53\173\245\241", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\149\32\173\186\174\63\37\139\17\162\189\180\21\35\137\49\184", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\85\99\128\243\155\102\72\121\130\190\159\125\1\117\156\238\138\97\82\55\132\240\159\123\1\116\141\251\138\102\0", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\163\209\186\67\169\196\191\113\180\213\178\115\178\196\186\68", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\127\104\64\155\76\232\225\112\104\9\217\86\240\229\98\111\76\223\14", "\128\132\17\28\41\187\47")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\49\62\7\35\88\19\33", "\61\97\82\102\90")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\156\34\170\82\194\69\13", "\105\204\78\203\43\167\55\126")),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\175\51\18\26\7\198\69\160\174\16\10\28\22\198\86\160", "\49\197\202\67\126\115\100\167")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\5\94\207\37\137\85\95\35\94\219\26\148\89\76\54\92\218", "\62\87\59\191\73\224\54")),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\11\232\221\242\3\246\224\233\18\239\221\202\3\244\200\224\7\232", "\169\135\98\154")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\253\126\54\64\232\50\196\226\121\52\65\233\30\201\197\118\35\81\239", "\168\171\23\68\52\157\83"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\217\112\252\163\0\59\130\250\101", "\231\148\17\149\205\69\77"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\176\171\198\226\82\237", "\159\224\199\167\155\55")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\250\44\250\242\250\59\218\227", "\178\151\147\92")]=nil};
	shared.CG_isAntiCheatBypassed = shared.CG_isAntiCheatBypassed or false;
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\243\88\59\62\67\121\135\223\67\61\30", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\32\219\79\35\2\218\88\33\28\208\72\37\34\195\94\8\33\218\87", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\222\106\86\178\60\212\72\105\191\42\198\126\85\164\43", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\235\109\252\207\199\190\235\126\215\230\196\187", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\221\38\245\223\57\255\73\244\216\31\245\225\53\229\96\238\199\62", "\34\129\168\82\154\143\80\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\162\54\14\76\99\136\134\160\60\63\71\73\142\137\183", "\233\229\210\83\107\40\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\77\62\210\12\207\69\1\198\0\196\70\31\215\6\211\77\25\211\28", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\36\106\203\250\206\177\17\205\35\120\220\247\199\166\17\202\34\118\210", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\24\219\206\10\23\220\220\27\0\219\222\17\19", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\222\53\193\90\178\240\221\0\220\64\176\201\194\56\218\77\188", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\189\134\222\213\54\191\169\253\213\57", "\186\85\212\235\146")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\132\16\255\44\226\76\246\128\4\249\60\250\104\195\147\2", "\56\162\225\118\158\89\142")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\93\12\205\163\45\219\87\49\193\189\37\221\72\53\193\189\54", "\184\60\101\160\207\66")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\16\139\113\140\35\135\120\181\50\150\117\179\63\177\104\174\52\140\123\168\57\180\125\176\36\135", "\220\81\226\28")]=25};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\62\212\144\240\239\211\3\217\131\248\239\244\22\199\148\242\233\194", "\167\115\181\226\155\138")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
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
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\209\33\245\85\107\101", "\166\130\66\135\60\27\17")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\104\69\205\116\60\119\73\220\124\32\80", "\80\36\42\174\21"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\126\17\37\110\96\17\58\127", "\26\46\112\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\54\166\117\177\176\76\176\139\44\164\96\143\190\87\160", "\212\217\67\203\20\223\223\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\159\167\223", "\178\218\237\200")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\186", "\176\214\213\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\162\185\192\154\95\94\213\185\162\213\171\94\84\241\163\162", "\57\148\205\214\180\200\54")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\34\252\39\32\88\19\240\48", "\22\114\157\85\84")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\196\4\193\79\194\167\214\216\28", "\200\164\171\115\164\61\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\12\72", "\227\222\148\99\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\93\93\226\203\58\85\115\226\237\50\81\90\251\252\61\70", "\153\83\50\50\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\121", "\45\61\22\19\124\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\27\10\253\22\88\176\209\32\4\242\35\100\173\192\17\5\248\7\126\173", "\217\161\114\109\149\98\16")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\34\33\42\104\146\117\31\37", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\8\213\188\236\229\173\33\4\192\152\253\215", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\245\18\246", "\122\173\135\125\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\200\7\177\43\25\193\148\243\9\190\30\37\220\133\194\8\180\58\63\220", "\168\228\161\96\217\95\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\222", "\55\187\177\78\60\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\199\88\227\82\228\142\40\203\109\226\65\238\148\57\207\92\227\75\202\142\57", "\224\77\174\63\139\38\175")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\180\64\74\58\170\64\85\43", "\78\228\33\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\119\181\11\145\226\113\165\6\151\226\123\181", "\229\174\30\210\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\137\92", "\89\123\141\230\49\141\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\120\241\4\4\97\253\116\243\62\25\77\210\101\226\13\19\66\254\116\248\24", "\42\147\17\150\108\112"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\169", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\0\160\94\169\197\25\162\14\12\149\95\186\197\3\189\3\10\175\91\184\234\3", "\201\98\105\199\54\221\132\119")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\137\13\145\53\44\52\161\188", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\202\242\237\56\230\81\204\225", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\178\2\34", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\47\7\200\225\21\40\11\204\240\6\47\7\225\225\32\39\3\200\248\49\40\20", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\9", "\141\88\102\109")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\164\82\216\126\19\51\82", "\161\211\51\170\16\122\93\53"), LUAOBFUSACTOR_DECRYPT_STR_0("\216\137\242\12\250\238\154\39\244\170", "\72\155\206\210"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\79\120\34\10\121\86\123\47\23\99\94\107\45\27\103\72", "\83\38\26\52\110")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\122\22\36\77\72\22\36\77", "\38\56\119\71"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\200\223\80\217\43\83\206", "\54\147\143\56\182\69"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\237\177\247\70\209\211\188", "\191\182\225\159\41"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\3\7\37\84\133\136\203\47", "\162\75\114\72\53\235\231"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\50\66\237", "\98\236\92\36\130\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\62\76\158\68\232\157\63\171\29", "\80\196\121\108\218\37\200\213"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\125\4\112", "\234\96\19\98\31\43\110"), LUAOBFUSACTOR_DECRYPT_STR_0("\37\56\18\227\173\50\163\9\16\86", "\235\102\127\50\167\204\18"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\89\175\243\44", "\78\48\193\149\67\36"), LUAOBFUSACTOR_DECRYPT_STR_0("\19\57\192\60\64\112\54\143\23\69", "\33\80\126\224\120"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\166\5\203", "\60\140\200\99\164"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\211\68\2\163\199\220\11\41\166", "\194\231\148\100\70"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\66\199\172", "\168\38\44\161\195\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\219\194\82\49\168\158\25\143\248", "\118\224\156\226\22\80\136\214"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\81\251\90\131\71\253\74", "\224\34\142\57"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\128\133\249\114\177\117\1\209\163", "\110\190\199\165\189\19\145\61"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\243\236\121\231\153\194\222", "\167\186\139\23\136\235"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\161\141\0\9\145\154\2\10", "\109\122\213\232"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\202\229\173\32", "\80\142\151\194"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\33\201\115\85\38\192\113\73\0\210\100", "\44\99\166\23"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\81\248\63\51\62\161\114\227", "\196\28\151\73\86\83"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\197\6\42\4\141\74\75", "\22\147\99\73\112\226\56\120"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\144\96\239\244\131\183\124\230\199\130\183\97\210\244\159\172", "\237\216\21\130\149"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\171\64\76\75\177\199\93\135", "\62\226\46\63\63\208\169")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\24\70\134\47\12\61\74", "\62\133\121\53\227\127\109\79"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\51\24\59\246\221\138\167\4\17\49\225\217\188", "\194\112\116\82\149\182\206"));
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
		TABLE_TableIndirection["targetVelocity%0"] = targetPlr.Character.PrimaryPart.Velocity;
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\189\65\25\206\237\7\61\154\67\23\212\210\15\43\188", "\110\89\200\44\120\160\130"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\131\214\70\71\77\69\50\73", "\45\203\163\43\38\35\42\91"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\250\144\209\34\137\166\93\214\183\211\44\147\153\85\192\145", "\52\178\229\188\67\231\201"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\9\84\93\5\249\83\42\37\115\95\11\227\108\34\51\85", "\67\65\33\48\100\151\60"));
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
	TABLE_TableIndirection["PlayerSpeedMacroToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\241\230\163\221", "\147\191\135\206\184")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\56\163\196\220\19\159\133\43\180\206", "\210\228\72\198\161\184\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\76\245\17\102\194\34", "\174\86\41\147\112\19")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\93\12\140\12", "\203\59\96\237\107\69\111\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\6\169\228\53\221\214\39\4\163\199\61\241\208", "\183\68\118\204\129\81\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\172\124\232\9\131\13\166", "\226\110\205\16\132\107")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\204\228\192\119\238\207\239\218\72\255\218", "\33\139\163\128\185"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\127\77\9\223\89\87\13\218", "\190\55\56\100"));
				if not TABLE_TableIndirection["Humanoid%0"] then
					task.wait();
					continue;
				end
				if shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey then
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
			pcall(function()
				TABLE_TableIndirection["bodyVelocity%0"]:Destroy();
			end);
		end);
	end});
	TABLE_TableIndirection["PlayerSpeedMacroKeyBind%0"] = TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\49\27", "\147\54\207\92\126\115\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\62\33\48\120\9\62\32\48\54\111\2\62\38\52\44\127\4\112\9", "\30\109\81\85\29\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\116\77\180\63\208\248\209\112\89\179", "\156\159\17\52\214\86\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\255\184\185\170\175\144\189\173\253\178\252\133\234\164\190\167\225\185", "\220\206\143\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\120\43\22\205\192\198", "\178\230\29\77\119\184\172")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\14\30", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\41\250\71", "\213\189\70\150\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\73\89\117\15", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\92\132\25\184\34\162\79\147\19\151\10\186\78\136\18\184\41\175\77\134", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\71\12\127\169\170\219\77", "\203\184\38\96\19\203")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not active;
	end});
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\114\116\68", "\174\89\19\25\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\29\18\125\251\136\28\43\29\69\64", "\107\79\114\50\46\151\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\163\179\40\159\53\163", "\160\89\198\213\73\234\89\215")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\78\125\181\249", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\235\214\56\63\39\252\220\26\0\42\234\206\12\60\49\235\255\4\50\33", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\68\72\38\203\5\70\79", "\169\100\37\36\74")]=function(toggleBool)
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\134\175\85", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\84\26\36\89\254\163\138\198\93", "\227\168\58\110\77\121\184\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\57\185\65\164\215\101", "\197\27\92\223\32\209\187\17")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\83\194\252", "\155\99\63\163")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\223\181\132\159\136\139\223\166\171\181\133\133", "\228\226\177\193\237\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\177\47\234\54\177\32\237", "\134\84\208\67")]=function(toggleBool)
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
	if isRealDaHoodGame() then
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\173\139\89", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\52\231\127\228\49\171\81\233\51\230\113\243\51\228\126\244", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\117\10\63\76\85\123\95", "\24\52\20\102\83\46\52")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\204\59\53\52\28\158\96\110\54\14\211\97\38\45\27\204\58\35\49\28\193\61\34\43\1\208\42\47\48\65\199\32\44\107\13\203\59\37\33\25\252\11\110\3\61\241\13\9\17\45\251\27\4\7\39\139\34\32\45\1\139\11\32\12\0\203\43\0\42\6\201\46\53\45\0\202\26\47\40\0\199\36\36\54\65\200\58\32", "\111\164\79\65\68"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\142\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\123\201\59\87\32\13\139\80\215\56\66\51\28\207\52\236\35\87\46\10", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\57\181\58\187\3\197\51", "\98\166\88\217\86\217")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\212\247\106\4\182\221\228\226", "\188\150\150\25\97\230")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\134\80\14", "\141\186\233\63\98\108"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\235\33\179", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\206\133\133\255\23\124\195", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\31\213\185\214\103\79\36\89", "\50\93\180\218\189\23\46\71"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\238\172\84\66\65\255\73\210\168", "\40\190\196\59\44\36\188"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\68\209\177", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\254\177\202\33\26\37\227\168\131\5\85\11\227\183", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\67\47\175\61\72\230\5", "\110\122\34\67\195\95\41\133")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\87\176\88\65\198\116\178\80", "\182\21\209\59\42"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\131\88\202\17", "\222\215\55\165\125\65")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\208\203\31", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\143\9\203\105\121\183\158\22", "\22\197\234\101\174\25")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\53\168\217", "\230\77\84\197\188\22\207\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\21\207\242", "\85\153\116\166\156\236\193\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\233\73\182", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\136\125\75", "\184\85\237\27\63\178\207\212")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\134\168\72\9\134\167\79", "\36\107\231\196")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\115\180\175\130", "\231\61\213\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\164\48\51\37\162\62\120", "\19\105\205\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\13\216\128\42\165\28", "\95\201\104\190\225")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\199\192\201", "\174\207\171\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\247\0\255\247\212\230\248\1\242\255", "\183\141\158\109\147\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\8\234\0\46\8\229\7", "\108\76\105\134")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\221\192\178\245\193\249\150", "\174\139\165\209\129")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\178\239\196", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\10\228\108\99\23\84\23", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\54\17\27\6\46\238", "\64\157\70\101\114\105")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\100\173\161\226\5\76\188", "\112\32\200\199\131")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\92\93\191", "\66\76\48\60\216\163\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\143\116\255\80\205\47\142\135\107\244\90\218\20\187\148\109", "\68\218\230\25\147\63\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\43\95\64\180\172\41\88", "\214\205\74\51\44")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\77\239\249", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\175\160\162\57\16\26\230\134\171\47\17\24\168\169", "\115\113\198\205\206\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\82\231\88\141\89\250\116\133\90\251", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\128\221\34\51\174\62\244\162\213\55\62\164\59\176", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\93\142\227\95\84\156", "\130\42\56\232")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\186\32\230", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\39\166\68\122\47", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\117\229\95", "\56\76\25\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\95\200\166\42\192\93\202\128\35\214\92\200\165\34", "\175\62\161\203\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\220\207\31\55\61\222\200", "\85\92\189\163\115")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\162\54\55", "\88\73\204\80"), LUAOBFUSACTOR_DECRYPT_STR_0("\13\164\80\98\40\154\6\140\31\66", "\186\78\227\112\38\73"), LUAOBFUSACTOR_DECRYPT_STR_0("\221\94\240\89\92\121\247\23\216\91\82\120\240\82\249\15\19", "\26\156\55\157\53\51") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["aimPredictionStrengthSlider%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\180\90\112\255\38\224\185\94\51\219\61\234\179\23\3\219\38\224\179\80\36\199", "\84\133\221\55\80\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\238\42\175\202\73\176", "\60\221\135\68\198\167")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\188\224\138\79\204\227", "\185\142\221\152\227\34")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\192\81\251\86\63\227", "\151\56\165\55\154\35\83")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\79\4\233", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\124\36\147\245\137\168\31\213\97\32\172\233\191\184\4\211\123\46\183\239\170\160\23\209", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\61\22\76\6\12\254\3", "\157\104\92\122\32\100\109")]=function(Value)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimPredictionStrengthValue = Value;
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\69\42\220\17\61\243\45\64", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\237\194\162\30\79\109", "\25\18\136\164\195\107\35")]=shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\33\168\72", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\226\63\211\36\211\129\38", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\220\51\77\184\205\219", "\47\217\174\176\95")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool = toggleBool;
		resetHipheight();
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool do
				antiLock();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\150\220\123\7", "\70\216\189\22\98\210\52\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\209\183\142\147\246\208\160\140\147\232\218\176\136\223\204\218\177", "\179\186\191\195\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\58\30\229\236\51\12", "\132\153\95\120")]=shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\190\15\42", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\13\44\253\246\232\239\0\41\219\250\215\239\15\52\236", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\136\229\178\2\136\234\181", "\222\96\233\137")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool do
				antiLockResolve();
				task.wait();
			end
		end);
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\156\128\151\32\171\210\211\145\150", "\144\217\211\199\127\232\147")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\221\28\14\23\246\100\33\108\221", "\36\152\79\94\72\181\37\98")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\242\235\119\0\244\249\100\23\242", "\95\183\184\39")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\144\12\215\25\119\161\33\157\26", "\98\213\95\135\70\52\224")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\219\144\249\72\119\223\128\225\82", "\52\158\195\169\23")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\95\143\2\75\165\20\88\163\95", "\235\26\220\82\20\230\85\27")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\173\146\217\253\87\169\130\193\231", "\20\232\193\137\162")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\12\222\200\163", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\166\189\6\254\228\255\145\42\161\175\17\243\237\232", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\140\22\21\193\67\75", "\63\101\233\112\116\180\47")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\55\236\21", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\69\2\103\102\59\95\24\81\125\59\81\7\113\119", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\241\137\227\63\140\243\142", "\93\237\144\229\143")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\48\197\192\38\40\103\54\222\213", "\38\117\150\144\121\107")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\8\136\222\5\14\154\205\18\8", "\90\77\219\142")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\17\6\111\38\89\206\33", "\26\134\100\65\89\44\103")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\208\0\28\135\208\192\24\6", "\196\145\131\80\67")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\177\11\13", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\90\133\214", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\247\251\137\100\0\230", "\17\108\146\157\232")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\77\207\21\234", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\186\37\45\161\191\236\230\172", "\131\223\86\93\227\208\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\68\186\186\31\180\224\78", "\213\131\37\214\214\125")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\3\24\21\128\194\7\8\13\154", "\129\70\75\69\223")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\99\248\195\214\95\206\101\227\214", "\143\38\171\147\137\28")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\131\180\246", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\184\34\2\199\184\40", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\178\26\212\84\128\183", "\195\42\215\124\181\33\236")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\85\54\57", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\196\26\141\191\223\81\156\248\208\25", "\200\153\183\106\195\222\178\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\226\132\49\75\91\49\232", "\58\82\131\232\93\41")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\166\100\224\42\126\30\160\127\245", "\95\227\55\176\117\61")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\61\77\19\116\136\57\93\11\110", "\203\120\30\67\43")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\36\64\234", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\13\24\165\217\152\12", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\55\21\130\45\62\7", "\227\88\82\115")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\69\19\187\160", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\232\26\214\14\250\9\231\14\232", "\130\124\155\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\202\250\163\161\247\127\180", "\223\181\171\150\207\195\150\28")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\105\9\211\145\42\109\25\203\139", "\105\44\90\131\206")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\218\211\130\134\43\31\220\200\151", "\94\159\128\210\217\104")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\248\11\186", "\26\48\153\102\223\63\31\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\85\249\252\36\65\255\254", "\147\98\32\141")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\66\238\207", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\7\142\184", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\233\113\207", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\223\51\242", "\102\235\186\85\134\230\115\80")});
		TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\13\51\90", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\152\145\56\103\105\29\142\142\34\55\25\57\130\139\50\62", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\180\235\230\98\226\83", "\39\202\209\141\135\23\142")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\63\8\13", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\211\69\253\249\85\130\205\68\226\228\83\143\195\72", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\31\35\38\3\6\44\21", "\103\79\126\79\74\97")]=function(toggleBool)
			shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool = toggleBool;
			if not toggleBool then
				return;
			end
			TABLE_TableIndirection["dropsFolder%0"] = getDropFolder();
			if not TABLE_TableIndirection["dropsFolder%0"] then
				return;
			end
			task.spawn(function()
				while shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool do
					for _, OBJ in ipairs(TABLE_TableIndirection["dropsFolder%0"]:GetChildren()) do
						if not shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool then
							break;
						end
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\152\126\192\118\110\27\168\107", "\122\218\31\179\19\62")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\158\217\195\196\208\133\87\188\198", "\37\211\182\173\161\169\193"))) then
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
		end});
	end
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\59\64\220", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\121\243\6\95\205\123\244", "\54\163\28\135\114")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\218\80\135", "\31\72\187\61\226\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\7\74\220", "\68\163\102\35\178\39\30"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\121\222\194", "\113\222\16\186\167\99\213\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\11\253\226", "\150\78\110\155")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\196\42\228", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\134\202\135\136\210", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\130\58\114", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\78\211\223\85\67", "\178\28\186\184\61\55\83")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\216\83\40\253\0\230", "\149\164\173\39\92\146\110")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\223\40\17\27", "\123\147\71\112\127\122"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\223\144\126\84", "\38\172\173\226\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\110\54\108\203\76\81\4\224\66\21", "\143\45\113\76"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\185\21\48\189\188\92\40\183\248\16\51\185\188\92\63\183\182\26\53\191\248\77\125", "\92\216\216\124"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\94\32\190\79\239", "\157\59\82\204\32"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\25\163\222\232\170\251\190\55\58", "\209\88\94\131\154\137\138\179"), LUAOBFUSACTOR_DECRYPT_STR_0("\14\160\205\112\27\39\113\54\39\225\200\115\31\39\113\33\39\175\194\117\25\99\99\99", "\66\72\193\164\28\126\67\81"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\57\171\91\35\101\244", "\22\135\76\200\56\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\174\23\184\0\92\161\165\63\247\32", "\129\237\80\152\68\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\125\167\5\247\25\19\24\82\167\10\245\21\16\20\17\173\10\249\19\14\25", "\56\49\200\100\147\124\119"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\255\63\169\245", "\144\172\94\223"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\29\176\72\54", "\39\68\111\194"), LUAOBFUSACTOR_DECRYPT_STR_0("\245\129\167\227\120\247\254\169\232\195", "\215\182\198\135\167\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\171\72\227\68\136\77\170\92\130\9\249\73\155\76\170\75\130\71\236\65\138\8", "\40\237\41\138"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\97\249\251\79\212\103", "\42\167\20\154\152"), LUAOBFUSACTOR_DECRYPT_STR_0("\105\217\226\102\112\97\98\241\173\70", "\65\42\158\194\34\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\40\92\10\36\234\91\253\27\49\87\8\109\249\20\174\3\40\71\30\109\238\23\231\10\37\93\13\63\233\90", "\142\122\71\50\108\77\141\123"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\172\249\23", "\91\117\194\159\120"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\58\126\60\52\177\12\21\18\58", "\68\122\125\94\120\85\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\39\29\220\74\205\153\179\3\92\220\81\197\220\173\31\25\221\91\136\202\187\17\25\142", "\218\119\124\175\62\168\185"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\241\69\193", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\217\234\168\239\147\167\217\158\184\135", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\172\131\127\28\182", "\92\141\197\231\27\112\211\51")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\254\135\166", "\177\134\159\234\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\234\43\161\218\254\184\106\243\156", "\169\221\139\95\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\130\123\59\46\35", "\70\190\235\31\95\66")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\227\23\227", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\62\240\241\193\216\224\97\111\174\181", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\39\187\79\219\238", "\189\224\78\223\43\183\139")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\253\135\19", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\144\235\156\147\191\204\209\162", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\89\122\253\240\29", "\136\156\105\63\27")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\56\141\117\56\25\141\122\63", "\84\123\236\25")]=function(toggle)
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
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\158\169\20\169\166\227", "\213\144\235\202\119\204"), LUAOBFUSACTOR_DECRYPT_STR_0("\0\63\158\14\41\99\101\44\23\218", "\45\67\120\190\74\72\67"), "CG's Da Hood Script Loaded!");
end, function()
end);
