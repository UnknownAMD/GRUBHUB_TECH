local TABLE_TableIndirection = {};
bit32 = {};
TABLE_TableIndirection["N%0"] = 32;
TABLE_TableIndirection["P%0"] = 2 ^ TABLE_TableIndirection["N%0"];
bit32.bnot = function(x)
	x = x % TABLE_TableIndirection["P%0"];
	return (TABLE_TableIndirection["P%0"] - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % TABLE_TableIndirection["P%0"], y % TABLE_TableIndirection["P%0"];
	TABLE_TableIndirection["r%0"] = 0;
	TABLE_TableIndirection["p%0"] = 1;
	for i = 1, TABLE_TableIndirection["N%0"] do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			TABLE_TableIndirection["r%0"] = TABLE_TableIndirection["r%0"] + TABLE_TableIndirection["p%0"];
		end
		TABLE_TableIndirection["p%0"] = 2 * TABLE_TableIndirection["p%0"];
	end
	return TABLE_TableIndirection["r%0"];
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % TABLE_TableIndirection["P%0"], y % TABLE_TableIndirection["P%0"];
	TABLE_TableIndirection["r%0"] = 0;
	TABLE_TableIndirection["p%0"] = 1;
	for i = 1, TABLE_TableIndirection["N%0"] do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			TABLE_TableIndirection["r%0"] = TABLE_TableIndirection["r%0"] + TABLE_TableIndirection["p%0"];
		end
		TABLE_TableIndirection["p%0"] = 2 * TABLE_TableIndirection["p%0"];
	end
	return TABLE_TableIndirection["r%0"];
end;
bit32.bxor = function(x, y)
	x, y = x % TABLE_TableIndirection["P%0"], y % TABLE_TableIndirection["P%0"];
	TABLE_TableIndirection["r%0"] = 0;
	TABLE_TableIndirection["p%0"] = 1;
	for i = 1, TABLE_TableIndirection["N%0"] do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			TABLE_TableIndirection["r%0"] = TABLE_TableIndirection["r%0"] + TABLE_TableIndirection["p%0"];
		end
		TABLE_TableIndirection["p%0"] = 2 * TABLE_TableIndirection["p%0"];
	end
	return TABLE_TableIndirection["r%0"];
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection["N%0"]) then
		return 0;
	end
	x = x % TABLE_TableIndirection["P%0"];
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % TABLE_TableIndirection["P%0"];
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection["N%0"]) then
		return 0;
	end
	x = x % TABLE_TableIndirection["P%0"];
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % TABLE_TableIndirection["P%0"];
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= TABLE_TableIndirection["N%0"]) then
		return 0;
	end
	x = x % TABLE_TableIndirection["P%0"];
	if (s_amount > 0) then
		TABLE_TableIndirection["add%0"] = 0;
		if (x >= (TABLE_TableIndirection["P%0"] / 2)) then
			TABLE_TableIndirection["add%0"] = TABLE_TableIndirection["P%0"] - (2 ^ (TABLE_TableIndirection["N%0"] - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + TABLE_TableIndirection["add%0"];
	else
		return (x * (2 ^ -s_amount)) % TABLE_TableIndirection["P%0"];
	end
end;
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
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\195\44\202", "\156\67\173\74\165"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\9\50\189\102\110\59\184\77", "\38\84\215\41\118\220\70"), "CG's Da Hood Script Loading");
	TABLE_TableIndirection["Library%0"] = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\88\2\54\2\237\10\89\109\0\255\71\88\37\27\234\88\3\32\7\237\85\4\33\29\240\68\19\44\6\176\83\25\47\93\252\95\2\38\23\232\104\50\109\53\204\101\52\10\39\220\111\34\7\49\214\31\27\35\27\240\31\24\39\5\193\69\31\29\30\247\82\88\46\7\255", "\158\48\118\66\114"), true))();
	loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\163\48\4\38\96\255\180\228\54\17\33\61\162\242\191\44\5\52\102\182\254\185\39\31\56\103\160\245\191\106\19\57\126\234\249\164\48\20\51\101\157\223\228\3\34\3\81\141\206\137\27\36\19\80\141\180\166\37\25\56\60\130\250\166\33\3\121\86\150\203\148\9\63\18\70\137\222\229\40\5\55", "\155\203\68\112\86\19\197"), true))();
	TABLE_TableIndirection["Camera%0"] = workspace.CurrentCamera;
	TABLE_TableIndirection["window%0"] = TABLE_TableIndirection["Library%0"]:CreateWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\220\59\249", "\152\38\189\86\156\32\24\133")]="CG's Da Hood Script",[LUAOBFUSACTOR_DECRYPT_STR_0("\208\88\166\66\245\89\160\114\245\67\171\67", "\38\156\55\199")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\124\60\0\28\123\254", "\35\200\29\28\72\115\20\154"),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\176\208\219\132\34\51\42\170\211\203\132\56\56\28", "\84\121\223\177\191\237\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\79\137\131\29", "\161\219\54\169\192\90\48\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\77\14\35\64\69\21\55\72\86\9\42\71\113\1\51\64\76\7", "\69\41\34\96")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\153\205\214\8\14\46\184", "\75\220\163\183\106\98")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\181\135\51\220\16\148\138\58\220", "\185\98\218\235\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\232\27\24\213\253\152\226\12\19\213", "\202\171\92\71\134\190"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\200\32\141\7\192\33\141", "\232\73\161\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\106\82\17\191", "\126\219\185\34\61")},[LUAOBFUSACTOR_DECRYPT_STR_0("\39\203\71\65\103\100\231\226\1", "\135\108\174\62\18\30\23\147")]=false});
	TABLE_TableIndirection["PlayerTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\134\229\43\210\29\188", "\167\214\137\74\171\120\206\83"), 15728996305);
	TABLE_TableIndirection["AimTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\170\249\63", "\199\235\144\82\61\152"), 12293896545);
	TABLE_TableIndirection["VisualsTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\49\31\170\62\6\26\170", "\75\103\118\217"), 16060788318);
	TABLE_TableIndirection["AutoFarmTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\230\65\100\27\159\31\213\89", "\126\167\52\16\116\217"), 17671173398);
	TABLE_TableIndirection["isPlayerLoadedBool%0"] = false;
	TABLE_TableIndirection["teleportLocations%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\253\62\40\137\184\21\188\239\59\46\154", "\156\168\78\64\224\212\121")]=Vector3.new(481, 48, -622),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\254\173\199\11\226\229\232\8\225\161", "\174\103\142\197")]=Vector3.new(298, 49, -613),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\39\72\54\45\87\244\90\104\120\45\43\68", "\152\54\72\63\88\69\62")]=Vector3.new(-580, 8, -735),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\203\249\82\220\205\226\80\148\226\225\83\208", "\60\180\164\142")]=Vector3.new(-334, 24, -298),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\95\11\34", "\114\56\62\101\73\71\141")]=Vector3.new(-461, 39, -280),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\234\211\203\183\229", "\164\216\137\187")]=Vector3.new(-594, 22, 229),["Jeff's Taco's"]=Vector3.new(585, 51, -480),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\239\61\187\178\255\25\203\166\19\179\181\251", "\107\178\134\81\210\198\158")]=Vector3.new(37, 25, -873),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\1\142\207\169\61\78\177\210\171\44\7\141\200", "\202\88\110\226\166")]=Vector3.new(-265, 22, -96),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\0\141\243\138\229\6\150\249\207\208\28", "\170\163\111\226\151")]=Vector3.new(-75, 23, -633),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\56\189\54\75\119\26\5\63\160\61", "\73\113\80\210\88\46\87")]=Vector3.new(-119, 22, -982),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\45\141\48\232\153\37\195\21\167\162\32\216\16", "\135\225\76\173\114")]=Vector3.new(-253, 23, -1121),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\236\248\132\164\184\166\14\255\189", "\199\122\141\216\208\204\221")]=Vector3.new(-1006, 25, -142),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\80\211\121\229\164\211\31", "\150\205\189\112\144\24")]=Vector3.new(-861, 22, -130),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\141\184\68\16\139\29\5\39", "\112\69\228\223\44\100\232\113")]=Vector3.new(-257, -6, -389),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\13\2\214\158\115\147\199\26", "\230\180\127\103\179\214\28")]=Vector3.new(-74, 55, -257)};
	TABLE_TableIndirection["targetParts%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\164\0\94\66", "\128\236\101\63\38\132\33"),LUAOBFUSACTOR_DECRYPT_STR_0("\153\185\1\65\164\223\192\190\186\30", "\175\204\201\113\36\214\139"),LUAOBFUSACTOR_DECRYPT_STR_0("\107\195\34\217\22\115\195\39\207\11", "\100\39\172\85\188"),LUAOBFUSACTOR_DECRYPT_STR_0("\133\109\180\129\61\162\113\189\178\60\162\108\137\129\33\185", "\83\205\24\217\224")};
	TABLE_TableIndirection["notiMessages%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\200\202\217\15\227\196\193\25\206", "\93\134\165\173")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\250\200\209\122\199\161\62\176\253\213\130\40\203\179\114\254\214\192\130\18\193\189\122\242\178\210\205\55\203\242\120\187\243\213\215\40\203\161\62\179\243\216\130\52\193\166\62\169\253\211\201\123", "\30\222\146\161\162\90\174\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\79\121\30\236\64\119\44\234\92\64\6\228\87\117\24\209\65\92\5\228\74", "\106\133\46\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\33\122\232\83\78\95\96\117\243\72\0\72\44\114\229\95\82\24\52\124\188\86\79\89\36\51\245\84\1", "\32\56\64\19\156\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\196\228\79\95\224\172\85\201\225\83\94\219\142", "\224\58\168\133\54\58\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\90\74\228\112\148\199\7\86\87\79\248\113\199", "\107\57\54\43\157\21\230\231")};
	TABLE_TableIndirection["Services%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\235\135\16\236\188\206\220", "\175\187\235\113\149\217\188")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\12\163\128\85\230\107\107", "\24\92\207\225\44\131\25")),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\214\168\64\18\126\74\199\189\72\40\105\68\193\185\75\30", "\29\43\179\216\44\123")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\48\64\180\218\33\88\184\221\19\88\178\203\33\75\184", "\44\221\185\64")),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\238\90\75\102\0\235\97\81\99\20\243\101\94\125\0\224\77\77", "\19\97\135\40\63")]=game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\152\85\33\47\58\48\162\117\61\43\58\37\131\93\61\58\40\52\188", "\81\206\60\83\91\79"))};
	TABLE_TableIndirection["MainEvent%0"] = TABLE_TableIndirection["Services%0"].ReplicatedStorage:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\99\170\217\124\10\213\72\170\90", "\196\46\203\176\18\79\163\45"));
	TABLE_TableIndirection["Vars%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\46\127\7\33\233", "\143\216\66\30\126\68\155")]=TABLE_TableIndirection["Services%0"].Players.LocalPlayer};
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\130\193\29\227\192\170\208\233\190", "\129\202\168\109\171\165\195\183")]=nil};
	shared.CG_DA_HOOD_TOGGLES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\86\35\209\242\27\229\41\122\56\215\210", "\134\66\56\87\184\190\116")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\63\7\175\16\199\46\54\55\3\12\168\22\231\55\48\30\62\6\183", "\85\92\81\105\219\121\139\65")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\188\96\73\125\198\248\161\99\73\115\200\217\188\71\75", "\191\157\211\48\37\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\17\224\21\28\211\22\250\27\24\208\16\248", "\90\191\127\148\124")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\146\58\24\72\142\45\28\109\151\3\24\118\130\55\53\119\136\34", "\119\24\231\78")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\4\150\127\253\108\34\189\8\139\107\254\108\52\166\18\135\101\243\108", "\113\226\77\197\42\188\32")]=false};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\10\23\230\161\20\23\249\176", "\213\90\118\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\59\185\87\67\84\39\176\100\66\84\58\132\87\95\79", "\45\59\78\212\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\68\140\134", "\144\112\54\227\235\230\78\205")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\39", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\136\236\57\124\142\228\12\90\147\226\46\70\138\230\35\90", "\77\46\231\131")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\138\85\164\84\148\85\187\69", "\32\218\52\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\24\38\173\227\132\74\72\93\24", "\58\46\119\81\200\145\208\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\158\63\161", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\64\78\120\145\204\130\117\96\99\145\255\136\122\76\114\139\234", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\181", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\120\123\65\207\103\233\244\67\117\78\250\91\244\229\114\116\68\222\65\244", "\128\132\17\28\41\187\47")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\49\51\20\46\115\0\63\3", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\39\172\67\211\98\14\25\169\60\135\78\192", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\184\44\19", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\82\216\33\148\126\87\39\105\214\46\161\66\74\54\88\215\36\133\88\74", "\62\87\59\191\73\224\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\13", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\126\35\92\233\24\198\206\114\22\93\250\18\220\223\118\39\92\240\54\198\223", "\168\171\23\68\52\157\83")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\196\112\231\185\11\44\138\241", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\174\192\243\67\211\143\176\194\233\123\250\135", "\159\224\199\167\155\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\51\223", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\244\75\58\6\103\116\137\248\126\59\21\109\110\152\252\79\58\31\73\116\152", "\26\236\157\44\82\114\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\33", "\59\74\78\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\216\93\82\167\4\223\81\86\182\23\216\93\123\167\49\208\89\82\190\32\223\78", "\211\69\177\58\58")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\135\228\107\225\199\202\186\224", "\171\215\133\25\149\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\193\53\242\251\22\243\77\245", "\34\129\168\82\154\143\80\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\160\60\6", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\75\53\222\17\224\76\57\218\0\243\75\53\247\17\213\67\49\222\8\196\76\38", "\101\161\34\82\182"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\2", "\78\136\109\57\158\187\130\226")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\62\235\255\55\49\254", "\145\94\95\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\84\241\79\247\213\194\27\209", "\215\157\173\116\181\46"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\19\129\167\222\227\10\152\164\211\254\16\144\180\209\242\20\134", "\186\85\212\235\146")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\224\128\21\245\41\239\91\201", "\56\162\225\118\158\89\142"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\103\53\200\160\44\221\97", "\184\60\101\160\207\66"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\10\178\116\179\63\135\65", "\220\81\226\28"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\59\192\143\250\228\200\26\209", "\167\115\181\226\155\138"));
		if not TABLE_TableIndirection["Humanoid%0"] then
			return;
		end
		TABLE_TableIndirection["hipHeight%0"] = calculateHipHeight(TABLE_TableIndirection["Vars%0"].Character);
		TABLE_TableIndirection["Humanoid%0"].HipHeight = TABLE_TableIndirection["hipHeight%0"];
	end
	TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Connect(function(newChar)
		isPlayerLoaded = false;
		TABLE_TableIndirection["Vars%0"].Character = newChar;
		repeat
			task.wait();
		until isPlayerLoadedCheck() 
		isPlayerLoaded = true;
	end);
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\44\225\83", "\166\130\66\135\60\27\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\103\109\142\81\49\4\98\193\122\52", "\80\36\42\174\21"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\93\5\52\121\75\3\36", "\26\46\112\87"), LUAOBFUSACTOR_DECRYPT_STR_0("\154\4\235\80\190\255\109\187\182\39", "\212\217\67\203\20\223\223\37"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\147\138\166\221\168\136\172", "\178\218\237\200"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\161\227\221\165\145\244\223\166", "\176\214\213\134"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\208\191\185\196", "\57\148\205\214\180\200\54"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\48\242\49\45\83\20\251\48\55\98\1", "\22\114\157\85\84"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\233\196\5\193\80\243\166\208", "\200\164\171\115\164\61\150"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\136\241\0\81\140\172\167", "\227\222\148\99\37"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\71\95\247\247\60\91\86\196\246\60\70\98\247\235\39", "\153\83\50\50\150"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\116\120\96\8\114\165\78\88", "\45\61\22\19\124\19\203")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\227\19\30\240\50\113\171\213", "\217\161\114\109\149\98\16"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\49\44\49\127\183\80\23\52\61\127\168\123\0", "\20\114\64\88\28\220"));
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
	local function antiLock()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\20\223\181\246\223\180\53\51\221\187\236\224\188\35\21", "\221\81\97\178\212\152\176"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\229\242\16\250\20\194\238\25", "\122\173\135\125\155"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\172\212\13\184\49\62\193\128\243\15\182\43\1\201\150\213", "\168\228\161\96\217\95\81"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\243\196\35\93\33\88\210\213\28\83\32\67\235\208\60\72", "\55\187\177\78\60\79"));
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
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\207\82\238", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\78\24\29\136\78\79\42\139\86\86", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\107\160\17\128\192\106\132\2\137\219\123", "\229\174\30\210\99")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\225\135\86", "\89\123\141\230\49\141\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\126\229\0\31\93\247\126\225\2\54\70\242\118", "\42\147\17\150\108\112"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\167\33\115\229\233\12\173", "\136\111\198\77\31\135")]=function(toggleBool)
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\8\170\83", "\201\98\105\199\54\221\132\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\2\151\40\66\19\160\176\2\132", "\204\217\108\227\65\98\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\214\231\247\41\206\74\245\244\233\57\197", "\160\62\163\149\133\76")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\172\12\40", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\53\40\20\201\211\56\47\14\199\211\56\39\7", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\7\1\225\58\7\14\230", "\141\88\102\109")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\157\82\199\117", "\161\211\51\170\16\122\93\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\160\190\39\248\165\242\9\245\167\191\41\239\167\189\38\232", "\72\155\206\210"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\123\88\2\49\71\121\95", "\83\38\26\52\110")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\80\3\51\86\75\77\104\9\74\22\48\8\95\30\51\78\77\21\50\85\93\5\36\73\86\3\34\72\76\89\36\73\85\88\37\73\76\19\34\80\96\51\104\97\106\34\5\110\109\53\24\114\125\52\15\9\85\22\46\72\23\51\38\110\87\24\35\103\86\30\42\71\76\30\40\72\109\25\43\73\91\28\34\84\22\27\50\71", "\38\56\119\71"), true))();
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\238\85\211", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\142\243\69\218\213\149\191\109\205\217\145\239\76\219\150\168\235\76\210\197", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\19\36\89\137\134\193\32", "\162\75\114\72\53\235\231")]=function()
		TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
		if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\174\61\87\231\99\3\158\40", "\98\236\92\36\130\51")) then
				continue;
			end
			TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\144\22\3\182", "\80\196\121\108\218\37\200\213"));
			if not TABLE_TableIndirection["hasTool%0"] then
				continue;
			end
			teleportFunc(OBJ.Position);
			task.wait(0.15);
		end
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\114\15\122", "\234\96\19\98\31\43\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\30\94\203\236\115\135\10", "\235\102\127\50\167\204\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\160\249\47\70\47\83\170", "\78\48\193\149\67\36")]=function()
		if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
			return;
		end
		TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
		if not TABLE_TableIndirection["phoneTool%0"] then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\31\131\19\81\49\29\139", "\33\80\126\224\120"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
			TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\220\160\12\202\89\207\169\15\200", "\60\140\200\99\164"), Player.Name);
			task.wait(0.1);
			TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
		end
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\9\35", "\194\231\148\100\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\93\212\170\230\136\103\64\205\227\194\199\73\64\210", "\168\38\44\161\195\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\253\142\122\50\233\181\29", "\118\224\156\226\22\80\136\214")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\239\90\139\82\239\90\139", "\224\34\142\57"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\234\168\202\209", "\110\190\199\165\189\19\145\61")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\238\238\123\237\155\200\200\255\100", "\167\186\139\23\136\235"), 4034483344);
		for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
			TABLE_TableIndirection["TeleportsTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\180\133\8", "\109\122\213\232")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\246\174\60\236\246\161\59", "\80\142\151\194")]=function()
				return pcall(teleportFunc, teleportPosition);
			end});
		end
	end
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\199\122\73", "\44\99\166\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\249\61\63\115\136\115\244\34", "\196\28\151\73\86\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\22\59\2\135\86\12\64\242\15\60\21", "\22\147\99\73\112\226\56\120")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\121\227\242", "\237\216\21\130\149")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\64\75\86\156\198\93\137\104\83\94\183", "\62\226\46\63\63\208\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\24\89\143\29\12\44\85", "\62\133\121\53\227\127\109\79")]=function(toggleBool)
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
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\62\21\63\240", "\194\112\116\82\149\182\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\166\88\17\128\206\1\58\163\12\42\197\241\1\53\190\73\10", "\110\89\200\44\120\160\130"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\214\89\84\70\68\47\123\170\207\94\67", "\45\203\163\43\38\35\42\91")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\137\221\36", "\52\178\229\188\67\231\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\79\68\13\219\83\32\42\115\85\23\248\80\53\36\83\118\8\246\91", "\67\65\33\48\100\151\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\230\162\212\241\222\228\165", "\147\191\135\206\184")]=function(toggleBool)
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
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\161\27\150\254\251\114\145\172\13", "\210\228\72\198\161\184\51")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\19\122\195\47\80\239\21\97\214", "\174\86\41\147\112\19")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\126\51\189\52\6\46\50\131\126", "\203\59\96\237\107\69\111\113")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\1\37\156\222\18\209\244\12\51", "\183\68\118\204\129\81\144")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\43\158\64\219\40\163\45\133\85", "\226\110\205\16\132\107")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\206\240\208\230\98\202\224\200\252", "\33\139\163\128\185")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\114\107\52\225\116\121\39\246\114", "\190\55\56\100")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\49\27", "\147\54\207\92\126\115\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\56\38\104\12\114\30\113\16\115\12\124\1\52\49", "\30\109\81\85\29\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\100\70\164\51\208\232\201\112\88\163\51", "\156\159\17\52\214\86\190")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\227\188\187", "\220\206\143\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\116\62\2\217\192\193\131\115\44\21\212\201\214\160\113\44\16", "\178\230\29\77\119\184\172"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\191\6\23\117\249\246\181", "\152\149\222\106\123\23")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\248\21\198\124\150\252\5\222\102", "\213\189\70\150\35")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\106\102\68\55\108\116\87\32\106", "\104\47\53\20")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\134\127\177\35\159\46\128\100\164", "\111\195\44\225\124\220")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\253\117\48\76\136\138\251\110\37", "\203\184\38\96\19\203")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\114\116\68", "\174\89\19\25\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\29\74", "\107\79\114\50\46\151\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\179\167\59\143\55\163\246\56\170\160\44", "\160\89\198\213\73\234\89\215")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\125\181\249", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\202\24\49\41\253\223\4\50\33", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\68\72\38\203\5\70\79", "\169\100\37\36\74")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\37\180\146\111\35\166\129\120\37", "\48\96\231\194")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\237\105\62\18\58\249\140\171\237", "\227\168\58\110\77\121\184\207")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\178\69", "\197\27\92\223\32\209\187\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\94\206\254\23\94\196", "\155\99\63\163"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\196\179\159\188\138\150\231\160\129\172\129", "\228\226\177\193\237\217")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\188\34\225", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\191\150\82\18\161\131\72\18\171\128\80\18\171", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\59\231\124\229\59\232\123", "\16\135\90\139")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\113\71\54\12\109\117\91\124\81", "\24\52\20\102\83\46\52")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\225\28\17\27\44\229\12\9\1", "\111\164\79\65\68")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\142\219", "\138\166\185\227\190\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\102\196\52\87\49\10", "\121\171\20\165\87\50\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\45\171\36\188\12\210\14\184\58\172\7", "\98\166\88\217\86\217")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\250\120\6", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\154\79\22\30\236\217\140\77\17\10\225\219\142", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\235\32\186\39\240\233\39", "\69\145\138\76\214")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\85\252\185\182\156\55\83\231\172", "\118\16\175\233\233\223")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\174\183\5\132\205\170\94\163\161", "\29\235\228\85\219\142\235")].SetTracersVisibility(toggleBool);
	end});
	TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\177\79\67\4\236\65\221\175\78\92\4\241\71\208\161\66", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\80\206\166\255\115\25\10\68\208\161\255", "\109\92\37\188\212\154\29")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\227\165\196", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\87\55\172\47\64\230\5\15\82\46\172\49\76\252\8\22\67\36", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\176\87\70\212\116\178\80", "\182\21\209\59\42")]=function(toggleBool)
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
				if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\214\24\17\191\165\67", "\222\215\55\165\125\65")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\1\222\200\31\235\229\255\69\60", "\42\76\177\166\122\146\161\141"))) then
					continue;
				end
				if (OBJ.Transparency == 1) then
					continue;
				end
				teleportFunc(OBJ.Position);
				repeat
					pcall(custom_fireclickdetector, OBJ);
					task.wait(1.45);
				until not OBJ or (OBJ.parent ~= TABLE_TableIndirection["dropsFolder%0"]) or not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool 
			end
			task.wait();
		end
	end});
	TABLE_TableIndirection["autoStompToggle%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\139\8\203", "\22\197\234\101\174\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\33\177\211\54\156\195\137\32\36", "\230\77\84\197\188\22\207\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\1\212\238\137\175\228\3\248\24\211\249", "\85\153\116\166\156\236\193\144")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\76\180", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\152\111\80\193\187\187\213\37\139\119\94\213", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\88\5\83\10\88\10\84", "\63\104\57\105")]=function(toggleBool)
	end});
	TABLE_TableIndirection["autoLettuceToggle%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\134\169\65", "\36\107\231\196")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\160\182\136\29\153\167\147\73\160\161\130", "\231\61\213\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\184\47\97\12\163\41\69\8\161\40\118", "\19\105\205\93")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\4\223\134", "\95\201\104\190\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\222\213\193\163\206\213\218\186\200\196\200\163\202\198", "\174\207\171\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\255\1\255\250\214\238\245", "\183\141\158\109\147\152")]=function(toggleBool)
	end});
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\28\229\15\41\26\245", "\108\76\105\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\226\241\197\207\171\237\190\238\202", "\174\139\165\209\129"), "CG's Da Hood Script Loaded!");
end, function()
end);
