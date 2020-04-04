data:extend({
	{
		type = "technology",
		name = "floodlight-mk1",
		icon = "__Floodlight__/graphics/technology/floodlight-mk1.png",
		icon_size = 128,
		prerequisites = {"optics"},
		effects = {},
		unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 15
		}
	},
	{
		type = "technology",
		name = "floodlight-mk2",
		icon = "__Floodlight__/graphics/technology/floodlight-mk2.png",
		icon_size = 128,
		prerequisites = {"floodlight-mk1"},
		effects = {},
		unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30
		}
	}
})

table.insert( data.raw["technology"]["floodlight-mk1"].effects, { type = "unlock-recipe", recipe = "floodlight-mk1" } )
table.insert( data.raw["technology"]["floodlight-mk2"].effects, { type = "unlock-recipe", recipe = "floodlight-mk2" } )
