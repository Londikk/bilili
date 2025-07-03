--why the fuck r u reading this shit? k listen
--i was so dumb, i got an idea of creating this mod, while
--taking a "small inspiration" from the yahi's mod
--if u r looking at this code, then i have actually released this shit of
--a mod, and u SOMEHOW found it(99% sure it is not popular)
--so just thanks for downloading and have a good day

if not bilili then
	bilili = {}
end
local global = {}

SMODS.current_mod.description_loc_vars = function()
	return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.4, shadow = true }
end

SMODS.current_mod.extra_tabs = function() --Creds
	local scale = 0.5
	return {
		label = "Creds",
		tab_definition_function = function()
			return {
				n = G.UIT.ROOT,
				config = {
					align = "cm",
					padding = 0.05,
					colour = G.C.CLEAR,
				},
				nodes = {
					{
						n = G.UIT.R,
						config = {
							align = "cm",
							padding = 0.05,
						},
						nodes = {
							{
								n = G.UIT.T,
								config = {
									text = "(mainly) By Londi_",
									shadow = false,
									scale = scale * 2,
									colour = G.C.PURPLE,
								},
							},
						},
					},
					{
						n = G.UIT.R,
						config = {
							align = "cm",
							padding = 0,
						},
						nodes = {
							{
								n = G.UIT.T,
								config = {
									text = "Basically everything(including the idea)",
									shadow = false,
									scale = scale * 0.666,
									colour = G.C.INACTIVE,
								},
							},
						},
					},
					{
						n = G.UIT.R,
						config = {
							align = "cm",
							padding = 0,
						},
						nodes = {
							{
								n = G.UIT.T,
								config = {
									text = "Yahimod(and the yahi himself ofc)",
									shadow = false,
									scale = scale,
									colour = G.C.MONEY,
								},
							},
						},
					},
					{
						n = G.UIT.R,
						config = {
							align = "cm",
							padding = 0.05,
						},
						nodes = {
							{
								n = G.UIT.T,
								config = {
									text = "thats all folks!",
									shadow = false,
									scale = scale * 2,
									colour = G.C.RED,
								},
							},
						},
					},
				},
			}
		end,
	}
end

--i hope u die in a fire--

G.C.BILIPURPL = HEX("b74054")
G.C.BILIGREEN = HEX("b4dd1e")
G.C.mid_flash = 0
G.C.vort_time = 7
G.C.vort_speed = 0.4

