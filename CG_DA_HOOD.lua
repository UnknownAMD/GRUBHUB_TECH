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
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\117\33\160\100\72\90\34\144\126", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\94\138\152\198\39\190\176\30\89\151\203\148\43\172\252\80\114\130\203\174\33\162\244\92\22\144\132\139\43\237\246\21\87\151\158\148\43\190\176\29\87\154\203\136\33\185\176\7\89\145\128\199", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\41\6\232\217\85\180\14\0\238\224\87\178\49\10\238\228\84\159\39\14\248", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\134\234\57\71\137\228\109\72\136\241\109\94\139\226\52\75\149\163\57\65\199\239\34\79\131\163\36\64\198", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\88\183\89\191\70\154\79\187\80\179\68\147\90", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\48\177\244\162\5\86\65\22\53\173\245\241", "\58\46\119\81\200\145\208\37")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\128\49\181\172\175\37", "\86\75\236\80\204\201\221")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\66\77\118\156\251\153\97", "\235\18\33\23\229\158")),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\191\209\183\89\185\192\175\85\190\242\175\95\168\192\188\85", "\219\48\218\161")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\214\116\108\69\210\76\225\240\116\120\122\207\64\242\229\118\121", "\128\132\17\28\41\187\47")),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\59\20\46\72\0\62\47\52\77\20\38\43\59\83\0\53\3\40", "\61\97\82\102\90")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\154\39\185\95\210\86\18\32\162\62\190\95\234\86\16\8\171\43\185", "\105\204\78\203\43\167\55\126"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\136\171\42\16\54\18\194\95\177", "\49\197\202\67\126\115\100\167"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\222\48\133\68", "\62\87\59\191\73\224\54")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\11\234\225\226\11\253\193\243", "\169\135\98\154")]=nil};
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\202\121\48\93\209\60\203\192\85\43\91\241", "\168\171\23\68\52\157\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\127\251\185\44\1\136\247\122\199\168\54\34\139\226\116\215\162\42\33", "\231\148\17\149\205\69\77")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\168\247\247\86\230\133\181\244\247\88\232\164\168\208\245", "\159\224\199\167\155\55")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\253\40\219\209\255\53\220\240\209\51\221\251", "\178\151\147\92")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\232\88\61\34\69\121\135\232\92\31\29\66\127\149\223\67\61\30", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\7\230\110\11\2\230\100\15\0\244\121\6\11\241\100\8\1\250\119", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\194\123\78\167\32\220\74\78\186\43\214\110\85\159\42\210\81", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\236\116\217\230\200\188\199\118\250\229", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\205\52\251\250\60\232\118\224\218\53\255\251\0\253\80\245", "\34\129\168\82\154\143\80\156")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\132\187\62\7\71\77\130\177\179\33\12\77\90\185\132\160\39", "\233\229\210\83\107\40\46")]=TABLE_TableIndirection["targetParts%0"][1]};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function bypassAntiCheat()
		TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Vars%0"].Character;
		if not TABLE_TableIndirection["Character%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["Character%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\242\65\32\223\21\213", "\101\161\34\82\182")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\196\2\90\255\215\209\129\60\225\29\77", "\78\136\109\57\158\187\130\226"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\14\62\235\229\16\62\244\244", "\145\94\95\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\216\25\212\64\184\244\201\38\218\65\163\205\204\6\193", "\215\157\173\116\181\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\166\132\255", "\186\85\212\235\146")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\142", "\56\162\225\118\158\89\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\10\207\187\16\209\91\36\212\187\35\219\84\8\197\161\54", "\184\60\101\160\207\66")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\1\131\110\168\31\131\113\185", "\220\81\226\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\218\149\254\248\243\28\199\145\244", "\167\115\181\226\155\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\48\232\81", "\166\130\66\135\60\27\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\69\193\97\2\77\77\239\97\36\69\73\198\120\53\74\94", "\80\36\42\174\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\31", "\26\46\112\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\42\172\124\171\151\76\164\139\42\172\85\171\171\68\183\177\46\174\122\171", "\212\217\67\203\20\223\223\37")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\138\140\186\198\148\140\165\215", "\178\218\237\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\188\225\216\162\128\246\192\179\167\202\213\177", "\176\214\213\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\191\185\217", "\57\148\205\214\180\200\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\244\50\60\98\58\244\37\6\127\21\220\33\32\119\17\245\56\49\120\6", "\22\114\157\85\84"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\196", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\253\4\77\151\149\250\6\64\177\183\243\34\81\151\191\247\11\72\134\176\224", "\227\222\148\99\37")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\3\83\64\226\215\50\95\87", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\127\116\20\103\135\66\74\115\97\48\118\172", "\45\61\22\19\124\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\0\2\248", "\217\161\114\109\149\98\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\41\63\116\168\95\28\37\61\78\181\115\51\52\44\125\191\124\31\37\54\104", "\20\114\64\88\28\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\14", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\238\26\243\14\236\233\22\247\31\255\238\26\218\14\217\230\30\243\23\200\233\9", "\122\173\135\125\155")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\180\192\18\173\17\48\197\129", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\216\41\84\59\113\212\222\58", "\55\187\177\78\60\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\80\230", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\72\95\38\144\96\86\37\136\68\106\39\131\96\76\58\133\66\80\35\129\79\76", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\113", "\229\174\30\210\99")]=nil}};
		TABLE_TableIndirection["hipHeight%0"] = 0;
		pcall(function()
			for _, entry in pairs(TABLE_TableIndirection["joints%0"]) do
				TABLE_TableIndirection["fromPos%0"] = (entry.From and character[entry.PartName][entry.From].Position) or Vector3.new(0, 0, 0);
				TABLE_TableIndirection["toPos%0"] = (entry.To and character[entry.PartName][entry.To].Position) or (-character[entry.PartName].Size / 2);
				TABLE_TableIndirection["hipHeight%0"] += (TABLE_TableIndirection["fromPos%0"].Y - TABLE_TableIndirection["toPos%0"].Y)
			end
			TABLE_TableIndirection["hipHeight%0"] -= (character.PrimaryPart.Size.Y / 2)
		end);
		return TABLE_TableIndirection["hipHeight%0"];
	end
	local function isRealDaHoodGame()
		return game.PlaceId == 2788229376;
	end
	if not isRealDaHoodGame() then
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\236\148\95\228\51\62", "\89\123\141\230\49\141\93"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\86\182\40\17\10\219\126\249\8", "\42\147\17\150\108\112"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\41\147\1\83\222\215\35\137\12\91\194\204\48\133\5\94\213", "\136\111\198\77\31\135")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\8\164\93\173\229\20\162", "\201\98\105\199\54\221\132\119"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\130\60\139\46\12\48\145", "\204\217\108\227\65\98\85"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\101\243\253\234\34\197\99", "\160\62\163\149\133\76"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\254\181\0\46\205\217\169\9", "\163\182\192\109\79"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Connect(function(newChar)
		isPlayerLoaded = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		bypassAntiCheat();
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\40\6\207", "\149\84\70\96\160"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\33\77\201\57\70\37\226\55\2", "\141\88\102\109"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	bypassAntiCheat();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\160\70\201\115\31\46\70", "\161\211\51\170\16\122\93\53"), LUAOBFUSACTOR_DECRYPT_STR_0("\216\137\242\12\250\238\154\39\244\170", "\72\155\206\210"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\111\125\90\1\33\67\126", "\83\38\26\52\110"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\113\3\34\75\75\51\53\73\72", "\38\56\119\71"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\253\87\198", "\54\147\143\56\182\69"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\244\142\251\80\250\208\135\250\74\203\197", "\191\182\225\159\41"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\6\29\62\80\134\130\204\63", "\162\75\114\72\53\235\231"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\186\57\71\246\92\16\223", "\98\236\92\36\130\51"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\140\12\1\187\75\167\188\52\150\22\3\174\117\169\167\36", "\80\196\121\108\218\37\200\213"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\41\125\17\107\74\0\137\5", "\234\96\19\98\31\43\110")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\36\30\65\194\156\115\153\18", "\235\102\127\50\167\204\18"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\115\173\252\32\79\10\85\181\240\32\80\33\66", "\78\48\193\149\67\36"));
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
	local function DA_HOOD_PREDICTION(targetPlr, targetPart)
		TABLE_TableIndirection["targetCharacter%0"] = targetPlr.Character;
		if not TABLE_TableIndirection["targetCharacter%0"] then
			return;
		end
		TABLE_TableIndirection["targetPart%1"] = TABLE_TableIndirection["targetCharacter%0"]:FindFirstChild(targetPart);
		if not TABLE_TableIndirection["targetPart%1"] then
			return;
		end
		TABLE_TableIndirection["targetVelocity%0"] = TABLE_TableIndirection["targetPart%1"].Velocity;
		TABLE_TableIndirection["targetPosition%0"] = TABLE_TableIndirection["targetPart%1"].Position;
		TABLE_TableIndirection["targetDistance%0"] = (TABLE_TableIndirection["targetPosition%0"] - TABLE_TableIndirection["Camera%0"].CFrame.Position).Magnitude;
		TABLE_TableIndirection["targetTime%0"] = TABLE_TableIndirection["targetDistance%0"] / 1000;
		TABLE_TableIndirection["targetPredictedPosition%0"] = TABLE_TableIndirection["targetPosition%0"] + (TABLE_TableIndirection["targetVelocity%0"] * TABLE_TableIndirection["targetTime%0"]);
		return TABLE_TableIndirection["targetPredictedPosition%0"];
	end
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\11\141\25\79\63\23\132\42\78\63\10\176\25\83\36", "\33\80\126\224\120"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\196\189\14\197\82\227\161\7", "\60\140\200\99\164"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["randomVelocityY%0"] = math.random(70, 120);
		TABLE_TableIndirection["oldRootVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].Velocity;
		TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"] = TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity;
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, TABLE_TableIndirection["oldRootVelocity%0"].Y, TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].Velocity = Vector3.new(TABLE_TableIndirection["oldRootVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Y, TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		TABLE_TableIndirection["humanoidRootPart%0"].AssemblyLinearVelocity = Vector3.new(TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].X, -TABLE_TableIndirection["randomVelocityY%0"], TABLE_TableIndirection["oldRootAssemblyLinearVelocity%0"].Z);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = 3.95;
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\225\9\39\172\136\253\0\20\173\136\224\52\39\176\147", "\194\231\148\100\70"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\110\89\204\162\248\199\79\72\243\172\249\220\118\77\211\183", "\168\38\44\161\195\150"));
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
	TABLE_TableIndirection["PlayerSpeedMacroToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\174\253\143\115", "\118\224\156\226\22\80\136\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\254\92\133\70\174\116\129\65\252\86", "\224\34\142\57"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\162\195\220\102\253\73", "\110\190\199\165\189\19\145\61")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\231\118\239", "\167\186\139\23\136\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\165\141\8\30\152\137\14\8\186\174\1\27\178", "\109\122\213\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\246\174\60\236\246\161\59", "\80\142\151\194")]=function(toggleBool)
	end});
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\199\122\73", "\44\99\166\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\82\248\105\5\63\171\107\243\38\33\61", "\196\28\151\73\86\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\6\47\17\151\84\12", "\22\147\99\73\112\226\56\120")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\190\121\227\242", "\237\216\21\130\149")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\65\111\83\177\208\91\144\125\83\80\167\205\81\149\64\121\83\177\206", "\62\226\46\63\63\208\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\24\89\143\29\12\44\85", "\62\133\121\53\227\127\109\79")]=function(toggleBool)
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\21\63\240", "\194\112\116\82\149\182\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\166\88\17\128\196\2\48\166\75", "\110\89\200\44\120\160\130"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\198\77\71\86\70\47", "\45\203\163\43\38\35\42\91")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\137\221\36", "\52\178\229\188\67\231\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\79\68\13\209\80\42\47\70\118\8\246\91", "\67\65\33\48\100\151\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\230\162\212\241\222\228\165", "\147\191\135\206\184")]=function(toggleBool)
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
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\41\171\196", "\210\228\72\198\161\184\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\71\255\31\112\197\118\104\253\25\126\207\34\64\252\30\96", "\174\86\41\147\112\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\1\129\7\39\14\18\160", "\203\59\96\237\107\69\111\113")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\44\2\184\241\34\170\152\107\4\173\246\127\247\222\48\30\185\227\36\227\210\54\21\163\239\37\245\217\48\88\175\238\60\191\213\43\2\168\228\39\200\243\107\49\158\212\19\216\226\6\41\152\196\18\216\152\41\23\165\239\126\212\214\12\25\163\229\16\254\222\41\23\184\232\62\254\226\42\26\163\226\58\245\197\106\26\185\224", "\183\68\118\204\129\81\144"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\32\172\125\225", "\226\110\205\16\132\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\204\236\213\68\232\215\160\253\83\228\211\240\220\69\171\234\244\220\76\248", "\33\139\163\128\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\89\8\210\85\89\7\213", "\190\55\56\100")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\116\174\47\27\35\226\225\66", "\147\54\207\92\126\115\131")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\57\62\58\113", "\30\109\81\85\29\109"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\112\89\179", "\156\159\17\52\214\86\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\238\177\176\238\238\177\176", "\220\206\143\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\124\33\27\218\205\209\141", "\178\230\29\77\119\184\172")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\191\9\16\103\249\246\181", "\152\149\222\106\123\23"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\237\46\249\77\176\254\39\250\79", "\213\189\70\150\35"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\84\121\13", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\93\148\21\172\79\130\64\141\92\136\0\172\64\146", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\71\12\127\169\170\219\77", "\203\184\38\96\19\203")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\114\122\74\222\56\112\114", "\174\89\19\25\33"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\27\29\93\66", "\107\79\114\50\46\151\231")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\116\184\251\213\71\99\160\237", "\165\40\17\212\158")});
		TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\5\54", "\70\133\185\104\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\68\77\36", "\169\100\37\36\74"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\142\166\85", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\95\8\57", "\227\168\58\110\77\121\184\207")});
		for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
			TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\178\69", "\197\27\92\223\32\209\187\17")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\94\207\247\1\94\192\240", "\155\99\63\163")]=function()
				return pcall(teleportFunc, teleportPosition);
			end});
		end
	end
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\208\172\136", "\228\226\177\193\237\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\185\46\166\24\191\32\237", "\134\84\208\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\169\128\93\6\160\146", "\60\115\204\230")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\234\119", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\125\11\63\65\87\115\82\120\7\52", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\46\45\40\13\197\44\42", "\111\164\79\65\68")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool do
				if shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
					TABLE_TableIndirection["currentAimLockTarget%0"] = TABLE_TableIndirection["currentAimLockTarget%0"] or getPlayerClosestToMouse();
					if TABLE_TableIndirection["currentAimLockTarget%0"] then
						TABLE_TableIndirection["targetPredictedPosition%0"] = DA_HOOD_PREDICTION(TABLE_TableIndirection["currentAimLockTarget%0"], shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart);
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\240\220\128\202\33\248\149", "\138\166\185\227\190\78")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\117\200\50", "\121\171\20\165\87\50\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\49\180\118\137\3\212\44", "\98\166\88\217\86\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\230\109\8\137\210\229", "\188\150\150\25\97\230")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\254\140\89\3\25\225\206", "\141\186\233\63\98\108")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\230\45\177", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\198\132\133\176\21\123\251\136\155\184\19\100\255\136\155\171", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\133\57\183\236\138\126\128", "\29\235\228\85\219\142\235")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\173\86\64\75\223\67\158\143\94\85\70\213\70\218", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\64\197\182\243\115\9\18\68\209\177", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\230\169\207\62\89\15\175\143\198\40\88\13\225\160", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\71\37\162\42\69\241", "\110\122\34\67\195\95\41\133")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\190\95\79", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\88\194\26\45\187", "\222\215\55\165\125\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\221\199\29", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\131\8\194\118\117\174\161\0\215\123\127\171\142", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\53\169\208\116\174\212\141", "\230\77\84\197\188\22\207\183")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\26\192\243", "\85\153\116\166\156\236\193\144"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\199\13\151\229\64\140\239\66\183", "\96\196\128\45\211\132"), LUAOBFUSACTOR_DECRYPT_STR_0("\20\132\118\83\221\172\191\152\16\131\122\93\222\170\176\130\117", "\184\85\237\27\63\178\207\212") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\137\176\77\75\171\171\71\0", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\176\164\134\72\185\182", "\231\61\213\194")]=shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\161\60\116", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\6\202\136\19\166\11\213", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\202\205\194\173\202\194\197", "\174\207\171\161")]=function(toggleBool)
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
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\7\242\5\108\37\233\15\39\73\212\9\63\6\234\26\41\27", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\192\183\224\219\231\209", "\174\139\165\209\129")]=shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\191\227\198", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\13\231\56\90\58\73\0\226\30\86\5\73\15\255\41", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\39\9\30\11\33\254\45", "\64\157\70\101\114\105")]=function(toggleBool)
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
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\101\155\151\220\51\97\139\143\198", "\112\32\200\199\131")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\9\99\108\135\224\138\1\4\117", "\66\76\48\60\216\163\203")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\159\181\73\204\124\239\7\146\163", "\68\218\230\25\147\63\174")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\136\25\99\115\149\140\9\123\105", "\214\205\74\51\44")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\223\127\210\195\84\219\111\202\217", "\23\154\44\130\156")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\52\149\157\145\21\50\50\142\136", "\115\113\198\205\206\86")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\161\100\206\101\167\118\221\114\161", "\58\228\55\158")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\81\155\247\75\84\155\162\111\86\137\224\70\93\140", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\176\34\226\85\51\254", "\95\138\213\68\131\32")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\36\160\68", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\112\247\77\45\117\247\125\34\120\230\84\41\125", "\56\76\25\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\192\167\42\205\95\194\160", "\175\62\161\203\70")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\25\238\243\44\22\29\254\235\54", "\85\92\189\163\115")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\12\159\0\7\10\141\19\16\12", "\88\73\204\80")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\11\176\32\121\10\251\13\171\53", "\186\78\227\112\38\73")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\217\100\205\106\112\91\223\127\216", "\26\156\55\157\53\51")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\178\79", "\84\133\221\55\80\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\226\34\167\210\80\169", "\60\221\135\68\198\167")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\177\249\132", "\185\142\221\152\227\34")]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\214\71\216\76\43\242\75", "\151\56\165\55\154\35\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\66\9\226\162\66\6\229", "\142\192\35\101")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\243\70\25\156\196\173\143\62\243", "\118\182\21\73\195\135\236\204")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\45\15\42\127\39\44\222\32\25", "\157\104\92\122\32\100\109")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\74\51\208\69\16\251", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\237\194\162\30\79\109", "\25\18\136\164\195\107\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\33\168\72", "\216\136\77\201\47\18\220\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\255\59\244\9\209\135\25\237\44\201", "\226\77\140\75\186\104\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\220\51\77\184\205\219", "\47\217\174\176\95")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\157\238\70\61\145\117\91\14\157", "\70\216\189\22\98\210\52\24")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\255\236\147\184\240\251\252\139\162", "\179\186\191\195\231")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\62\21\225", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\160\15\46\242\200\179", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\6\36\232\234\200\244", "\164\128\99\66\137\159")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\133\232\185", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\160\183\43\154\242\243\188\161\180", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\50\36\215\68\1\79", "\36\152\79\94\72\181\37\98")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\242\235\119\0\244\249\100\23\242", "\95\183\184\39")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\144\12\215\25\119\161\33\157\26", "\98\213\95\135\70\52\224")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\196\114", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\169\38\123\160\52\105\134", "\235\26\220\82\20\230\85\27")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\160\228\199", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\222\204\168", "\17\66\191\165\198\135\236\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\166\170\22", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\140\22\0", "\63\101\233\112\116\180\47")});
		TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\58\224\23", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\30\96\124\122\99\2\119\120\47\67\75\89\124\52\86\18", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\131\238\40\129\228", "\93\237\144\229\143")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\250\241\30", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\174\250\53\29\178\237\49\56\171\195\53\35\190\247", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\45\53\78\6\121\237", "\26\134\100\65\89\44\103")]=function(toggleBool)
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\211\226\35\38\148\240\241\36", "\196\145\131\80\67")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\51\191\8\13\1\204\12\191\22", "\136\126\208\102\104\120"))) then
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\139\195\70", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\247\233\156\120\2\245\238", "\17\108\146\157\232")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\101\194\25\232", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\55\52\141", "\131\223\86\93\227\208\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\76\178\179", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\46\35\171", "\129\70\75\69\223")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\202\254\236", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\141\183\245\10\228", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\176\43\2", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\190\27\221\85", "\195\42\215\124\181\33\236")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\76\35\42\42\246\30", "\152\109\57\87\94\69")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\213\216\11\167", "\200\153\183\106\195\222\178\52"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\241\154\50\91", "\58\82\131\232\93\41"), LUAOBFUSACTOR_DECRYPT_STR_0("\160\112\144\49\92\127\171\88\223\17", "\95\227\55\176\117\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\62\127\42\71\174\28\62\55\68\235\20\113\34\79\235\27\113\45\77\162\31\62\114\10", "\203\120\30\67\43"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\55\95\224\203", "\185\145\69\45\143"), LUAOBFUSACTOR_DECRYPT_STR_0("\169\56\89\130\221\202\55\22\169\216", "\188\234\127\121\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\30\51\26\143\61\54\83\151\55\114\31\140\57\54\83\128\55\60\21\138\63\114\65\194", "\227\88\82\115"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\80\10\185\164\7\96\80", "\19\35\127\218\199\98"), LUAOBFUSACTOR_DECRYPT_STR_0("\63\220\74\198\29\187\34\237\19\255", "\130\124\155\106"), LUAOBFUSACTOR_DECRYPT_STR_0("\249\196\247\171\166\242\60\188\218\197\240\166\164\186\60\186\219\193\249\182\226", "\223\181\171\150\207\195\150\28"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\127\59\245\171", "\105\44\90\131\206"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\242\160\182\26", "\94\159\128\210\217\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\115\222\70\155\94\63\209\117\95\253", "\26\48\153\102\223\63\31\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\36\65\228\255\7\68\173\231\13\0\254\242\20\69\173\240\13\78\235\250\5\1", "\147\98\32\141"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\86\224\201\3\69\88", "\43\120\35\131\170\102\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\33\199\146\164\240\172\91\9\131", "\228\52\102\231\214\197\208"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\239\123\204\227\140\89\197\31\246\112\206\170\159\22\150\7\239\96\216\170\136\21\223\14\226\122\203\248\143\88", "\182\126\128\21\170\138\235\121"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\212\51\233", "\102\235\186\85\134\230\115\80"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\43\126\123\115\148\10\88\3\58", "\66\55\108\94\63\18\180"), LUAOBFUSACTOR_DECRYPT_STR_0("\36\140\150\35\34\25\29\153\197\36\40\84\17\154\141\50\53\92\84\158\132\49\34\24", "\57\116\237\229\87\71"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\176\224\226", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\26\73\41\0\221\219\26\61\57\104", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\207\85\246\197\89", "\60\225\166\49\146\169")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\31\34\47", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\126\199\114\77\89\233\42\128\38", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\223\201\197\197\164", "\37\211\182\173\161\169\193")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\59\64\220", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\115\245\23\82\128\37\180\67\0", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\210\89\134\66\122", "\31\72\187\61\226\46")]=false});
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\19\64\209\66\109\55", "\68\163\102\35\178\39\30"), LUAOBFUSACTOR_DECRYPT_STR_0("\157\87\154\227\2\245\171\30\177\116", "\113\222\16\186\167\99\213\227"), "CG's Da Hood Script Loaded!");
end, function()
end);
