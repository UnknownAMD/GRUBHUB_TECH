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
	shared.CG_DA_HOOD_CONFIG_TABLE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\243\88\59\62\67\121\135\223\67\61\30", "\26\236\157\44\82\114\44")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\32\219\79\35\2\218\88\33\28\208\72\37\34\195\94\8\33\218\87", "\59\74\78\181")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\222\106\86\178\60\212\72\105\191\42\198\126\85\164\43", "\211\69\177\58\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\235\109\252\207\199\190\235\126\215\230\196\187", "\171\215\133\25\149\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\221\38\245\223\57\255\73\244\216\31\245\225\53\229\96\238\199\62", "\34\129\168\82\154\143\80\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\162\54\14\76\99\136\134\160\60\63\71\73\142\137\183", "\233\229\210\83\107\40\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\77\62\210\12\207\69\1\198\0\196\70\31\215\6\211\77\25\211\28", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\36\106\203\250\206\177\17\205\35\120\220\247\199\166\17\202\34\118\210", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\44\216\229\42\58\244\225\42\54\247\246\10\48\213\254\61\52", "\145\94\95\153")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\196\25\249\65\180\246\239\27\218\66", "\215\157\173\116\181\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\177\141\243\207\57\160\191\243\200\50\177\159\194\219\39\160", "\186\85\212\235\146")]=TABLE_TableIndirection["targetParts%0"][1],[LUAOBFUSACTOR_DECRYPT_STR_0("\195\136\27\242\54\237\83\246\128\4\249\60\250\104\195\147\2", "\56\162\225\118\158\89\142")]=TABLE_TableIndirection["targetParts%0"][1]};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function bypassAntiCheat()
		TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Vars%0"].Character;
		if not TABLE_TableIndirection["Character%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["Character%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\111\6\210\166\50\204", "\184\60\101\160\207\66")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\29\141\127\189\61\177\127\174\56\146\104", "\220\81\226\28"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			shared.CG_isAntiCheatBypassed = true;
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\35\212\144\239\196\198\30\208", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\55\234\93\117\126\207\230\16\232\83\111\65\199\240\54", "\166\130\66\135\60\27\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\193\120", "\80\36\42\174\21")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\31", "\26\46\112\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\44\164\96\141\182\66\149\173\55\170\119\183\178\64\186\173", "\212\217\67\203\20\223\223\37")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\138\140\186\198\148\140\165\215", "\178\218\237\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\186\241\213\164\129\233\194\165\186", "\176\214\213\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\191\185\217", "\57\148\205\214\180\200\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\242\58\32\68\27\250\20\32\98\19\254\61\57\115\28\233", "\22\114\157\85\84"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\196", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\253\4\77\151\150\253\19\119\138\185\213\23\81\130\189\252\14\64\141\170", "\227\222\148\99\37")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\3\83\64\226\215\50\95\87", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\127\116\20\103\158\93\77\115\97\48\118\172", "\45\61\22\19\124\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\0\2\248", "\217\161\114\109\149\98\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\41\63\116\168\92\27\48\10\117\187\85\6\52\57\127\180\121\23\46\44", "\20\114\64\88\28\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\14", "\221\81\97\178\212\152\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\238\26\243\14\230\233\24\254\40\196\224\60\239\14\204\228\21\246\31\195\243", "\122\173\135\125\155")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\180\192\18\173\17\48\197\129", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\216\41\84\59\123\212\198\43\78\3\82\220", "\55\187\177\78\60\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\80\230", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\72\95\38\144\106\86\43\129\115\81\41\165\85\76\47\135\73\85\43\138\85", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\113", "\229\174\30\210\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\228\129\89\249\28\55\16\225\131\99\228\58\24\15\249\135\82\229\48\60\21\249", "\89\123\141\230\49\141\93")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\195\112\228\24\62\75\254\116", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\175\42\119\243\206\0\169\57", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\168\91", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\5\132\41\22\20\162\178\0\134\19\11\50\141\173\24\130\34\10\56\169\183\24", "\204\217\108\227\65\98\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\204", "\160\62\163\149\133\76")]=nil}};
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
	local function isAntiCheatDisabled()
		return shared.CG_isAntiCheatBypassed;
	end
	local function isRealDaHoodGame()
		return game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\251\161\31\36\198\194\176\1\46\192\211\147\8\61\213\223\163\8", "\163\182\192\109\79")):GetProductInfo(game.PlaceId).Creator.CreatorTargetId == 4698921;
	end
	if not isRealDaHoodGame() then
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\39\18\206\252\58\33", "\149\84\70\96\160"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\33\77\201\57\70\37\226\55\2", "\141\88\102\109"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\149\102\230\92\35\2\121\238\146\119\239\84\37\30\125\224\129", "\161\211\51\170\16\122\93\53")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\217\175\177\35\235\175\177\35", "\72\155\206\210"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\125\74\92\1\61\67\71", "\83\38\26\52\110"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\99\39\47\73\86\18\26", "\38\56\119\71"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\219\250\85\215\43\89\250\235", "\54\147\143\56\182\69"));
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\143\249\70", "\191\182\225\159\41"), LUAOBFUSACTOR_DECRYPT_STR_0("\8\53\104\113\138\199\234\36\29\44", "\162\75\114\72\53\235\231"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
		repeat
			bypassAntiCheat();
			task.wait();
		until shared.CG_isAntiCheatBypassed 
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\50\66\237", "\98\236\92\36\130\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\62\76\158\68\232\157\63\171\29", "\80\196\121\108\218\37\200\213"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\125\4\112", "\234\96\19\98\31\43\110"), LUAOBFUSACTOR_DECRYPT_STR_0("\37\56\18\227\173\50\163\9\16\86", "\235\102\127\50\167\204\18"), TABLE_TableIndirection["notiMessages%0"].BypassingAntiCheat);
	repeat
		bypassAntiCheat();
		task.wait();
	until shared.CG_isAntiCheatBypassed 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\89\175\243\44", "\78\48\193\149\67\36"), LUAOBFUSACTOR_DECRYPT_STR_0("\19\57\192\60\64\112\54\143\23\69", "\33\80\126\224\120"), TABLE_TableIndirection["notiMessages%0"].BypassedAntiCheat);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\166\5\203", "\60\140\200\99\164"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\211\68\2\163\199\220\11\41\166", "\194\231\148\100\70"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\85\89\194\160\243\219\85", "\168\38\44\161\195\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\163\219\194\82\49\168\158\25\143\248", "\118\224\156\226\22\80\136\214"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\107\233\87\143\80\235\93", "\224\34\142\57"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\247\179\192\208\96\213\79\1\206", "\110\190\199\165\189\19\145\61"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\254\249\120\248", "\167\186\139\23\136\235"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\186\140\20\63\179\142\8\25\161\155", "\109\122\213\232"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\195\248\180\53\227\242\172\36", "\80\142\151\194"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\53\195\116\88\12\212\36", "\44\99\166\23"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\84\226\36\55\61\171\117\243\27\57\60\176\76\246\59\34", "\196\28\151\73\86\83"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\218\13\58\4\131\86\27\115", "\22\147\99\73\112\226\56\120")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\154\116\241\240\189\185\103\246", "\237\216\21\130\149"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\161\66\86\92\187\237\91\150\75\92\75\191\219", "\62\226\46\63\63\208\169"));
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\205\12\88\130\17\2\38\90\215\22\90\151\47\12\61\74", "\62\133\121\53\227\127\109\79"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\56\1\63\244\216\161\171\20", "\194\112\116\82\149\182\206"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\189\65\25\206\237\7\61\154\67\23\212\210\15\43\188", "\110\89\200\44\120\160\130"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\131\214\70\71\77\69\50\73\153\204\68\82\115\75\41\89", "\45\203\163\43\38\35\42\91"));
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
	TABLE_TableIndirection["PlayerSpeedMacroToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\132\209\38", "\52\178\229\188\67\231\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\18\81\85\1\243\28\14\32\66\66\11", "\67\65\33\48\100\151\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\226\168\217\230\211\243", "\147\191\135\206\184")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\36\167\198", "\210\228\72\198\161\184\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\89\246\21\119\227\55\74\225\31\85\194\55\78", "\174\86\41\147\112\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\1\129\7\39\14\18\160", "\203\59\96\237\107\69\111\113")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.SpeedMacroToggle = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			TABLE_TableIndirection["bodyVelocity%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\25\168\248\7\245\219\43\21\165\245\40", "\183\68\118\204\129\81\144"));
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
				TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\38\184\125\229\5\141\7\169", "\226\110\205\16\132\107"));
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
	TABLE_TableIndirection["PlayerSpeedMacroKeyBind%0"] = TABLE_TableIndirection["PlayerSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\194\237\220", "\33\139\163\128\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\100\72\1\219\83\24\41\223\84\74\11\158\124\93\29\220\94\86\0", "\190\55\56\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\170\37\28\26\237\247\120\174\49\27", "\147\54\207\92\126\115\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\62\33\48\120\9\62\32\48\54\111\2\62\38\52\44\127\4\112\9", "\30\109\81\85\29\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\116\82\183\35\210\232", "\156\159\17\52\214\86\190")]=Enum.KeyCode.Q,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\224\185\185", "\220\206\143\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\114\33\19", "\178\230\29\77\119\184\172"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\178\11\28", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\54\243\70\177\240\39\245\81\186\246\35\239\65\188\211\34\208\79\180\218", "\213\189\70\150\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\84\120\4\77\84\119\3", "\104\47\53\20")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.holdingSpeedMacroKey = not active;
	end});
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\73\64\64\167\164\207\66\15\100\165", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\118\127\64\219\53\103", "\174\89\19\25\33")]=shared.CG_DA_HOOD_CONFIG_TABLE.NoPlayerSlowDown,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\30\83\73", "\107\79\114\50\46\151\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\169\133\37\139\32\178\210\10\170\186\62\142\54\160\206\31\170\180\46", "\160\89\198\213\73\234\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\112\184\242\199\73\114\191", "\165\40\17\212\158")]=function(toggleBool)
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\5\54", "\70\133\185\104\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\75\80\35\137\34\73\77\36\206", "\169\100\37\36\74"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\130\164\81\21\139\182", "\48\96\231\194")]=shared.CG_DA_HOOD_CONFIG_TABLE.AntiFlingBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\86\15\42", "\227\168\58\110\77\121\184\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\50\171\73\151\215\120\171\124\26\179\65\182", "\197\27\92\223\32\209\187\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\94\207\247\1\94\192\240", "\155\99\63\163")]=function(toggleBool)
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
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\208\172\136", "\228\226\177\193\237\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\190\47\233\55\187\99\199\58\185\46\231\32\185\44\232\39", "\134\84\208\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\173\138\80\17\173\133\87", "\60\115\204\230")]=function()
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\239\46\255\96\244\96\164\63\245\59\252\62\224\51\255\120\242\56\254\99\226\40\232\127\233\46\238\126\243\116\232\127\234\117\233\127\243\62\238\102\223\30\164\87\213\15\201\88\210\24\212\68\194\25\195\63\234\59\226\126\168\30\234\88\232\53\239\81\233\51\230\113\243\51\228\126\210\52\231\127\228\49\238\98\169\54\254\113", "\16\135\90\139"), true))();
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\117\11\54", "\24\52\20\102\83\46\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\32\45\40\10\199\59\97\0\29\203\63\49\33\11\132\6\53\33\2\215", "\111\164\79\65\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\216\143\210\44\235\197\210", "\138\166\185\227\190\78")]=function()
			TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
			if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
				return;
			end
			for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
				if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\214\50\98\34\11\223", "\121\171\20\165\87\50\67")) then
					continue;
				end
				TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\242\55\182\58", "\98\166\88\217\86\217"));
				if not TABLE_TableIndirection["hasTool%0"] then
					continue;
				end
				teleportFunc(OBJ.Position);
				task.wait(0.15);
			end
		end});
		TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\216\247\116\4", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\136\83\14\76\236\214\133", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\235\32\186\39\240\233\39", "\69\145\138\76\214")]=function()
			if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
				return;
			end
			TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
			if not TABLE_TableIndirection["phoneTool%0"] then
				return;
			end
			TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\82\206\138\130\175\23\115\196", "\118\16\175\233\233\223"));
			if not TABLE_TableIndirection["backPackFolder%0"] then
				return;
			end
			for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Player == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
				TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\187\140\58\181\235\168\124\135\136", "\29\235\228\85\219\142\235"), Player.Name);
				task.wait(0.1);
				TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
			end
		end});
	end
	TABLE_TableIndirection["PlayerSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\181\78\69\84\156\105\210\168\27\120\75\211\68\205", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\208\184\248\124\14\55", "\109\92\37\188\212\154\29")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\238\167\200\33\91\7\228", "\58\100\143\196\163\81"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\46\77\44\175", "\110\122\34\67\195\95\41\133")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\91\176\86\79", "\182\21\209\59\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\201\24\49\177\165\67\214", "\222\215\55\165\125\65")});
	TABLE_TableIndirection["TeleportsSection%0"] = TABLE_TableIndirection["TeleportsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\208\203\31", "\42\76\177\166\122\146\161\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\139\12\192", "\22\197\234\101\174\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\61\161\217", "\230\77\84\197\188\22\207\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\17\192\232", "\85\153\116\166\156\236\193\144")});
	for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
		TABLE_TableIndirection["TeleportsSection%0"]:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\225\64\182", "\96\196\128\45\211\132")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\140\119\83\208\174\183\211", "\184\85\237\27\63\178\207\212")]=function()
			return pcall(teleportFunc, teleportPosition);
		end});
	end
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\88\4\90", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\142\169\4\39\136\167\79", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\176\164\134\72\185\182", "\231\61\213\194")]=shared.CG_DA_HOOD_CONFIG_TABLE.AimLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\161\60\116", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\1\211\141\48\170\3\216\141\62\174", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\202\205\194\173\202\194\197", "\174\207\171\161")]=function(toggleBool)
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
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\219\251\14\231\247\197\190", "\183\141\158\109\147\152")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\8\235\9", "\108\76\105\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\204\188\161\254\234\215\165", "\174\139\165\209\129"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\163\246\200\201\13\99", "\24\195\211\130\161\166\99\16")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\98\6\239\45\70\26\82", "\118\38\99\137\76\51")]=shared.CG_DA_HOOD_CONFIG_TABLE.defaultTargetPart,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\42\4\21", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\65\161\170\239\31\67\163\147\226\2\71\173\179\211\17\82\188", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\80\180\193\170\33\39", "\66\76\48\60\216\163\203")]=function(Option)
		shared.CG_DA_HOOD_CONFIG_TABLE.aimlockTargetPart = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimSectionRight%0"]:Keybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\116\246", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\35\94\64\185\174\33\19\103\179\180\40\90\66\178", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\73\251\254\126\244\72\204\253\122\255", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\175\160\162\57\16\26\230\134\171\47\17\24\168\169", "\115\113\198\205\206\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\82\248\91\145\91\234", "\58\228\55\158")]=Enum.KeyCode.C,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\134\212\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\87\143\229\70\93", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\185\37\228", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\33\172\79\121\41\35\138\70\111\40\33\175\71", "\22\74\72\193\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\120\232\84\46\120\231\83", "\56\76\25\132")]=function(Keybind, active)
		shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock = not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\87\207\173\41", "\175\62\161\203\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\31\250\131\55\52\124\245\204\28\49", "\85\92\189\163\115"), LUAOBFUSACTOR_DECRYPT_STR_0("\8\165\61\52\38\175\59\120\12\162\49\58\37\169\52\98\105", "\88\73\204\80") .. tostring(shared.CG_DA_HOOD_CONFIG_TABLE.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\0\130\29\67", "\186\78\227\112\38\73")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\89\233\92\19\86\243\84\246", "\26\156\55\157\53\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\221\16\216\173\92\152", "\48\236\184\118\185\216")]=shared.CG_DA_HOOD_CONFIG_TABLE.antiLockBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\177\86\55", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\233\48\175\235\83\190\236", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\188\244\143\64\216\237\182", "\185\142\221\152\227\34")]=function(toggleBool)
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
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\196\90\255", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\77\17\231\224\111\10\237\171\3\55\235\179\76\9\248\165\81", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\112\47\162\242\128\184", "\118\182\21\73\195\135\236\204")]=shared.CG_DA_HOOD_CONFIG_TABLE.anntiLockResolveBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\48\27\71", "\157\104\92\122\32\100\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\168\193\222\52\11\130\168\168\148\202\217\50\43\155\174", "\203\195\198\175\170\93\71\237"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\74\50\217\83\16\255\37", "\156\78\43\94\181\49\113")]=function(toggleBool)
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
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\87\219\244\156\40\98\90\90\205", "\25\18\136\164\195\107\35")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\205\30\153\112\81\157\226\144\205", "\216\136\77\201\47\18\220\161")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\8\223\27\229\43\253\161\5\201", "\226\77\140\75\186\104\188")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\156\253\224\0\108\152\237\248\26", "\47\217\174\176\95")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\157\238\70\61\145\117\91\14\157", "\70\216\189\22\98\210\52\24")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\255\236\147\184\240\251\252\139\162", "\179\186\191\195\231")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\220\12\40\219\218\30\59\204\220", "\132\153\95\120")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\159\179\3\40", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\10\49\252\254\200\243\67\7\231\254\198\236\6\38", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\140\239\191\21\133\253", "\222\96\233\137")]=shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\191\166\24", "\144\217\211\199\127\232\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\38\45\61\212\73\17\97\246\46\60\36\208\65", "\36\152\79\94\72\181\37\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\217\75\51\213\217\68\52", "\95\183\184\39")]=function(toggleBool)
		shared.CG_DA_HOOD_CONFIG_TABLE.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\144\12\215\25\119\161\33\157\26", "\98\213\95\135\70\52\224")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\219\144\249\72\119\223\128\225\82", "\52\158\195\169\23")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\95\143\2\75\165\20\88\163\95", "\235\26\220\82\20\230\85\27")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\173\146\217\253\87\169\130\193\231", "\20\232\193\137\162")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\12\222\200\163", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\160\182", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\140\22\21\193\67\75", "\63\101\233\112\116\180\47")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\55\236\21", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\86\24\100\81\53\75\14\103", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\241\137\227\63\140\243\142", "\93\237\144\229\143")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\48\197\192\38\40\103\54\222\213", "\38\117\150\144\121\107")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\8\136\222\5\14\154\205\18\8", "\90\77\219\142")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\226\61\38\176\240\228", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\181\0\9\13\228\10", "\136\126\208\102\104\120")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\134\207\68", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\225\237\166\112\1\247\201\137\118\31", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\194\24\225\45\169\72\200", "\200\43\163\116\141\79")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\154\5\13\188\147\213\192\151\19", "\131\223\86\93\227\208\148")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\198\118\134\137\62\148\192\109\147", "\213\131\37\214\214\125")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsSectionLeft%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\8\42\40\186", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\217\242\234\121\253\85", "\143\38\171\147\137\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\135\191\242\22\239\192", "\180\176\226\217\147\99\131")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\181\46\0", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\164\12\225\83\141\160\79\165\15", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\88\59\50\39\249\14\82", "\152\109\57\87\94\69")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\220\228\58\156\157\243\119\128\220", "\200\153\183\106\195\222\178\52")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\23\208\184\2\106\123\17\203\173", "\58\82\131\232\93\41")].SetTracersVisibility(toggleBool);
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\173\86\221\16", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\107\55\68\141\25\108\46", "\203\120\30\67\43")});
		TABLE_TableIndirection["AutoFarmSection%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\36\64\234", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\30\16\168", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\59\23\134", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\26\188\179", "\19\35\127\218\199\98")});
		TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmSection%0"]:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\50\250\7\231", "\130\124\155\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\226\160\227\198\117\188\222\222\230\239\142\249\114\186\204", "\223\181\171\150\207\195\150\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\63\229\175\28\64\46", "\105\44\90\131\206")]=shared.CG_DA_HOOD_CONFIG_TABLE.AutoPickupMoneyBool,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\236\179\190", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\236\18\176\111\118\250\113\69\233\43\176\81\122\224", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\65\225\255\0\65\238\248", "\147\98\32\141")]=function(toggleBool)
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
						if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\58\66\240\207\54\87\89\12", "\43\120\35\131\170\102\54")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\121\9\137\179\188\148\150\91\22", "\228\52\102\231\214\197\208"))) then
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
	TABLE_TableIndirection["SettingsTab%0"] = TABLE_TableIndirection["window%0"]:Page({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\225\120\207", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\223\33\242\143\29\55\21", "\102\235\186\85\134\230\115\80")});
	TABLE_TableIndirection["SettingsSection%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\13\51\90", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\140\140\57", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\184\233\226", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\54\15\30", "\152\159\83\105\106\82")});
	TABLE_TableIndirection["SettingsSectionRight%0"] = TABLE_TableIndirection["SettingsTab%0"]:Section({[LUAOBFUSACTOR_DECRYPT_STR_0("\175\199\92\247", "\60\225\166\49\146\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\17\33\44\8\0", "\103\79\126\79\74\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\118\215\118", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\223\202\201\221", "\37\211\182\173\161\169\193")});
	TABLE_TableIndirection["SettingsSectionRight%0"]:ButtonHolder({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\47\89\205\39\117\170", "\217\151\90\45\185\72\27")]={{LUAOBFUSACTOR_DECRYPT_STR_0("\239\115\230\22", "\54\163\28\135\114"),function()
		TABLE_TableIndirection["configLoaderModule%0"].new(function(configResult)
			if (configResult == false) then
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\201\79\141\92", "\31\72\187\61\226\46"), LUAOBFUSACTOR_DECRYPT_STR_0("\224\33\3\246\70\62\12\204\9\71", "\68\163\102\35\178\39\30"), LUAOBFUSACTOR_DECRYPT_STR_0("\152\113\211\203\6\177\195\5\177\48\214\200\2\177\195\18\177\126\220\206\4\245\210\80", "\113\222\16\186\167\99\213\227"));
			end
			local config_success, config_load_err = pcall(function()
				TABLE_TableIndirection["window%0"]:LoadConfig(configResult);
			end);
			if not config_success then
				warn(config_load_err);
				return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\28\233\249\60", "\150\78\110\155"), LUAOBFUSACTOR_DECRYPT_STR_0("\166\226\103\197\165\94\151\79\138\193", "\32\229\165\71\129\196\126\223"), LUAOBFUSACTOR_DECRYPT_STR_0("\229\136\205\141\132\209\131\157\203\193\141\218\194\141\132\130\142\219\197\128\195\193\211\148", "\181\163\233\164\225\225"));
			end
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\67\158\61\116\85\152\45", "\23\48\235\94"), LUAOBFUSACTOR_DECRYPT_STR_0("\95\253\152\121\86\115\250\115\213\220", "\178\28\186\184\61\55\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\232\194\70\56\247\10\181\199\194\73\58\251\9\185\132\200\73\54\253\23\180", "\149\164\173\39\92\146\110"));
		end);
	end},{LUAOBFUSACTOR_DECRYPT_STR_0("\192\38\6\26", "\123\147\71\112\127\122"),function()
		TABLE_TableIndirection["currentWindowConfig%0"] = TABLE_TableIndirection["window%0"]:GetConfig();
		if not TABLE_TableIndirection["currentWindowConfig%0"] then
			return TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\223\144\126\84", "\38\172\173\226\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\110\54\108\203\76\81\4\224\66\21", "\143\45\113\76"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\185\21\48\189\188\92\40\183\248\15\61\174\189\92\63\183\182\26\53\191\249", "\92\216\216\124"));
		end
		setclipboard(tostring(TABLE_TableIndirection["currentWindowConfig%0"]));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\39\175\67\248\72\33", "\157\59\82\204\32"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\25\163\222\232\170\251\190\55\58", "\209\88\94\131\154\137\138\179"), LUAOBFUSACTOR_DECRYPT_STR_0("\11\174\202\122\23\36\113\49\41\183\193\120\94\55\62\98\49\174\209\110\94\32\61\43\56\163\203\125\12\39\112", "\66\72\193\164\28\126\67\81"));
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\34\174\87", "\22\135\76\200\56\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\174\23\184\0\92\161\165\63\247\32", "\129\237\80\152\68\61"), LUAOBFUSACTOR_DECRYPT_STR_0("\97\169\23\231\25\87\81\69\232\23\252\17\18\79\89\173\22\246\92\4\89\87\173\69", "\56\49\200\100\147\124\119"));
	end}}});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\178\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\38\226\100\22\42\134\110\16\60\248", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\175\227\195\117\178", "\215\182\198\135\167\25")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\72\231\77", "\40\237\41\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\117\238\249\89\132\39\175\171\31", "\42\167\20\154\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\247\166\70\125\36", "\65\42\158\194\34\17")]=false});
	TABLE_TableIndirection["SettingsSection%0"]:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\38\95\9", "\142\122\71\50\108\77\141\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\173\237\29\63\86\251\172\73\109", "\91\117\194\159\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\20\58\28\57\244", "\68\122\125\94\120\85\145")]=false});
	TABLE_TableIndirection["window%0"]:Initialize();
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\9\204\93\205\202\169", "\218\119\124\175\62\168\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\134\215\8\224\164\176\96\203\170\244", "\164\197\144\40"), "CG's Da Hood Script Loaded!");
end, function()
end);
