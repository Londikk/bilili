SMODS.Atlas({
	key = "Jokers",
	path = "Jokers.png",
	px = 71,
	py = 95,
})
--jonkler--
SMODS.Joker({
	key = "jonkler",
	loc_txt = {
		name = "REAL Jonkler(notfake)",
		text = { "ima lazy mf", "find out what he does {C:attention}urself{}" },
	},
	atlas = "Jokers",
	rarity = 1,
	cost = 3,
	pools = { ["BililiADD"] = true },

	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,

	pos = { x = 0, y = 0 },
	config = { extra = {
		Xmult = 1.001,
	} },

	loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.Xmult } }
	end,

	check_for_unlock = function(self, args)
		if args.type == "test" then --not a real type, just a joke
			unlock_card(self)
		end
		unlock_card(self) --unlocks the card if it isnt unlocked
	end,

	calculate = function(self, card, context)
		if context.joker_main then
			return {
				card = card,
				Xmult_mod = card.ability.extra.Xmult,
				message = "X" .. card.ability.extra.Xmult,
				colour = G.C.MULT,
			}
		end
	end,

	in_pool = function(self, wawa, wawa2)
		--whether or not this card is in the pool, return true if it is, return false if its not
		return true
	end,
	calc_dollar_bonus = function(self, card)
		return 1
	end,
})

SMODS.Atlas({
	key = "gatowhatsapp",
	path = "gatowhatsapp.png",
	px = 71,
	py = 96,
})

--whatsapp boss--

SMODS.Sound({
	key = "whatsapp",
	path = "whatsapp.ogg",
})

SMODS.Joker({
	key = "whatsappboss",
	loc_txt = {
		name = "Boss of Whatsapp",
		text = {
			"{C:green}#1# in #2#{} chance to",
			"receive a message and {X:mult,C:white}X2{} Mult",
		},
	},
	atlas = "gatowhatsapp",
	rarity = 2,
	cost = 4,
	pools = { ["BililiADD"] = true },

	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,

	pos = { x = 0, y = 0 },
	config = { extra = { xmult = 2, chance = 2 } },

	loc_vars = function(self, info_queue, center)
		return { vars = { G.GAME.probabilities.normal, center.ability.extra.chance, center.ability.extra.xmult } }
	end,

	update = function(self, joker)
		if joker.edition and (joker.edition.type == "bilili_evil") then
			check_for_unlock({ type = "ach_evilwhatsapp" })
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main then
			if pseudorandom("whatsappboss") < (G.GAME.probabilities.normal / card.ability.extra.chance) then
				return {
					message = "x" .. card.ability.extra.xmult,
					sound = "bilili_whatsapp",
					Xmult_mod = card.ability.extra.xmult,
				}
			else
				return {
					message = "No messages.",
				}
			end
		end
	end,

	check_for_unlock = function(self, args)
		if args.type == "test" then --not a real type, just a joke
			unlock_card(self)
		end
		unlock_card(self) --unlocks the card if it isnt unlocked
	end,
})

SMODS.Sound({ --muhehe
	key = "muhehe",
	path = "muhehe.ogg",
})

--LEBRONNNN--
SMODS.Atlas({
	key = "lebron",
	path = "lebron.png",
	px = 71,
	py = 96,
})

SMODS.Sound({
	key = "lebron",
	path = "lebronn.ogg",
})

SMODS.Sound({
	key = "dunk",
	path = "loud-dunk.ogg",
})

SMODS.Joker({
	key = "lebron",
	loc_txt = {
		name = "LeBron",
		text = {
			"Dunk on that fucking",
			"boss blind, reducing",
			"required score by {C:red}half{}",
			"{C:inactive}u wont see it, but it reduces, trust me",
		},
	},
	atlas = "lebron",
	rarity = 4,
	cost = 5,
	pools = { ["BililiADD"] = true },

	config = {},

	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = false,

	pos = { x = 0, y = 0 },

	add_to_deck = function(self, info_queue)
		check_for_unlock({ type = "ach_lebron" })
	end,

	calculate = function(self, card, context)
		if context.setting_blind and (G.GAME.blind:get_type() == "Boss") then
			G.GAME.blind.chips = G.GAME.blind.chips / 2
			play_sound("bilili_lebron")
			play_sound("bilili_dunk")
			return {

				message = "DUNKED ON!",
			}
		end
	end,
})

---P2W--

SMODS.Atlas({
	key = "p2w",
	path = "p2w.png",
	px = 71,
	py = 96,
})

