SMODS.Atlas({
	key = "biliawards",
	path = "biliawards.png",
	px = 170,
	py = 213,
})

SMODS.Achievement({ --impossible one
	key = "ach_lebron",
	loc_txt = {
		name = "LEBROOOOON!",
		description = { "Get a hold of THE GOAT!" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = true,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_lebron" then
			return true
		end
	end,
})

SMODS.Achievement({ --trolled
	key = "ach_trolled",
	loc_txt = {
		name = "NOWAY",
		description = { "skill issue tbh", "stay young beautiful and unique" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = false,
	hidden_text = true,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_trolled" then
			return true
		end
	end,
})

SMODS.Achievement({ --parry
	key = "ach_parry",
	loc_txt = {
		name = "SIKE",
		description = { "nice reaction time ya got there", "365 days without shower ahh" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = false,
	hidden_text = true,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_parried" then
			return true
		end
	end,
})

SMODS.Achievement({ --super evil
	key = "ach_megaevil",
	loc_txt = {
		name = "Evil Incarnate",
		description = { "Achieve double evilness", "muheheeh" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = true,
	hidden_text = false,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_megaevil" then
			return true
		end
	end,
})

SMODS.Achievement({ --evil wazap
	key = "ach_evilwhatsapp",
	loc_txt = {
		name = "The Legend",
		description = { "Oh no, it happened....", "canon" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = true,
	hidden_text = false,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_evilwhatsapp" then
			return true
		end
	end,
})

SMODS.Achievement({ --evil chain
	key = "ach_evilchain",
	loc_txt = {
		name = "Chain'd",
		description = { "Play 5 evil-sealed cards in 1 hand", "Impressive" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = true,
	hidden_text = false,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_evilchain" then
			return true
		end
	end,
})

SMODS.Achievement({ --reunion
	key = "ach_reunion",
	loc_txt = {
		name = "Lucky boy",
		description = { "later", "<3" },
	},
	order = 6,
	bypass_all_unlocked = true,
	hidden_name = false,
	hidden_text = true,
	atlas = "biliawards",
	unlock_condition = function(self, args)
		if args.type == "ach_reunion" then
			return true
		end
	end,
})
