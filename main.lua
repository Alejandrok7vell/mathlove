require 'bloques'

function love.load()
    cubo = newCubo(100, 100, 1, 1)
end

function love.update()

end

function love.draw()
    cubo.draw()
end

function convertRGB(r, g, b, a)
    local alfa = a or 255
    local color = {r / 255, g / 255, b / 255, alfa}
    return color
end