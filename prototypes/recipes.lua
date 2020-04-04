data:extend(
{
	{
		type = "recipe",
		name = "floodlight-mk1",
		enabled = false,
		energy_required = 2.5,
		ingredients =
		{
			{"small-lamp", 5},
			{"electronic-circuit", 1},
		},
		result = "floodlight-mk1"
	},
	{
		type = "recipe",
		name = "floodlight-mk2",
		enabled = false,
		energy_required = 3,
		ingredients =
		{
			{"floodlight-mk1", 3},
			{"electronic-circuit", 3},
		},
		result = "floodlight-mk2"
	},
}
)
