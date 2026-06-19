local game = {}

function game.load()
    player = {
        x = love.graphics.getWidth() / 2,
        y = love.graphics.getHeight() / 2,
        speed = 200,
        color = {1, 0, 0}
    }
end

function game.update(dt)
    -- Player movement
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end

    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end

    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end

    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end
end

function game.keypressed(key)

end

function game.draw()
    love.graphics.setColor(player.color)
    love.graphics.circle("fill", player.x, player.y, 5, 5)
end

return game