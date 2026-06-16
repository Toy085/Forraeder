local game = require("game")

state = "menu" -- "menu", "in-game" etc.

function love.load()
    if state == "menu" then
        -- Load menu assets here
    elseif state == "in-game" then
        game.load()
    end
end

function love.update(dt)
    if state == "menu" then
        -- Update menu logic here
    elseif state == "in-game" then
        game.update(dt)
    end
end

function love.draw()
    if state == "menu" then
        -- Draw menu here
        love.graphics.print("Press Enter to Start", 100, 100)
    elseif state == "in-game" then
        game.draw()
    end
end

function love.keypressed(key)
    if state == "menu" then
        if key == "return" then
            state = "in-game"
            game.load()
        end
    elseif state == "in-game" then
        game.keypressed(key)
    end
end