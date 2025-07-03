-- Booster Atlas
SMODS.Atlas({
	key = "boosters",
	path = "boosters.png",
	px = 71,
	py = 96,
})

--base pack--
SMODS.Booster({
	key = "booster_bililiworld",
	group_key = "k_bilili_booster_group",
	atlas = "boosters",
	pos = { x = 0, y = 0 },
	discovered = true,
	loc_txt = {
		name = "BILILI PACK",
		text = {
			"Feel free to pick {C:attention}#1#{} out",
			"of {C:attention}#2#{} BILILI Jokers.",
		},
		group_name = "Choose already!",
	},

	draw_hand = false,
	config = {
		options = 3,
		choose = 1,
	},

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.choose, card.ability.options } }
	end,

	weight = 1,
	cost = 5,
	kind = "BililiPack",

	create_card = function(self, card, i)
		ease_background_color(HEX("b4dd1e"))
		return SMODS.create_card({
			set = "BililiADD",
			area = G.pack_cards,
			skip_materialize = false,
			soulable = true,
		})
	end,
	select_card = "jokers",

	in_pool = function()
		return true
	end,
})

--base pack leg--
SMODS.Booster({
	key = "booster_bililiworldleg",
	group_key = "k_bilili_booster_group",
	atlas = "boosters",
	pos = { x = 1, y = 0 },
	discovered = true,
	loc_txt = {
		name = "BILILI PACK",
		text = {
			"Feel free to pick {C:attention}#1#{} out",
			"of {C:attention}#2#{} {C:edition,E:1,s:2}LEGENDARY{}",
			"BILILI Jokers",
		},
		group_name = "Choose already!",
	},

	draw_hand = false,
	config = {
		options = 3,
		choose = 1,
	},

	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.choose, card.ability.options } }
	end,

	weight = 1,
	cost = 8,
	kind = "BililiPack",

	create_card = function(self, card, i)
		ease_background_color(HEX("b4dd1e"))
		return SMODS.create_card({
			legendary = true,
			set = "BililiADD",
			area = G.pack_cards,
			skip_materialize = false,
			soulable = true,
		})
	end,
	select_card = "jokers",

	in_pool = function()
		return true
	end,
})
