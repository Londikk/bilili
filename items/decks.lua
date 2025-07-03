SMODS.Atlas({
	key = "decks",
	path = "deck_splash.png",
	px = 71,
	py = 95,
})

SMODS.Back({ --wazaaaap
	key = "whatsapp",
	loc_txt = {
		name = "Whatsappa-geddon",
		text = {
			"Start with a",
			"{C:attention} Boss of Whatsapp{}.",
		},
	},

	config = { hands = 0, discards = 0 },
	pos = { x = 1, y = 0 },
	order = 1,
	atlas = "decks",
	unlocked = true,

	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
				if G.consumeables then
					local card =
						create_card("Joker", G.jokers, nil, nil, nil, nil, "j_bilili_whatsappboss", "bilili_deck")
					card:add_to_deck()
					G.jokers:emplace(card)
					return true
				end
			end,
		}))
	end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
			unlock_card(self)
		else
			unlock_card(self)
		end
	end,
})

SMODS.Back({ --LEBRON!!!
	key = "lebron_deck",
	loc_txt = {
		name = "LEBROOOON!!!",
		text = {
			"Start with the ",
			"{C:edition,E:1,s:2} LEGENDARY{}",
			"LeBron Joker!",
			"AND with {C:blue}+1 hand{}",
		},
	},

	config = { hands = 1, discards = 0 },
	pos = { x = 0, y = 0 },
	order = 1,
	atlas = "decks",
	unlocked = true,

	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
				if G.consumeables then
					local card = create_card("Joker", G.jokers, nil, nil, nil, nil, "j_bilili_lebron", "bilili_deck")
					card:add_to_deck()
					G.jokers:emplace(card)
					return true
				end
			end,
		}))
	end,
	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
			unlock_card(self)
		else
			unlock_card(self)
		end
	end,
})

SMODS.Back({ --weirdo
	key = "weirdo",
	loc_txt = {
		name = "Weirdo",
		text = {
			"{C:blue}+3 hands",
			"{C:dark_edition}-1 Joker slot and discards",
			"{C:inactive}cuz i like my shi small iykyk",
		},
	},

	config = { hands = 3, joker_slot = -1, discards = -1 },

	pos = { x = 2, y = 0 },
	order = 1,
	atlas = "decks",
	unlocked = true,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
			unlock_card(self)
		else
			unlock_card(self)
		end
	end,
})

SMODS.Back({
	key = "evilfamily",
	loc_txt = {
		name = "Evil Essence",
		text = {
			"Start with ",
			"either Mrs. or Mr. {C:red}EVIL{}",
			"And with 1 {C:tarot}Vampire{}",
		},
	},

	config = { hands = 0, discards = 0 },
	pos = { x = 3, y = 0 },
	order = 1,
	atlas = "decks",
	unlocked = true,

	apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
				if G.consumeables then
					if math.random(1, 2) == 1 then
						local card =
							create_card("Joker", G.jokers, nil, nil, nil, nil, "j_bilili_mrevil", "bilili_deck")
						card:add_to_deck()
						G.jokers:emplace(card)
						if true then
							local card = create_card(
								"Tarot",
								G.consumeables,
								nil,
								nil,
								nil,
								nil,
								"c_bilili_vampir",
								"bilili_deck"
							)
							card:add_to_deck()
							--card:start_materialize()
							G.consumeables:emplace(card)
						end
					else
						local card =
							create_card("Joker", G.jokers, nil, nil, nil, nil, "j_bilili_mrsevil", "bilili_deck")
						card:add_to_deck()
						G.jokers:emplace(card)

						if true then
							local card = create_card(
								"Tarot",
								G.consumeables,
								nil,
								nil,
								nil,
								nil,
								"c_bilili_vampir",
								"bilili_deck"
							)
							card:add_to_deck()
							--card:start_materialize()
							G.consumeables:emplace(card)
						end
					end
					return true
				end
			end,
		}))
	end,

	check_for_unlock = function(self, args)
		if args.type == "win_deck" then
			unlock_card(self)
		else
			unlock_card(self)
		end
	end,
})
