SMODS.Sound({ key = "evil", path = "vampire.ogg" })

SMODS.Atlas({
	key = "evil_seal",
	path = "evilseal.png",
	px = 71,
	py = 96,
})

SMODS.Seal({
	name = "evil_seal",
	key = "evil_seal",
	badge_colour = HEX("00FF00"),
	config = { x_chips = 1.25, mult = 0.25 },
	loc_txt = {
		label = "EVIL Seal",
		name = "EVIL Seal",
		text = {
			"{X:chips,C:white}X#1#{} Chips",
			"{C:mult}+#2#{} Mult",
		},
	},

	sound = { sound = "bilili_evil", per = 1, vol = 0.4 },

	loc_vars = function(self, info_queue)
		return { vars = { self.config.x_chips, self.config.mult } }
	end,
	atlas = "evil_seal",
	pos = { x = 0, y = 0 },

	calculate = function(self, card, context)
		local _evilcounter = 0
		local _evilcounter2 = 0

		if G.hand.highlighted[1] then
			for i = 1, #G.hand.highlighted do
				if G.hand.highlighted[i].seal == "bilili_evil_seal" then
					_evilcounter = _evilcounter + 1
				end
			end
		end

		if G.play.cards[1] then
			for i = 1, #G.play.cards do
				if G.play.cards[i].seal == "bilili_evil_seal" then
					_evilcounter2 = _evilcounter2 + 1
				end
			end
		end

		if _evilcounter >= 5 or _evilcounter2 >= 5 then
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				blocking = false,
				blockable = false,
				delay = 0.7,
				func = function()
					G.GAME.current_round.current_hand.handname = "Evil Chain"
					if G.GAME.current_round.current_hand.handname == "Evil Chain" then
						return true
					end
				end,
			}))
		end

		if context.main_scoring and context.cardarea == G.play then
			if string.find(G.GAME.current_round.current_hand.handname, "Evil Chain") then
				check_for_unlock({ type = "ach_evilchain" })
			end
			return {
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound("bilili_evil")
						return true
					end,
				})),

				message = "MUHAHAHA",
				mult = self.config.mult,
				chips = self.config.chips,
				dollars = self.config.money,
				x_mult = self.config.x_mult,
			}
		end
	end,
})
