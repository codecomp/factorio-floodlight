data:extend({
	{
		type = "technology",
		name = "floodlight",
		icon = "__Floodlight__/graphics/technology/floodlight.png",
		icon_size = 64,
		prerequisites = {"optics"},
		effects = {},
		unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1},
			},
			time = 15
		}
	}
})

table.insert( data.raw["technology"]["floodlight"].effects, { type = "unlock-recipe", recipe = "floodlight" } )
