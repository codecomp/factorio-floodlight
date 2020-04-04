

script.on_event(defines.events.on_gui_opened, function(event)
    if event.entity and event.entity.valid and event.entity.name == 'floodlight-mk1' then
        game.print("Hello General Kenobi");
        local player = game.players[event.player_index]
        player.opened = nil

        onTrainStopOpened(player)
    end
end)
