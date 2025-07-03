SMODS.Sound({
	key = "slots",
	path = "slots.ogg",
})
SMODS.Sound({
	key = "jackpot",
	path = "jackpot.ogg",
})

SMODS.Atlas({
	key = "blinds",
	path = "blinds.png",
	px = 34,
	py = 34,
})

SMODS.Blind({
	name = "casino",
	key = "casino",
	atlas = "blinds",
	pos = { y = 0 },
	dollars = 12,
	mult = 2,
	boss = { min = 0 },
	loc_txt = {
		name = "YAY GAMBLING!",
		text = {
			"TIME TO LOSE ALL UR SAVINGS",
			"{C:inactive}u cant play seven's",
		},
	},
	boss_colour = HEX("b4dd1e"),
	debuff = {
		value = "7",
	},

	press_play = function(self)
		play_sound("bilili_slots")
	end,

	defeat = function(self)
		play_sound("bilili_jackpot")
	end,

	disable = function(self)
		for i = 1, #G.hand.cards do
			G.hand.cards[i].ability.forced_selection = false
			G.hand:remove_from_highlighted(G.hand.cards[i])
		end
	end,
})