--											i watch u mf
--               .              +$$$$$$$$$$.              . .$$$$$$$$$$+                 .
--            ..                +$$$$$$$$&$     .            $&$$$$$$$$$$;
--     .                      ;$&$.      ..                 .        .$$$&$.     .              .
--   .                     $&$$$$$.  .$$$$$$$$$$$$$$$&$$$$$$$$$$$$$X.  .$$$$$             .
--    .             .      $&$;    .x$XXXXXXX$$$$$$$$$$$$$$XXXXXXX$x.    ;$&X     .
--         .                      +X+:.......:x$X;:...:+XXx:.......;+X$+      .
--                              ;Xx;.        .;x+;. ...+xx;.        :+x;        .              .
--                        .X$$$$x;.    .      :+xxxxxxxXXx;.          .+X$$$$.             .       .
--  .                    x$$$Xx+:..     .:.   ..;+X$$XXx;:.   ...      .:+X$$$X                     .
--                     ;XXX$Xx;.       :X&$;    .;xX$Xx;.    :X$X;     . .;x$$$$+    .
--                .  ;Xx;;;xXx;      .x$&&&$+:  .:xX$Xx:   .+$&&&X+:      :xXxxxxX$X.
--                 .+x+;:..;xx;     .+x$&&&&$x: .;xX$Xx;  .+X$&&&&X;.    .:xX+;;;+xx.            .   .
-- .             .;x+:.....+XX;     .;+xX$$X+;.  :xX$Xx;  .;+xX$Xx+:.     :xx+:...:;xX$x    .
--  .     .       ;x+.  ..:+XX;     .:;++xx;:.  .;x$$Xx;  .:;++x+;:.     .;xx+:....;x$$+
--               .+X+.  ..:+Xx;.       :;;;.    .;xXXXx;.    .:;:.       .:xx+;:...;x$$x.
--   .       ...;+;:......:;+++;:.      ......:;;;;+;;;;;;::....       .:;+++;;:...:;+xX$:        .
--            :xx;.  .....:::;+x+;..      .;++xx+;:...:;+xx+;;.       .;xx+;::::.....:;xX+.
--         .  :Xx;.  .....:::;;++++++;;;;;;;;;;;:......::;;:;;;++;;;;++++;;::::......:+X$$$:
--          . ;x+:. ......::::::;;+xxxxxxx;::...............:;+xxxxXxx+;:::::........:;+X$$;
--  .     .X$$+:.   ...........::;;;;;;;:::..................::::;;;;;::................:;X$$.
--  .    ..X$X;.     ..........;;;::..................................::;:...............;x$$.
--        .x$X+.    ..........;xXx;:.................................:;+Xx;........:::...:+$X.
-- .      .X$X;.............:;x$$x;:..................................;x$$x;:....::;;::..:+XX
--        ;xXx;:.::;:.......:+X$$X+:..................................;x$$X+:....:;;;;;::;+xx:.:
--      ;XX+:.:;+;:..........:+$$$x;::..............................:;+X$$+:...::::::;;++;::;+X$+
--     +$$x;...+++............:+xXxx+;:...........................:;+xxxx;:...:;;;::::+xX+:.:+X$+
--     ;$$X;..:+x+:.............:;xXx+;;::.......................:;xX$x;....::;;;;::::;xX+:.:+X$;
--     +$$X+:.:+Xx:...............:++xXXxx+::...............::;+xXXXx+;....:::;;;:::::+XX+:..+X$;
--      ;XX+::;xXx:.................:+xX$Xx+;::;;;;;;;;;:;;;+xXX$$$x:.....:::::::::::;xXXx;::+X$+
--       .;+x+;;;++;;.................:;+++xxxXXX$XXXXXXXxXXXx+;:::......:::::::..:;+xx+;;+++:::.    .
--         X$X+:.:x$X;...................:;+xxXXXXXXXXXxxxxx+;.........:::;;:::...:+X$x;.:+XX
--        .$$X+:.:x$X;...............................................::;;;;;:::...:+X$x;.:+$X.
--         .+Xx+;+++++;:............................................::;;;;:::..::;++x+++;++;.    .
--           .;xx+;;;xXX+:.........................................::;;;;:::..::+XXx+;;+xXx.      ..
--         ;+;+x+;::;x$$Xx;............................:......::::::;;;;:::.::+x$$$x;:;;+xxx:
--       :xXXXx;;:::;xX$Xx+;............................:::..:::::;:::::::::;++xX$Xx;:::;+xXXx:      .
--       +$XXXx+;:::;;;;:::;+;:..............::::::::::::::::::::::::::..:;++;:::;;;;:::;+xX$$X+.
--     .xXXXx+;;:::::::....;xXx;:...........::::::::::::::::::::::::::.::+xXx:....::::::;;+xxX$$+
--     +$$X+;..............+X$Xx+;:........:..::::::::::::::::::.....::;+xX$X:......:::::::;;xX$;
--     +XXXx+;:.........:;+X$$$Xx+:::;+;:............................:;+xX$$$X+;:.....::::;;+xXX;
--      .x$$XX+:.......:+$$$$$$$$+;:+x$X+;::::::::::::::::::::::::::.:;x$$$$&&$$+:...::::;+XX$X$;
--            :x+++++++xx:  ;$$$$x;:+X$$$XxxxxxxxxxxxxxxxXxxxxxxXxx+::;x$$$;  :XXx++++++xxx:
--            :$$$$$$$$$X.    +$$x::;X$$$$$$$$$&$$$$$$$$$$$$$$$$$$$x;::+$$$.    ;X$$$$$$$+
--                           .:$$+::;X$&&;          .           +$$x;.:+$&$.
--                           .:$$+::;X$+                        ;$$x;::+$&$.
--                            ;$$x;:+X$;              .         ;$$X+;;x$&$.                      .
--                            :$$x;;+$$;                .       ;$$X+;;x$$$.      .   .  .  .
--                .         .X$$$x;;+$$;                        ;$$X+;;x$$$.
--           .    +XXXXXXXXXX$$XXx;;+X$$$.                      ;$$X+;;xX$$XXXXXXXXXXXX;       .
--        . .X: :Xxxxxxxxxxxxxxx+;;;+X$$$:   .                .$$$$X+;;;xxxxxxxxxxxxxxXxX$X.
--         xXXXXXx+;;;;;;;;;;;;;;:::;xX$$$$    .    .        $$$$$Xx;:::;;;;;;;;;;;;;;+xXXXXx
--       +X+;;;;;;;::.........:::...::;x$$$.          .    ..$&$Xx;::......::::.:...:::;+;;+;+x$;
--  .  ;$$X+:..:::::::::::::::::::::..:;X$$.     .          .$$$X;:..::::::::::::::::::::...:+X$;
--     ;$XXXxxxxxxxxxxxxxxxxxxxxxxxxxxxXX$X          .       X$$$xxxxxxxxxxxxXxxxxxxxxxxxx+xxxXX;
--       +$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$x.          .     .x$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$X;

