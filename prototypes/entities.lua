-- Light Entities
local skel = {
	type = "lamp",
	name = "floodlight",
	icon = "__Floodlight__/graphics/icons/floodlight.png",
	icon_size = 32,
	flags = {},
	minable = {hardness = 0.2, mining_time = 0.5, result = "floodlight"},
	max_health = 100,
	corpse = "small-remnants",
	collision_box = {{ - 0.15, - 0.15}, {0.15, 0.15}},
	selection_box = {{ - 0.5, - 0.5}, {0.5, 0.5}},
	vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	energy_source =
	{
		type = "electric",
		usage_priority = "lamp"
	},
	energy_usage_per_tick = "15KW",
	darkness_for_all_lamps_on = 0.5,
	darkness_for_all_lamps_off = 0.3,
	light =
	{
		type = "oriented",
		minimum_darkness = 0.3,
		picture =
		{
			filename = "__core__/graphics/light-cone.png",
			priority = "medium",
			scale = 2,
			width = 200,
			height = 200
		},
		shift = { 0, 0},
		size = 2,
		intensity = 0.6
	},
	light_when_colored = {
		--[[
		intensity = 1,
		size = 12,
		color = {r = 1.0, g = 1.0, b = 1.0}
		]]--
		type = "oriented",
		minimum_darkness = 0.3,
		picture =
		{
			filename = "__core__/graphics/light-cone.png",
			priority = "medium",
			scale = 2,
			width = 200,
			height = 200
		},
		shift = { 0, 0},
		size = 2,
		intensity = 0.6
	},
	glow_size = 12,
	glow_color_intensity = 0.16,
	picture_off = {
		filename = "__Floodlight__/graphics/entity/floodlight-off/",
		priority = "extra-high",
		width = 105,
      	height = 75,
		shift = util.by_pixel(0, -20),
	},
	picture_on =
	{
		filename = "__Floodlight__/graphics/entity/floodlight-on/",
		priority = "high",
		width = 105,
      	height = 75,
		shift = util.by_pixel(0, -20),
	},
	signal_to_color_mapping =
	{
		{type = "virtual", name = "signal-red", color = {r = 1, g = 0, b = 0}},
		{type = "virtual", name = "signal-green", color = {r = 0, g = 1, b = 0}},
		{type = "virtual", name = "signal-blue", color = {r = 0, g = 0, b = 1}},
		{type = "virtual", name = "signal-yellow", color = {r = 1, g = 1, b = 0}},
		{type = "virtual", name = "signal-pink", color = {r = 1, g = 0, b = 1}},
		{type = "virtual", name = "signal-cyan", color = {r = 0, g = 1, b = 1}},
	},

	circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
	circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
	circuit_wire_max_distance = default_circuit_wire_max_distance
}

local directions = {
	{slug = "n",  shift={0, -13.5}},
	{slug = "ne", shift={10, -10}},
	{slug = "e",  shift={13.5, 0}},
	{slug = "se", shift={10, 10}},
	{slug = "s",  shift={0, 13.5}},
	{slug = "sw", shift={-10, 10}},
	{slug = "w",  shift={-13.5, 0}},
	{slug = "nw", shift={-10, -10}},
}
local degrees = 0;


for i = 1, #directions, 1 do
	local light_base = table.deepcopy(skel)
    light_base.name = light_base.name.."-"..directions[i].slug
	light_base.light.shift = directions[i].shift
    light_base.light.rotation_shift = degrees
    light_base.picture_off.filename = light_base.picture_off.filename..directions[i].slug..".png"
    light_base.picture_on.filename = light_base.picture_on.filename..directions[i].slug..".png"
    data:extend{light_base}
    degrees =  degrees + 0.125
end
