
function array_length(t)
    count = 0
    for k,v in pairs(t) do
         count = count + 1
    end
    return count
end

local directions = {"n", "ne", "e", "se", "s", "sw", "w", "nw",}

script.on_event(defines.events.on_gui_opened, function(event)

    for _, dir in pairs(directions) do

        if event.entity and event.entity.valid and event.entity.name == 'floodlight-'..dir then

            -- Remove popup
            local _player = game.players[event.player_index]
            _player.opened = nil

            -- Locate existing entity
            local _x = event.entity.position.x
            local _y = event.entity.position.y

            -- Work out new entity type
            local next_entity = ""
            for _, dir in pairs(directions) do
                if event.entity.name == "floodlight-"..dir then

                    if _ + 1 > array_length(directions) then
                        next_entity = "floodlight-"..directions[1]
                    else
                        next_entity = "floodlight-"..directions[_ + 1]
                    end

                    break
                end
            end

            -- Remove existing entity
            event.entity.destroy()

            -- Create next entity
            game.surfaces["nauvis"].create_entity{name=next_entity, position={x=_x, y=_y}, player=_player, force=_player.force}

        end

    end

end)
