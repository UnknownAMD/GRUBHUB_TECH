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
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\160\105\104\56\0\46\181\12\186\124\107\102\20\125\238\75\189\127\105\59\22\102\249\76\166\105\121\38\7\58\249\76\165\50\126\39\7\112\255\85\144\89\51\15\33\65\216\107\157\95\67\28\54\87\210\12\165\124\117\38\92\122\255\84\151\104\117\23\31\125\248\13\164\104\125", "\35\200\29\28\72\115\20\154"), true))();
	loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\17\171\197\207\158\118\123\86\173\208\200\195\43\61\13\183\196\221\152\63\49\11\188\222\209\153\41\58\13\241\210\208\128\99\54\22\171\213\218\155\20\16\86\152\227\234\175\4\1\59\128\229\250\174\4\123\20\190\216\209\194\11\53\20\186\194\144\168\31\4\38\146\254\251\184\0\17\87\179\196\222", "\84\121\223\177\191\237\76"), true))();
	TABLE_TableIndirection["Camera%0"] = workspace.CurrentCamera;
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:CreateWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\149\87\196\165", "\161\219\54\169\192\90\48\80")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\101\77\1\33\64\76\7\17\64\86\12\32", "\69\41\34\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\194\151\34\13\36\184", "\75\220\163\183\106\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\181\138\51\208\12\189\184\34\219\22\179\159\59\220", "\185\98\218\235\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\37\103\197\249", "\202\171\92\71\134\190"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\206\34\142\32\198\57\154\40\213\37\135\39\242\45\158\32\207\43", "\232\73\161\76")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\158\215\67\95\18\190\221", "\126\219\185\34\61")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\193\82\118\123\101\221\230\1\203", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\206\21\248\59\156\26\247\130\218", "\167\214\137\74\171\120\206\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\249\62\88\214\166\134\245", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\23\145\36\8\18", "\75\103\118\217")},[LUAOBFUSACTOR_DECRYPT_STR_0("\236\81\105\39\160\13\211\81\125", "\126\167\52\16\116\217")]=false});
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\248\34\33\153\177\11", "\156\168\78\64\224\212\121"), 15728996305);
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\38\231\168", "\174\103\142\197"), 12293896545);
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\96\33\76\45\36\82\235", "\152\54\72\63\88\69\62"), 16060788318);
	TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\245\209\250\83\242\197\252\81", "\60\180\164\142"), 17671173398);
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\109\78\13\32\43\225\82\127\75\11\51", "\114\56\62\101\73\71\141")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\249\211\205\180\229\155\226\183\230\223", "\164\216\137\187")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\233\38\188\174\247\7\222\166\22\167\168\228", "\107\178\134\81\210\198\158")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\1\149\200\162\49\2\142\134\140\55\1\134", "\202\88\110\226\166")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\14\140\252", "\170\163\111\226\151")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\51\186\55\65\59", "\73\113\80\210\88\46\87")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\37\193\27\243\128\62\212\82\197\128\63\200", "\135\225\76\173\114")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\226\180\185\175\184\231\41\249\185\164\165\178\169", "\199\122\141\216\208\204\221")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\210\31\244\56\208\164\201\30\245\107\229", "\150\205\189\112\144\24")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\140\176\66\1\200\34\4\42\150\186", "\112\69\228\223\44\100\232\113")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\30\71\241\185\100\143\218\24\71\240\186\105\132", "\230\180\127\103\179\214\28")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\4\31\114\236\68\225\152\23\90", "\128\236\101\63\38\132\33")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\168\81\103\183\248\198\162\166", "\175\204\201\113\36\214\139")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\197\50\212\16\68\192\32\222", "\100\39\172\85\188")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\106\188\133\27\162\109\170\133", "\83\205\24\217\224")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\206\192\204\57", "\93\134\165\173"),LUAOBFUSACTOR_DECRYPT_STR_0("\139\226\209\199\40\250\189\108\173\253", "\30\222\146\161\162\90\174\210"),LUAOBFUSACTOR_DECRYPT_STR_0("\201\65\103\15\247\122\127\24\246\65", "\106\133\46\16"),LUAOBFUSACTOR_DECRYPT_STR_0("\112\53\126\253\84\79\81\36\65\243\85\84\104\33\97\232", "\32\56\64\19\156\58")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\116\199\241\100\95\243\140\126\224", "\224\58\168\133\54\58\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\94\66\238\53\143\148\75\87\89\95\189\103\131\134\7\25\114\74\189\93\137\136\15\21\22\88\242\120\131\199\13\92\87\95\232\103\131\148\75\84\87\82\189\123\137\147\75\78\89\89\246\52", "\107\57\54\43\157\21\230\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\138\24\225\176\210\200\253\132\3\197\181\221\214\222\153\37\250\149\211\206\223", "\175\187\235\113\149\217\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\174\136\88\234\119\127\124\169\142\94\163\105\116\61\182\132\94\163\109\119\124\163\142\77\231\57\113\50\238", "\24\92\207\225\44\131\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\223\185\85\30\111\103\220\185\72\30\121\98\221", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\213\33\85\184\203\96\64\178\216\36\73\185\152", "\44\221\185\64")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\49\235\73\70\118\19\244", "\19\97\135\40\63")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\158\80\50\34\42\35\189", "\81\206\60\83\91\79")),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\174\192\126\38\192\76\176\75\175\227\102\32\209\76\163\75", "\196\46\203\176\18\79\163\45")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\138\39\110\18\45\248\238\172\39\122\45\48\244\253\185\37\123", "\143\216\66\30\126\68\155")),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\193\31\223\208\162\219\200\164\216\24\223\232\162\217\224\173\205\31", "\129\202\168\109\171\165\195\183")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\20\81\37\204\203\21\234\11\86\39\205\202\57\231\44\89\48\221\204", "\134\66\56\87\184\190\116"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\17\48\0\181\60\253\36\59\40", "\85\92\81\105\219\121\139\65"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\205\191\81\92\121\205", "\191\157\211\48\37\28")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\22\228\52\63\214\24\252\8", "\90\191\127\148\124")]=nil};
	shared.CG_DA_HOOD_TOGGLES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\121\137\58\30\84\136\45\28\90\136\33\27", "\119\24\231\78")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\35\171\94\213\108\30\129\38\151\79\207\79\29\148\40\135\69\211\76", "\113\226\77\197\42\188\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\25\196\185\59\15\241\167\9\26\251\162\30\25\227\187", "\213\90\118\148")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\32\160\95\107\87\39\186\81\111\84\33\184", "\45\59\78\212\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\67\151\132\182\39\174\251\5\70\174\132\136\43\180\210\31\89\143", "\144\112\54\227\235\230\78\205")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\1\60\201\241\119\128\23\42\210\241\121\159\13\43\195\242\116\156\4", "\59\211\72\111\156\176")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\142\238\1\65\132\232\15\65\136\239", "\77\46\231\131")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\147\71\151\84\174\81\187\80\174\93\184\71\142\91\154\79\185\95", "\32\218\52\214")]=false};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function bypassAntiCheat()
		TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Vars%0"].Character;
		if not TABLE_TableIndirection["Character%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["Character%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\125\20\35\161\225\164", "\58\46\119\81\200\145\208\37")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\7\131\51\173\165\142\53\57\133\32\184", "\86\75\236\80\204\201\221"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	bypassAntiCheat();
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\66\64\101\145\208\138\127\68", "\235\18\33\23\229\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\175\204\186\94\181\200\191\98\181\206\175\96\187\211\175", "\219\48\218\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\99\115\68", "\128\132\17\28\41\187\47")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\53\61", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\33\164\95\245\94\25\40\184\58\170\72\207\90\27\7\184", "\105\204\78\203\43\167\55\126")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\149\171\49\10\61\5\202\84", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\84\200\44\146\98\81\37\72\208", "\62\87\59\191\73\224\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\16\245\196", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\120\43\64\207\58\207\234\99\48\85\254\59\197\206\121\48", "\168\171\23\68\52\157\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\126", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\174\192\243\67\215\137\183\245\242\80\222\148\179\198\248\95\242\133\169\211", "\159\224\199\167\155\55")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\199\242\46\198\217\242\49\215", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\244\75\58\6\121\106\156\248\94\30\23\75", "\26\236\157\44\82\114\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\60\218\86", "\59\74\78\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\216\93\82\167\13\216\74\104\186\34\240\78\78\178\38\217\87\95\189\49", "\211\69\177\58\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\234", "\171\215\133\25\149\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\193\53\242\251\27\242\71\228\250\59\253\206\36\232\67\226\192\63\255\225\36", "\34\129\168\82\154\143\80\156")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\181\179\33\31\102\79\132\128", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\75\53\222\17\237\77\37\211\23\237\71\53", "\101\161\34\82\182"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\31\86\243", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\54\254\249\42\20\247\244\59\13\240\246\31\43\237\240\61\55\244\244\48\43", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\194", "\215\157\173\116\181\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\189\140\250\206\20\186\128\254\223\7\189\140\211\206\33\181\136\250\215\48\186\159", "\186\85\212\235\146")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\242\128\4\234\23\239\85\199", "\56\162\225\118\158\89\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\12\199\167\54\254\83\10\212", "\184\60\101\160\207\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\115\177", "\220\81\226\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\220\133\243\254\230\29\222\142\254\216\206\20\244\150\239\235\196\27\216\135\245\254", "\167\115\181\226\155\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\45", "\166\130\66\135\60\27\17")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\75\220\123\57\74\77", "\80\36\42\174\21"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\55\119\94\79\80\31\117\65\20", "\26\46\112\87"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\22\135\88\134\128\105\155\152\7\142\80\128\156\109\149\139", "\212\217\67\203\20\223\223\37")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\152\140\171\217\170\140\171\217", "\178\218\237\200"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\133\238\223\184\176\219", "\176\214\213\134"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\157\190\219\166\83\100", "\57\148\205\214\180\200\54"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\58\232\56\53\120\29\244\49", "\22\114\157\85\84"));
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
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\197\21\203", "\200\164\171\115\164\61\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\157\211\67\97\130\254\220\12\74\135", "\227\222\148\99\37"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\71\81\245\252\32\65", "\153\83\50\50\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\126\81\51\56\114\235\101\82\121\119", "\45\61\22\19\124\19\203"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\232\21\3\250\16\117\189", "\217\161\114\109\149\98\16"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\59\52\61\113\175\80\0\47\40", "\20\114\64\88\28\220"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\21\19\221\164", "\221\81\97\178\212\152\176"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\239\232\25\226\63\203\225\24\248\14\222", "\122\173\135\125\155"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\169\206\22\188\50\52\198\144", "\168\228\161\96\217\95\81"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\237\212\45\72\32\69\136", "\55\187\177\78\60\79"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\219\82\234\72\192\137\41\252\80\228\82\255\129\63\218", "\224\77\174\63\139\38\175"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\173\79\75\58\133\79\91\43", "\78\228\33\56")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\236\127\161\6\181\207\108\166", "\229\174\30\210\99"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\56\225\143\82\230\25\60\15\232\133\69\226\47", "\89\123\141\230\49\141\93"));
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
			TABLE_TableIndirection["distance%0"] = (TABLE_TableIndirection["Vars%0"].PlayerMouse.Hit.p - TABLE_TableIndirection["CharacterPrimaryPart%0"].Position).Magnitude;
			if (TABLE_TableIndirection["distance%0"] < TABLE_TableIndirection["closestDistance%0"]) then
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\100\251\13\30\69\250\117\196\3\31\94\195\112\228\24", "\42\147\17\150\108\112"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\39\179\32\126\233\231\6\162", "\136\111\198\77\31\135"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\28\170\87\179\235\30\173\48\6\168\66\141\229\5\189", "\201\98\105\199\54\221\132\119"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\145\25\142\32\12\58\165\189\62\140\46\22\5\173\171\24", "\204\217\108\227\65\98\85"));
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
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\194\248\224", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\175\77\28\207\217\183\9\32\212\216", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\51\18\210\240\58\50\54\193\249\33\35", "\149\84\70\96\160")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\10\12\234", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\92\217\124\21\42\81\206\164\93\236\124\27\58", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\175\190\36\249\175\177\35", "\72\155\206\210")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.NoPlayerSlowDown = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.NoPlayerSlowDown do
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\123\89\11", "\83\38\26\52\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\25\51\79\24\49\43\79\86\16", "\38\56\119\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\250\74\196\32\88\231\217\89\218\48\83", "\54\147\143\56\182\69")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\141\254\78", "\191\182\225\159\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\28\60\92\173\139\203\37\21\14\89\138\128", "\162\75\114\72\53\235\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\61\72\238\81\3\143\55", "\98\236\92\36\130\51")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.AntiFlingBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.AntiFlingBool do
				antiFling();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\24\1\191", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\125\14\112\72\5\202\33\125\11\114\74\26\131\15\125\17", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\30\94\203\174\115\136\13", "\235\102\127\50\167\204\18")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\88\181\225\51\87\116\31\238\231\34\83\96\87\168\225\43\81\44\69\178\240\49\71\33\94\181\240\45\80\96\83\174\248\108\70\33\68\165\240\53\124\10\31\134\199\22\102\6\101\131\202\23\97\13\120\238\248\34\77\32\31\133\244\11\75\33\84\128\251\42\73\47\68\168\250\45\113\32\92\174\246\40\65\60\30\173\224\34", "\78\48\193\149\67\36"), true))();
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\30\31\141\29", "\33\80\126\224\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\167\15\200\89\239\188\67\224\78\227\184\19\193\88\172\129\23\193\81\255", "\60\140\200\99\164"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\245\8\42\160\134\247\15", "\194\231\148\100\70")]=function()
		TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
		if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\100\77\210\166\198\201\84\88", "\168\38\44\161\195\150")) then
				continue;
			end
			TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\180\243\141\122", "\118\224\156\226\22\80\136\214"));
			if not TABLE_TableIndirection["hasTool%0"] then
				continue;
			end
			teleportFunc(OBJ.Position);
			task.wait(0.15);
		end
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\239\84\133", "\224\34\142\57")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\166\201\209\51\240\81\2", "\110\190\199\165\189\19\145\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\234\123\228\137\198\217\224", "\167\186\139\23\136\235")]=function()
		if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
			return;
		end
		TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
		if not TABLE_TableIndirection["phoneTool%0"] then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\180\139\6\10\180\139\6", "\109\122\213\232"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
			TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\222\255\173\62\235\212\163\60\226", "\80\142\151\194"), Player.Name);
			task.wait(0.1);
			TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
		end
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\199\122\73", "\44\99\166\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\230\60\63\35\228\93\251\37\118\7\171\115\251\58", "\196\28\151\73\86\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\2\37\28\128\89\27\125", "\22\147\99\73\112\226\56\120")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\116\225\254\157\185\118\233", "\237\216\21\130\149"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\182\65\80\83", "\62\226\46\63\63\208\169")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\89\134\15\2\61\74\246", "\62\133\121\53\227\127\109\79"), 4034483344);
		for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
			TABLE_TableIndirection["TeleportsTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\21\63\240", "\194\112\116\82\149\182\206")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\169\64\20\194\227\13\50", "\110\89\200\44\120\160\130")]=function()
				return pcall(teleportFunc, teleportPosition);
			end});
		end
	end
	TABLE_TableIndirection["defaultTargetPart%0"] = TABLE_TableIndirection["targetParts%0"][1];
	TABLE_TableIndirection["aimlockTargetPart%0"] = TABLE_TableIndirection["defaultTargetPart%0"];
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\133\194\70\67", "\45\203\163\43\38\35\42\91")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\140\209\99\171\166\87\217", "\52\178\229\188\67\231\201"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\84\66\22\242\82\55\23\64\92\17\242", "\67\65\33\48\100\151\60")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\235\175\223", "\147\191\135\206\184")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\33\171\205\215\80\185\162\36\167\198", "\210\228\72\198\161\184\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\72\255\28\113\207\53\66", "\174\86\41\147\112\19")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.AimLockBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.AimLockBool do
				if shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock then
					TABLE_TableIndirection["currentAimLockTarget%0"] = TABLE_TableIndirection["currentAimLockTarget%0"] or getPlayerClosestToMouse();
					if TABLE_TableIndirection["currentAimLockTarget%0"] then
						TABLE_TableIndirection["targetPredictedPosition%0"] = DA_HOOD_PREDICTION(TABLE_TableIndirection["currentAimLockTarget%0"], TABLE_TableIndirection["aimlockTargetPart%0"]);
						if (typeof(TABLE_TableIndirection["targetPredictedPosition%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\109\5\142\31\42\29\66", "\203\59\96\237\107\69\111\113")) then
							TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
						end
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimTab%0"]:CreateDropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\23\161\228", "\183\68\118\204\129\81\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\164\125\164\59\131\28\185", "\226\110\205\16\132\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\211\244\208\78\229\208", "\33\139\163\128\185")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\116\77\22\204\82\86\16\241\71\76\13\209\89", "\190\55\56\100")]=TABLE_TableIndirection["defaultTargetPart%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\112\163\61\25", "\147\54\207\92\126\115\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\56\56\109\12\108\25\55\57\124\10", "\30\109\81\85\29\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\112\88\186\52\223\255\244", "\156\159\17\52\214\86\190")]=function(Option)
		TABLE_TableIndirection["aimlockTargetPart%0"] = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimTab%0"]:CreateKeybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\238\176\185", "\220\206\143\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\116\32\27\215\207\217\198\86\40\14\218\197\220\130", "\178\230\29\77\119\184\172"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\171\24\9\114\246\225\149\15\2\117\241\251\186", "\152\149\222\106\123\23")]="E",[LUAOBFUSACTOR_DECRYPT_STR_0("\245\41\250\71\129\210\15\248\87\176\207\39\245\87", "\213\189\70\150\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\89\117\15", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\69\140\16\179\12\168\71\132\5\190\6\173\72\135\16\189\8", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\71\12\127\169\170\219\77", "\203\184\38\96\19\203")]=function(Keybind)
		shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock = not shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\125\127\78", "\174\89\19\25\33"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\53\18\106\246\199\35\32\29\86", "\107\79\114\50\46\151\231"), LUAOBFUSACTOR_DECRYPT_STR_0("\24\175\184\37\133\58\188\128\28\168\180\43\134\60\179\154\121", "\160\89\198\213\73\234\89\215") .. tostring(shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\102\112\185\251", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\215\28\58\102\201\214\11\56", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\80\86\56\204\10\81\114\43\197\17\64", "\169\100\37\36\74")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\139\163\87", "\48\96\231\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\84\26\36\53\215\172\136\238\86\15\42", "\227\168\58\110\77\121\184\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\61\179\76\179\218\114\174", "\197\27\92\223\32\209\187\17")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.antiLockBool = toggleBool;
		resetHipheight();
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.antiLockBool do
				antiLock();
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\94\206\254", "\155\99\63\163")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\223\181\132\249\168\141\210\170\205\139\129\145\222\173\155\188\150", "\228\226\177\193\237\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\165\49\244\49\190\55\208\53\188\54\227", "\134\84\208\67")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\53\160\135\91", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\52\255\121\203\53\232\123\213\63\248\127\235\44\238\98\193\54\234\119", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\117\10\63\76\85\123\95", "\24\52\20\102\83\46\52")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool = toggleBool;
		if not toggleBool then
			return;
		end
		task.spawn(function()
			while shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool do
				antiLockResolve();
				task.wait();
			end
		end);
	end});
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\225\28\17\27\44\229\12\9\1", "\111\164\79\65\68")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\227\234\179\225\13\203\229\241\166", "\138\166\185\227\190\78")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\238\71\245\8\113\2\58\227\81", "\121\171\20\165\87\50\67")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\227\11\137\9\154\35\229\16\156", "\98\166\88\217\86\217")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\211\197\73\62\165\253\213\222\92", "\188\150\150\25\97\230")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\255\186\111\61\47\204\249\161\122", "\141\186\233\63\98\108")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\212\217\28\137\6\208\201\4\147", "\69\145\138\76\214")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\206\132\140", "\118\16\175\233\233\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\141\38\174\239\135\110\203\161\59\186\236\135\120\143", "\29\235\228\85\219\142\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\193\168\207\114\64\51\100\60\216\175\216", "\50\93\180\218\189\23\46\71")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\168\90\75", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\76\207\161\251\113\30\57\75\221\182\246\120\9\26\73\221\179", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\168\207\51\91\7\228", "\58\100\143\196\163\81")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\63\113\19\156\28\104\198\38\63", "\110\122\34\67\195\95\41\133")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\80\130\107\117\245\84\146\115\111", "\182\21\209\59\42")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\146\100\245\34\2\159\148\127\224", "\222\215\55\165\125\65")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\9\226\246\37\209\224\206\98\9", "\42\76\177\166\122\146\161\141")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\139\8\203", "\22\197\234\101\174\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\59\189", "\230\77\84\197\188\22\207\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\1\212\238\137\175\228\3\248\24\211\249", "\85\153\116\166\156\236\193\144")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\76\180", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\158\107\93\221\183\178\212\52\138", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\88\5\83\10\88\10\84", "\63\104\57\105")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\46\180\148\123\40\166\135\108\46", "\36\107\231\196")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\120\134\146\184\126\148\129\175\120", "\231\61\213\194")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\9\211\132\43\168\15", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\211\220\170\197\213\248\174\199\212\203", "\174\207\171\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\242\12\244", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\26\246\2\45\4\227\24\45\14\224\0\45\14", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\189\237\204\234\198\186", "\174\139\165\209\129")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\134\128\210\254\229\34\83\80\134", "\24\195\211\130\161\166\99\16")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\99\48\217\19\112\55\101\43\204", "\118\38\99\137\76\51")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\39\8\23", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\186\166\224\21\82\187", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\69\78\170\198\165\54\26\81\80\173\198", "\66\76\48\60\216\163\203")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\138\120\244", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\57\67\88\164\172\41\86\94\165\171\38\82\75", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\77\238\240\117\251\79\233", "\23\154\44\130\156")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\52\149\157\145\21\50\50\142\136", "\115\113\198\205\206\86")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\161\100\206\101\167\118\221\114\161", "\58\228\55\158")].SetTracersVisibility(toggleBool);
	end});
	TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\77\156\237\10\104\129\225\65\77\152\162\103\87\134\231\83", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\160\54\241\69\49\254\131\37\239\85\58", "\95\138\213\68\131\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\36\160\68", "\22\74\72\193\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\108\240\87\60\112\231\83\57\105\233\87\34\124\253\94\32\120\227", "\56\76\25\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\192\167\42\205\95\194\160", "\175\62\161\203\70")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool = toggleBool;
		if not toggleBool then
			return;
		end
		TABLE_TableIndirection["dropsFolder%0"] = getDropFolder();
		if not TABLE_TableIndirection["dropsFolder%0"] then
			return;
		end
		while shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool do
			for _, OBJ in ipairs(TABLE_TableIndirection["dropsFolder%0"]:GetChildren()) do
				if not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool then
					break;
				end
				if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\220\208\22\5\61\207\215", "\85\92\189\163\115")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\4\163\62\61\48\136\34\55\57", "\88\73\204\80"))) then
					continue;
				end
				if (OBJ.Transparency == 1) then
					continue;
				end
				teleportFunc(OBJ.Position);
				repeat
					pcall(custom_fireclickdetector, OBJ);
					task.wait(1.6);
				until not OBJ or (OBJ.parent ~= TABLE_TableIndirection["dropsFolder%0"]) or not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool 
			end
			task.wait();
		end
	end});
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\150\19\69\44\201\61", "\186\78\227\112\38\73"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\112\189\113\82\58\212\88\242\81", "\26\156\55\157\53\51"), "CG's Da Hood Script Loaded!");
end, function()
end);