-- main menu type shi
local oldfunc = Game.main_menu
Game.main_menu = function(change_context)
	local ret = oldfunc(change_context)
	G.SPLASH_BACK:define_draw_steps({
		{
			shader = "splash",
			send = {
				{ name = "time", ref_table = G.TIMERS, ref_value = "REAL_SHADER" },
				{ name = "vort_speed", val = G.C.vort_speed },
				{ name = "colour_1", ref_table = G.C, ref_value = "BILIPURPL" },
				{ name = "colour_2", ref_table = G.C, ref_value = "BILIGREEN" },
				{ name = "mid_flash", ref_table = G.C, ref_value = "mid_flash" },
			},
		},
	})
	return ret
end

local mod_path = "" .. SMODS.current_mod.path
bilili.path = mod_path
bilili.config = SMODS.current_mod.config

G.effectmanager = {}

SMODS.ObjectType({ --joker pool
	key = "BililiADD",
	default = "j_reserved_parking",
	cards = {},
	inject = function(self)
		SMODS.ObjectType.inject(self)
	end,
})

SMODS.ObjectType({ --joker-waifus pool
	key = "Waifu",
	default = "j_reserved_parking",
	cards = {},
	inject = function(self)
		SMODS.ObjectType.inject(self)
	end,
})

-- load /items
local files = NFS.getDirectoryItems(mod_path .. "items")
for _, file in ipairs(files) do
	print("[BILILI] Loading lua file " .. file)
	local f, err = SMODS.load_file("items/" .. file)
	if err then
		error(err)
	end
	f()
end

--Load lib files
local files = NFS.getDirectoryItems(mod_path .. "libs/")
for _, file in ipairs(files) do
	print("[BILILI] Loading lib file " .. file)
	local f, err = SMODS.load_file("libs/" .. file)
	if err then
		error(err)
	end
	f()
end

--Load Localization file
local files = NFS.getDirectoryItems(mod_path .. "localization")
for _, file in ipairs(files) do
	print("[BILILI] Loading localization file " .. file)
	local f, err = SMODS.load_file("localization/" .. file)
	if err then
		error(err)
	end
	f()
end