SMODS.Joker({
	key = "p2w",
	loc_txt = {
		name = "Pay2Win",
		text = {
			"Retriggers played cards",
			"for every {C:attention}$#1#",
			"and takes {C:attention}$#1# for every",
			"retrigger",
		},
	},
	atlas = "p2w",
	rarity = 3,
	cost = 4,
	pools = { ["BililiADD"] = true },

	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = false,

	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	config = { extra = { retriggercost = 4, retriggers_stored = 0 } },

	loc_vars = function(self, info_queue, center)
		return { vars = { center.ability.extra.retriggercost, center.ability.extra.retriggers_stored } }
	end,

	calculate = function(self, card, context)
		if G.GAME.dollars >= card.ability.extra.retriggercost then
			if context.before then
				local _rtamt = math.floor(G.GAME.dollars / card.ability.extra.retriggercost)
				card.ability.extra.retriggers_stored = _rtamt

				ease_dollars(card.ability.extra.retriggercost * _rtamt * -1)
				card:juice_up()
				return {
					message = "-$" .. (card.ability.extra.retriggercost * _rtamt),
				}
			end

			if context.repetition and context.cardarea == G.play then
				return {
					repetitions = card.ability.extra.retriggers_stored,
				}
			end
		end

		if context.post_joker or context.setting_blind then
			card.ability.extra.retriggers_stored = 0
		end
	end,

	check_for_unlock = function(self, args)
		if args.type == "test" then
			unlock_card(self)
		end
		unlock_card(self)
	end,
})

--omniman--

SMODS.Sound({
	key = "areusure",
	path = "areusure.ogg",
})

SMODS.Atlas({
	key = "omniman",
	path = "omniman.png",
	px = 71,
	py = 96,
})

SMODS.Joker({
	key = "omniman",
	loc_txt = {
		name = "Omniman",
		text = {
			"{C:green}#1# in #2#{} chance to",
			"start doubting played cards, and",
			"retriggering them.",
		},
	},

	atlas = "omniman",
	rarity = 2,
	cost = 4,
	pools = { ["BililiADD"] = true },

	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = false,

	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	config = { extra = { odds = 4, retriggers_stored = 0 } },

	loc_vars = function(self, info_queue, center)
		return {
			vars = { G.GAME.probabilities.normal, center.ability.extra.odds, center.ability.extra.retriggers_stored },
		}
	end,

	calculate = function(self, card, context)
		if pseudorandom("omniman") < (G.GAME.probabilities.normal / card.ability.extra.odds) then
			if context.before then
				card.ability.extra.retriggers_stored = 1
				card:juice_up()
				return {
					message = "Are you sure?",
					sound = "bilili_areusure",
				}
			end

			if context.repetition and context.cardarea == G.play then
				return {
					repetitions = card.ability.extra.retriggers_stored,
					sound = "bilili_areusure",
				}
			end
		end
	end,
})

--MR EVIL MUHAHAHAH--

SMODS.Atlas({
	key = "mrevil",
	path = "mrevil.png",
	px = 71,
	py = 96,
})

SMODS.Joker({
	key = "mrevil",
	loc_txt = {
		name = "Mr. EVIL",
		text = {
			"{X:mult,C:white}X#3#{} Mult,",
			"but has {C:green}#1# in #2# {C:red}EVIL{} chance",
			"to {C:red}#4#{} Mult with his {C:red}EVIL{} powers",
		},
	},

	atlas = "mrevil",
	rarity = 2,
	cost = 5,
	pools = { ["BililiADD"] = true },

	unlocked = true,
	discovered = true,
	blueprint_compat = false,

	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	config = { extra = { chance = 4, xmult = 6, negmult = -2 } },

	loc_vars = function(self, info_queue, center)
		return {
			vars = {
				G.GAME.probabilities.normal,
				center.ability.extra.chance,
				center.ability.extra.xmult,
				center.ability.extra.negmult,
			},
		}
	end,

	update = function(self, joker)
		if joker.edition and (joker.edition.type == "bilili_evil") then
			check_for_unlock({ type = "ach_megaevil" })
		end
	end,

	calculate = function(self, card, context)
		if context.joker_main then
			if pseudorandom("mrevil") < (G.GAME.probabilities.normal / card.ability.extra.chance) then
				return {
					message = "-" .. card.ability.extra.negmult,
					sound = "bilili_muhehe",
					mult_mod = card.ability.extra.negmult,
				}
			else
				return {
					message = "x" .. card.ability.extra.xmult,
					Xmult_mod = card.ability.extra.xmult,
				}
			end
		end
	end,
})

-- MRSEVIL
SMODS.Sound({ --muhehe
	key = "muhehegirl",
	path = "muhehe.ogg",
	pitch = 1.5,
})

SMODS.Atlas({
	key = "mrsevil",
	path = "mrsevil.png",
	px = 71,
	py = 96,
})

SMODS.Joker({
	key = "mrsevil",
	loc_txt = {
		name = "Mrs. EVIL",
		text = {
			"Retriggers {C:red}EVIL SEAL{} cards twice",
			"If first hand has only 1 card,",
			"applies {C:red}EVIL SEAL{} to it.",
		},
	},
	atlas = "mrsevil",
	rarity = 2,
	cost = 7,
	pools = { ["BililiADD"] = true },

	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,

	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },

	update = function(self, joker)
		if joker.edition and (joker.edition.type == "bilili_evil") then
			check_for_unlock({ type = "ach_megaevil" })
		end
	end,

	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if context.other_card.seal == "bilili_evil_seal" then
				return {
					message = localize("k_again_ex"),
					repetitions = 2,
					card = card,
				}
			end
		end

		if
			context.cardarea == G.play
			and context.individual
			and #G.play.cards == 1
			and G.GAME.current_round.hands_played == 0
		then
			context.other_card.seal = "bilili_evil_seal"
			return {
				message = "Made'em EVIL",
				card = card,
				sound = "bilili_muhehegirl",
			}
		end
	end,
})
