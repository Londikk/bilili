SMODS.Atlas({
	key = "bilili_vampir",
	path = "tarot_vampir.png",
	px = 71,
	py = 96,
})

SMODS.Sound({
	key = "vampire",
	path = "vampire.ogg",
})

SMODS.Consumable({
	key = "bilili_vampir",
	config = {
		max_highlighted = 2,
		extra = "evil_seal",
	},
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_SEALS[(card.ability or self.config).extra]
		return { vars = { (card.ability or self.config).max_highlighted } }
	end,
	set = "Tarot",
	object_type = "Consumable",
	name = "vampir",
	soul_set = "Tarot",
	loc_txt = {
		name = "Vampir",
		text = {
			"Apply {C:red}EVIL Seal{} to",
			"#1# selected cards",
		},
	},
	cost = 4,
	atlas = "bilili_vampir",
	pos = { x = 0, y = 0 },
	use = function(self, card, area, copier)
		for i = 1, math.min(#G.hand.highlighted, card.ability.max_highlighted) do
			G.E_MANAGER:add_event(Event({
				func = function()
					play_sound("bilili_vampire")
					card:juice_up(0.3, 0.5)
					return true
				end,
			}))

			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.1,
				func = function()
					G.hand.highlighted[i].seal = "bilili_evil_seal"
					return true
				end,
			}))
			delay(0.5)
		end
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				G.hand:unhighlight_all()
				return true
			end,
		}))
	end,
})
