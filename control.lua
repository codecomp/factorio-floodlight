
script.on_event("floodlight-rotate", function(event)

    local _player = game.players[event.player_index]
    local selected = _player.selected

    if selected == nil then
        return
    end

    local directions = {"n", "ne", "e", "se", "s", "sw", "w", "nw",}
    for _, dir in pairs(directions) do

        if selected.valid and selected.name == "floodlight-"..dir then

            -- Locate existing entity
            local _x = selected.position.x
            local _y = selected.position.y

            -- Work out new entity type
            local next_entity = ""
            for i, dir in pairs(directions) do
                if selected.name == "floodlight-"..dir then

                    if i + 1 > #directions then
                        next_entity = "floodlight-"..directions[1]
                    else
                        next_entity = "floodlight-"..directions[i + 1]
                    end

                    break
                end
            end

            -- Remove existing entity
            selected.destroy()

            -- Create next entity
            game.surfaces["nauvis"].create_entity{name=next_entity, position={x=_x, y=_y}, player=_player, force=_player.force}

            break
        end

    end

end)
