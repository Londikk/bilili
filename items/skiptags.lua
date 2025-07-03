SMODS.Atlas({
	key = "tagatlas",
	path = "tagatlas.png",
	px = 32,
	py = 32,
})

SMODS.Sound({
	key = "pluh",
	path = "pluh.ogg",
})

SMODS.Tag({ --giver
	key = "tag_bililigive",
	loc_txt = {
		name = "Cool looking tag",
		text = { "Grants you a", "{C:attention}BililiMod Jonkler{}" },
	},
	atlas = "tagatlas",
	pos = { x = 0, y = 0 },
	min_ante = 0,

	apply = function(self, tag, context)
		tag:yep("+", G.C.DARK_EDITION, print())

		local card = create_card("BililiADD", G.Jokers, nil, nil, nil, nil, nil, "biliworld")
		card:add_to_deck()
		G.jokers:emplace(card)
		play_sound("bilili_pluh")

		tag.triggered = true
		return true
	end,
})

SMODS.Tag({ --vidoe
	key = "tag_bililivid",
	loc_txt = {
		name = "Video Tag",
		text = { "Plays an", "{C:attention}important video{}" },
	},
	atlas = "tagatlas",
	pos = { x = 1, y = 0 },

	apply = function(self, tag, context)
		tag:yep("+", G.C.DARK_EDITION, print())

		G.FUNCS.overlay_menu({
			definition = create_UIBox_custom_video1("horsef", "sad"),
			config = { no_esc = true },
		})
		tag.triggered = true
		return true
	end,
})
