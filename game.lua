local game = {}
function game.load()
    -- Load game assets here
end

function game.update(dt)
    -- Update game logic here
end

function game.keypressed(key)
    -- Handle in-game key presses here
end

function game.draw()
    -- Draw game here
    love.graphics.print("In-Game State", 100, 100)
end

return game