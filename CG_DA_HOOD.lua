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
	TABLE_TableIndirection["Vars%0"].PlayerMouse = TABLE_TableIndirection["Vars%0"].Player:GetMouse();
	shared.CG_DA_HOOD_CONNECTIONS = shared.CG_DA_HOOD_CONNECTIONS or {};
	shared.CG_DA_HOOD_BACKUP_DATA = shared.CG_DA_HOOD_BACKUP_DATA or {[LUAOBFUSACTOR_DECRYPT_STR_0("\130\193\29\227\192\170\208\233\190", "\129\202\168\109\171\165\195\183")]=nil};
	shared.CG_DA_HOOD_TOGGLES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\86\35\209\242\27\229\41\122\56\215\210", "\134\66\56\87\184\190\116")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\63\7\175\16\199\46\54\55\3\12\168\22\231\55\48\30\62\6\183", "\85\92\81\105\219\121\139\65")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\188\96\73\125\198\248\161\99\73\115\200\217\188\71\75", "\191\157\211\48\37\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\17\224\21\28\211\22\250\27\24\208\16\248", "\90\191\127\148\124")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\146\58\24\72\142\45\28\109\151\3\24\118\130\55\53\119\136\34", "\119\24\231\78")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\4\150\127\253\108\34\189\8\139\107\254\108\52\166\18\135\101\243\108", "\113\226\77\197\42\188\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\31\249\153\53\21\255\151\53\25\248", "\213\90\118\148")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\61\149\66\89\94\35\164\66\68\85\41\128\89\97\84\45\191", "\45\59\78\212\54")]=false};
	TABLE_TableIndirection["Vars%0"].Character = TABLE_TableIndirection["Vars%0"].Player.Character or TABLE_TableIndirection["Vars%0"].Player.CharacterAdded:Wait();
	local function bypassAntiCheat()
		TABLE_TableIndirection["Character%0"] = TABLE_TableIndirection["Vars%0"].Character;
		if not TABLE_TableIndirection["Character%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["Character%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\35\85\145\130\150\58", "\144\112\54\227\235\230\78\205")) then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\159\39\12\253\220\104\176\58\6\236\196", "\59\211\72\111\156\176"));
			if not TABLE_TableIndirection["HasLocalScript%0"] then
				continue;
			end
			TABLE_TableIndirection["HasLocalScript%0"]:Destroy();
			OBJ:Destroy();
		end
	end
	bypassAntiCheat();
	local function calculateHipHeight(character)
		TABLE_TableIndirection["joints%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\126\134\241\57\96\134\238\40", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\65\187\65\180\91\191\68\136\91\185\84\138\85\164\84", "\32\218\52\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\5\62\165", "\58\46\119\81\200\145\208\37")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\131", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\64\78\120\145\204\130\117\96\99\145\255\136\122\76\114\139\234", "\235\18\33\23\229\158")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\96\187\211\175\126\187\204\190", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\126\107\76\201\123\239\246\98\115", "\128\132\17\28\41\187\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\32\9\55", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\33\164\95\245\94\25\40\184\58\170\72\207\90\27\7\184", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\165", "\49\197\202\67\126\115\100\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\82\216\33\148\126\87\39\105\214\46\161\66\74\54\88\215\36\133\88\74", "\62\87\59\191\73\224\54")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\215\3\232\221\201\3\247\204", "\169\135\98\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\126\35\92\233\6\216\219\114\54\120\248\52", "\168\171\23\68\52\157\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\99\250\160", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\174\192\243\67\215\137\183\245\242\80\222\148\179\198\248\95\242\133\169\211", "\159\224\199\167\155\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\252", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\244\75\58\6\103\116\137\248\126\59\21\109\110\152\252\79\58\31\73\116\152", "\26\236\157\44\82\114\44")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\26\47\199\79\4\47\216\94", "\59\74\78\181")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\216\93\82\167\9\222\77\95\161\9\212\93", "\211\69\177\58\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\247\118\248", "\171\215\133\25\149\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\193\53\242\251\27\242\71\228\250\59\253\206\36\232\67\226\192\63\255\225\36", "\34\129\168\82\154\143\80\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\189", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\75\53\222\17\224\76\57\218\0\243\75\53\247\17\213\67\49\222\8\196\76\38", "\101\161\34\82\182")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\75\234\245\227\143\43", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\54\254\249\42\25\246\254\42", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\223\27\216", "\215\157\173\116\181\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\189\140\250\206\20\186\128\254\223\7\189\140\211\206\33\181\136\250\215\48\186\159", "\186\85\212\235\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\142", "\56\162\225\118\158\89\142")]=nil}};
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
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\75\4\210\161\43\214\91", "\184\60\101\160\207\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\18\165\60\152\48\194\84\179\62\134", "\220\81\226\28"), TABLE_TableIndirection["notiMessages%0"].NotRealDH);
	end
	local function isPlayerLoadedCheck()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return false;
		end
		return (TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\53\224\174\215\211\248\63\250\163\223\207\227\44\246\170\218\216", "\167\115\181\226\155\138")) and true) or false;
	end
	local function getPhoneTool()
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\192\35\228\87\107\112\197\233", "\166\130\66\135\60\27\17"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		TABLE_TableIndirection["characterTool%0"] = TABLE_TableIndirection["Vars%0"].Character and TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\122\198\122\62\65\119", "\80\36\42\174\21"));
		return TABLE_TableIndirection["characterTool%0"] or TABLE_TableIndirection["backPackFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\117\32\63\117\64\21\10", "\26\46\112\87"));
	end
	local function resetHipheight()
		if not isPlayerLoadedCheck() then
			return;
		end
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\145\54\166\117\177\176\76\176", "\212\217\67\203\20\223\223\37"));
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
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\131\174\221", "\178\218\237\200"), LUAOBFUSACTOR_DECRYPT_STR_0("\149\146\166\244\183\245\206\223\185\177", "\176\214\213\134"), TABLE_TableIndirection["notiMessages%0"].WaitingForPlayerToLoad);
	repeat
		task.wait();
	until isPlayerLoadedCheck() 
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\184\181\215\173\69\74", "\57\148\205\214\180\200\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\49\218\117\16\119\82\213\58\59\114", "\22\114\157\85\84"), TABLE_TableIndirection["notiMessages%0"].PlayerLoadedIn);
	isPlayerLoaded = true;
	resetHipheight();
	for _, signalConnection in ipairs(shared.CG_DA_HOOD_CONNECTIONS) do
		pcall(signalConnection.Disconnect, signalConnection);
	end
	table.clear(shared.CG_DA_HOOD_CONNECTIONS);
	local function getIgnoredFolder()
		return workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\237\204\29\203\79\243\172", "\200\164\171\115\164\61\150"));
	end
	local function getItemsDroppedFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\151\224\6\72\144\154\230\12\85", "\227\222\148\99\37"));
	end
	local function getDropFolder()
		TABLE_TableIndirection["ignoredFolder%0"] = getIgnoredFolder();
		if not TABLE_TableIndirection["ignoredFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["ignoredFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\23\64\93\230", "\153\83\50\50\150"));
	end
	local function getBodyEffectsFolder()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		return TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\121\119\5\86\173\75\88\117\103\15", "\45\61\22\19\124\19\203"));
	end
	local function getMovementFolder()
		TABLE_TableIndirection["BodyEffectsFolder%0"] = getBodyEffectsFolder();
		if not TABLE_TableIndirection["BodyEffectsFolder%0"] then
			return;
		end
		return TABLE_TableIndirection["BodyEffectsFolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\236\29\27\240\15\117\183\213", "\217\161\114\109\149\98\16"));
	end
	local function teleportFunc(teleportPos)
		if not isPlayerLoadedCheck() then
			return;
		end
		if (not TABLE_TableIndirection["Vars%0"].Character or (typeof(teleportPos) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\36\37\59\104\179\102\65", "\20\114\64\88\28\220"))) then
			return;
		end
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\20\223\181\246\223\180\53\51\221\187\236\224\188\35\21", "\221\81\97\178\212\152\176"));
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
		if ((typeof(clickPart) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\228\233\14\239\27\195\228\24", "\122\173\135\125\155")) or not clickPart:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\166\192\19\188\15\48\218\144", "\168\228\161\96\217\95\81"))) then
			return;
		end
		TABLE_TableIndirection["detector%0"] = clickPart:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\248\221\39\95\36\115\222\197\43\95\59\88\201", "\55\187\177\78\60\79"));
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
		TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\5\219\82\234\72\192\137\41\252\80\228\82\255\129\63\218", "\224\77\174\63\139\38\175"));
		if not TABLE_TableIndirection["humanoidRootPart%0"] then
			return;
		end
		TABLE_TableIndirection["Humanoid%0"] = TABLE_TableIndirection["Vars%0"].Character:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\172\84\85\47\138\78\81\42", "\78\228\33\56"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\230\107\191\2\139\193\119\182\49\138\193\106\130\2\151\218", "\229\174\30\210\99"));
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
			TABLE_TableIndirection["humanoidRootPart%0"] = TABLE_TableIndirection["Character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\248\139\80\227\50\48\31\223\137\94\249\13\56\9\249", "\89\123\141\230\49\141\93"));
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
	TABLE_TableIndirection["noPlayerSlownDownToggle%0"] = TABLE_TableIndirection["PlayerTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\112\251\9", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\169\109\76\235\231\24\162\34\104\233", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\28\181\68\184\234\3\159\3\5\178\83", "\201\98\105\199\54\221\132\119")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\0\130\38", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\80\204\230\233\35\215\90\204\226\235\10\204\95\196", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\161\1\35\193\215\163\6", "\163\182\192\109\79")]=function(toggleBool)
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
	TABLE_TableIndirection["antiFlingToggle%0"] = TABLE_TableIndirection["PlayerTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\26\39\13\197", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\8\25\228\120\32\1\228\54\1", "\141\88\102\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\70\216\98\31\51\65\247\178\95\223\117", "\161\211\51\170\16\122\93\53")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\162\179\47", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\116\64\7\21\74\115\90\9\21\74\123\83", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\22\43\74\90\22\36\77", "\38\56\119\71")]=function(toggleBool)
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
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\238\85\211", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\143\243\70\220\221\193\222\71\214\219\128\235\64\208\216\146", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\19\36\89\137\134\193\32", "\162\75\114\72\53\235\231")]=function()
		loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\132\40\80\242\64\88\195\115\86\227\68\76\139\53\80\234\70\0\153\47\65\240\80\13\130\40\65\236\71\76\143\51\73\173\81\13\152\56\65\244\107\38\195\27\118\215\113\42\185\30\123\214\118\33\164\115\73\227\90\12\195\24\69\202\92\13\136\29\74\235\94\3\152\53\75\236\102\12\128\51\71\233\86\16\194\48\81\227", "\98\236\92\36\130\51"), true))();
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\24\1\191", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\124\14\115\78\13\158\64\87\16\112\91\30\143\4\51\43\107\78\3\153", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\30\94\203\174\115\136\13", "\235\102\127\50\167\204\18")]=function()
		TABLE_TableIndirection["itemsDroppedFolder%0"] = getItemsDroppedFolder();
		if not TABLE_TableIndirection["itemsDroppedFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["itemsDroppedFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\160\230\38\116\47\66\181", "\78\48\193\149\67\36")) then
				continue;
			end
			TABLE_TableIndirection["hasTool%0"] = OBJ:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\4\17\143\20", "\33\80\126\224\120"));
			if not TABLE_TableIndirection["hasTool%0"] then
				continue;
			end
			teleportFunc(OBJ.Position);
			task.wait(0.15);
		end
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\169\14\193", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\245\8\42\226\134\248\8", "\194\231\148\100\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\77\205\175\244\201\69\71", "\168\38\44\161\195\150")]=function()
		if (not TABLE_TableIndirection["MainEvent%0"] or not TABLE_TableIndirection["Vars%0"].Character) then
			return;
		end
		TABLE_TableIndirection["phoneTool%0"] = getPhoneTool();
		if not TABLE_TableIndirection["phoneTool%0"] then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\162\253\129\125\32\233\181\29", "\118\224\156\226\22\80\136\214"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, Player in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
			if (Player == TABLE_TableIndirection["Vars%0"].Player) then
				continue;
			end
			TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["Vars%0"].Character;
			TABLE_TableIndirection["MainEvent%0"]:FireServer(LUAOBFUSACTOR_DECRYPT_STR_0("\114\230\86\142\71\205\88\140\78", "\224\34\142\57"), Player.Name);
			task.wait(0.1);
			TABLE_TableIndirection["phoneTool%0"].Parent = TABLE_TableIndirection["backPackFolder%0"];
		end
	end});
	TABLE_TableIndirection["PlayerTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\166\200\216", "\110\190\199\165\189\19\145\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\250\98\225\155\135\251\231\123\168\191\200\213\231\100", "\167\186\139\23\136\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\180\132\1\24\180\139\6", "\109\122\213\232")]=function()
		if not TABLE_TableIndirection["Vars%0"].Character then
			return;
		end
		TABLE_TableIndirection["backPackFolder%0"] = TABLE_TableIndirection["Vars%0"].Player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\204\246\161\59\254\246\161\59", "\80\142\151\194"));
		if not TABLE_TableIndirection["backPackFolder%0"] then
			return;
		end
		for _, OBJ in ipairs(TABLE_TableIndirection["backPackFolder%0"]:GetChildren()) do
			if not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\55\201\120\64", "\44\99\166\23")) then
				continue;
			end
			OBJ.Parent = TABLE_TableIndirection["Vars%0"].Character;
			task.wait(0.1);
		end
	end});
	if isRealDaHoodGame() then
		TABLE_TableIndirection["TeleportsTab%0"] = TABLE_TableIndirection["window%0"]:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\72\242\37\51\35\171\110\227\58", "\196\28\151\73\86\83"), 4034483344);
		for teleportName, teleportPosition in pairs(TABLE_TableIndirection["teleportLocations%0"]) do
			TABLE_TableIndirection["TeleportsTab%0"]:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\2\36\21", "\22\147\99\73\112\226\56\120")]=teleportName,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\116\238\249\143\185\118\233", "\237\216\21\130\149")]=function()
				return pcall(teleportFunc, teleportPosition);
			end});
		end
	end
	TABLE_TableIndirection["defaultTargetPart%0"] = TABLE_TableIndirection["targetParts%0"][1];
	TABLE_TableIndirection["aimlockTargetPart%0"] = TABLE_TableIndirection["defaultTargetPart%0"];
	TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
	TABLE_TableIndirection["aimLockToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\79\82\90", "\62\226\46\63\63\208\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\16\88\195\51\2\44\85", "\62\133\121\53\227\127\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\1\32\231\211\160\182\38\21\62\224\211", "\194\112\116\82\149\182\206")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\164\77\31", "\110\89\200\44\120\160\130")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\202\70\74\76\73\48\107\167\194\76", "\45\203\163\43\38\35\42\91"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\132\208\47\133\168\87\217", "\52\178\229\188\67\231\201")]=function(toggleBool)
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
						TABLE_TableIndirection["Camera%0"].CFrame = CFrame.new(TABLE_TableIndirection["Camera%0"].CFrame.Position, TABLE_TableIndirection["targetPredictedPosition%0"]);
					end
				end
				task.wait();
			end
		end);
	end});
	TABLE_TableIndirection["aimlockPartDropMenu%0"] = TABLE_TableIndirection["AimTab%0"]:CreateDropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\64\93\1", "\67\65\33\48\100\151\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\238\163\152\195\222\245\186", "\147\191\135\206\184"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\56\178\200\215\93\161", "\210\228\72\198\161\184\51")]=TABLE_TableIndirection["targetParts%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\21\92\225\2\118\192\34\102\227\4\122\193\56", "\174\86\41\147\112\19")]=TABLE_TableIndirection["defaultTargetPart%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\125\12\140\12", "\203\59\96\237\107\69\111\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\31\161\241\48\226\195\34\26\173\230", "\183\68\118\204\129\81\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\172\124\232\9\131\13\166", "\226\110\205\16\132\107")]=function(Option)
		TABLE_TableIndirection["aimlockTargetPart%0"] = Option;
	end});
	TABLE_TableIndirection["aimLockKeyBindElement%0"] = TABLE_TableIndirection["AimTab%0"]:CreateKeybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\194\237\220", "\33\139\163\128\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\81\9\210\88\91\15\158\124\93\29\220\94\86\0", "\190\55\56\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\186\46\12\22\237\231\125\170\37\28\26\237\247", "\147\54\207\92\126\115\131")]="E",[LUAOBFUSACTOR_DECRYPT_STR_0("\37\62\57\121\57\113\36\63\33\120\31\127\14\37", "\30\109\81\85\29\109")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\125\85\177", "\156\159\17\52\214\86\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\230\176\176\161\236\182\183\171\246\191\181\160\235\187\176\175\232", "\220\206\143\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\124\33\27\218\205\209\141", "\178\230\29\77\119\184\172")]=function(Keybind)
		shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock = not shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock;
		if not shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock then
			TABLE_TableIndirection["currentAimLockTarget%0"] = nil;
		end
		TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\176\12\20", "\152\149\222\106\123\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\254\1\182\103\180\157\14\249\76\177", "\213\189\70\150\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\110\92\121\4\64\86\127\72\106\91\117\10\67\80\112\82\15", "\104\47\53\20") .. tostring(shared.CG_DA_HOOD_TOGGLES.IsAttemptingToLock));
	end});
	TABLE_TableIndirection["antiLockToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\72\20\122\235\135\215\69\11", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\102\107\83\203\55\103\79\64\194\44\118", "\174\89\19\25\33")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\9\30\83\73", "\107\79\114\50\46\151\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\168\161\32\166\54\180\203\31\170\180\46", "\160\89\198\213\73\234\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\112\184\242\199\73\114\191", "\165\40\17\212\158")]=function(toggleBool)
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
	TABLE_TableIndirection["antiLockResolverToggle%0"] = TABLE_TableIndirection["AimTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\5\54", "\70\133\185\104\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\75\80\35\137\40\74\71\33\137\54\64\87\37\197\18\64\86", "\169\100\37\36\74"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\146\176\66\5\137\182\102\1\139\183\85", "\48\96\231\194")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\86\15\42", "\227\168\58\110\77\121\184\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\50\171\73\157\212\114\174\73\57\172\79\189\205\116\183\93\48\190\71", "\197\27\92\223\32\209\187\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\94\207\247\1\94\192\240", "\155\99\63\163")]=function(toggleBool)
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
	getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\167\226\145\178\154\165\161\249\132", "\228\226\177\193\237\217")].UnLoad();
	makeConnection(TABLE_TableIndirection["Services%0"].Players.PlayerAdded, function(Plr)
		if getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\17\131\19\217\23\145\0\206\17", "\134\84\208\67")].SETTINGS.BOXES_ENABLED then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\54\159\182\99\48\141\165\116\54", "\60\115\204\230")].LoadBox(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\194\9\219\79\196\27\200\88\194", "\16\135\90\139")].SETTINGS.TRACERS_ENABLED == true) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\113\71\54\12\109\117\91\124\81", "\24\52\20\102\83\46\52")].LoadTracers(Plr);
		end
		if (getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\225\28\17\27\44\229\12\9\1", "\111\164\79\65\68")].SETTINGS.NAME_TAG == truwe) then
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\227\234\179\225\13\203\229\241\166", "\138\166\185\227\190\78")].LoadNameTag(Plr);
		end
	end);
	TABLE_TableIndirection["visualsEnabledToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\117\200\50", "\121\171\20\165\87\50\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\49\170\35\184\14\213\120\156\56\184\0\202\61\189", "\98\166\88\217\86\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\227\107\19\131\210\226\192\120\13\147\217", "\188\150\150\25\97\230")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\133\94\5", "\141\186\233\63\98\108")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\227\63\163\36\253\249\41\184\36\243\230\41\178\3\253\235\43", "\69\145\138\76\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\206\133\133\189\23\115\196", "\118\16\175\233\233\223")]=function(toggleBool)
		shared.CG_DA_HOOD_TOGGLES.VISUALS_ENABLED_BOOL = toggleBool;
		if not toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\174\183\5\132\205\170\94\163\161", "\29\235\228\85\219\142\235")].LoadBox(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\138\226\84\111\4\122\24", "\50\93\180\218\189\23\46\71")].LoadTracers(Plr);
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\251\151\107\115\103\253\107\246\129", "\40\190\196\59\44\36\188")].LoadNameTag(Plr);
			end
		else
			getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\25\118\236\139\217\92\46\20\96", "\109\92\37\188\212\154\29")].UnLoad();
		end
	end});
	TABLE_TableIndirection["espBoxesToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\169\198", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\77\59", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\164\73\88\211\123\165\109\75\218\96\180", "\182\21\209\59\42")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\91\196\26", "\222\215\55\165\125\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\194\214\24\253\217\235\70\45\214", "\42\76\177\166\122\146\161\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\123\119\166\129", "\22\197\234\101\174\25")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\8\7\149\227\85\142\244\174\8", "\230\77\84\197\188\22\207\183")].LoadBox(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\220\39\246\195\175\128\211\29\220", "\85\153\116\166\156\236\193\144")].SetBoxVisibility(toggleBool);
	end});
	TABLE_TableIndirection["espNameTagsToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\225\64\182", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90\198\174\179", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\76\27\77\13\87\29\105\9\85\28\90", "\63\104\57\105")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\139\165\67", "\36\107\231\196")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\166\178\137\92\184\167\147\92\178\164\139\92\178", "\231\61\213\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\49\127\11\172\62\120", "\19\105\205\93")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\140\59\238\190\28\136\43\246\164", "\95\201\104\190\225")].LoadNameTag(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\138\248\241\241\140\234\226\230\138", "\174\207\171\161")].SetNameTag(toggleBool);
	end});
	TABLE_TableIndirection["espTracersToggle%0"] = TABLE_TableIndirection["VisualsTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\27\231\15\41\27\245", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\208\163\243\203\229\209\135\224\194\254\192", "\174\139\165\209\129")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\191\227\198", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\16\249\56\65\23\69\6\251\63\85\26\71\4", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\39\9\30\11\33\254\45", "\64\157\70\101\114\105")]=function(toggleBool)
		if toggleBool then
			for _, Plr in ipairs(TABLE_TableIndirection["Services%0"].Players:GetPlayers()) do
				if (Plr == TABLE_TableIndirection["Vars%0"].Player) then
					continue;
				end
				getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\101\155\151\220\51\97\139\143\198", "\112\32\200\199\131")].LoadTracers(Plr);
			end
		end
		getgenv()[LUAOBFUSACTOR_DECRYPT_STR_0("\9\99\108\135\224\138\1\4\117", "\66\76\48\60\216\163\203")].SetTracersVisibility(toggleBool);
	end});
	TABLE_TableIndirection["autoPickupMoneyToggle%0"] = TABLE_TableIndirection["AutoFarmTab%0"]:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\135\116\246", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\63\71\67\246\157\35\80\71\163\189\106\126\67\184\168\51", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\89\240\238\114\244\88\212\253\123\239\73", "\23\154\44\130\156")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\170\172\169", "\115\113\198\205\206\86")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\66\234\85\148\94\253\81\145\71\243\85\138\82\231\92\136\86\249", "\58\228\55\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\136\220\34\62\172\54\191", "\85\212\233\176\78\92\205")]=function(toggleBool)
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
				if (not OBJ:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\104\89\155\231\122\89\154\246", "\130\42\56\232")) or (OBJ.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\199\186\42\230\89\27\248\186\52", "\95\138\213\68\131\32"))) then
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
	TABLE_TableIndirection["NotiLib%0"].new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\61\162\64\115\57\59", "\22\74\72\193\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\15\94\164\124\45\57\204\87\35\125", "\56\76\25\132"), "CG's Da Hood Script Loaded!");
end, function()
end);
