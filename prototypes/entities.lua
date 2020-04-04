data:extend(
    {
        {
            type = "lamp",
            name = "floodlight-mk1",
            icon = "__Floodlight__/graphics/icons/floodlight-mk1.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "floodlight-mk1"},
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
          shift = {-0.6, -14},
          size = 2,
          intensity = 0.6
      },
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
          shift = {0.6, -14},
          size = 2,
          intensity = 0.6
      }
    },
            light_when_colored = {intensity = 1, size = 12, color = {r = 1.0, g = 1.0, b = 1.0}},
            glow_size = 12,
            glow_color_intensity = 0.16,
            picture_off = {
                layers = {
                    {
                        filename = "__Floodlight__/graphics/entity/floodlight-mk1.png",
                        priority = "extra-high",
                        width = 35,
                        height = 110,
                        direction_count = 4,
                        shift = util.by_pixel(-17, - 110),
                        hr_version =
                        {
                            filename = "__Floodlight__/graphics/entity/hr-floodlight-mk1.png",
                            priority = "extra-high",
                            width = 90,
                            height = 277,
                            direction_count = 4,
                            shift = util.by_pixel(0, - 51),
                            scale = 0.5
                        }
                    },
                }
            },
            picture_on =
            {
                filename = "__Floodlight__/graphics/entity/floodlight-mk1.png",
                priority = "high",
                width = 42,
                height = 36,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(0, 3),
                hr_version = {
                    filename = "__Floodlight__/graphics/entity/hr-floodlight-mk1.png",
                    priority = "high",
                    width = 83,
                    height = 70,
                    frame_count = 1,
                    axially_symmetrical = false,
                    direction_count = 1,
                    shift = util.by_pixel(0.25, 3),
                    scale = 0.5
                }
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
        },
        {
            type = "lamp",
            name = "floodlight-mk2",
            icon = "__Floodlight__/graphics/icons/floodlight-mk2.png",
            icon_size = 32,
            flags = {"placeable-neutral", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "floodlight-mk2"},
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
            energy_usage_per_tick = "50KW",
            darkness_for_all_lamps_on = 0.5,
            darkness_for_all_lamps_off = 0.3,
            light = {intensity = 0.9, size = 140, color = {r = 1.0, g = 1.0, b = 1.0}},
            light_when_colored = {intensity = 1, size = 22, color = {r = 1.0, g = 1.0, b = 1.0}},
            glow_size = 22,
            glow_color_intensity = 0.2,
            picture_off = {
                layers = {
                    {
                        filename = "__Floodlight__/graphics/entity/floodlight-mk2.png",
                        priority = "high",
                        width = 42,
                        height = 36,
                        frame_count = 1,
                        axially_symmetrical = false,
                        direction_count = 1,
                        shift = util.by_pixel(0, 3),
                        hr_version = {
                            filename = "__Floodlight__/graphics/entity/hr-floodlight-mk2.png",
                            priority = "high",
                            width = 83,
                            height = 70,
                            frame_count = 1,
                            axially_symmetrical = false,
                            direction_count = 1,
                            shift = util.by_pixel(0.25, 3),
                            scale = 0.5
                        }
                    }
                }
            },
            picture_on =
            {
                filename = "__Floodlight__/graphics/entity/floodlight-mk2.png",
                priority = "high",
                width = 42,
                height = 36,
                frame_count = 1,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(0, 3),
                hr_version = {
                    filename = "__Floodlight__/graphics/entity/hr-floodlight-mk2.png",
                    priority = "high",
                    width = 83,
                    height = 70,
                    frame_count = 1,
                    axially_symmetrical = false,
                    direction_count = 1,
                    shift = util.by_pixel(0.25, 3),
                    scale = 0.5
                }
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
        },
    }
)
