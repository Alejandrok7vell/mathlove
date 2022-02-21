function newCubo(x, y, b, t)
    local c = {}
    c.x = x or 100
    c.y = y or 100
    c.w = 100
    c.h = 100
    c.z = 20

    c.b = b or 1

    c.t = t or 1

    c.colors = {}
    c.colors.b1 = convertRGB(66, 135, 245)
    c.colors.b2 = convertRGB(44, 140, 189)
    c.colors.b3 = convertRGB(19, 96, 135)

    c.colors.y1 = convertRGB(245, 206, 66)
    c.colors.y2 = convertRGB(167, 184, 61)
    c.colors.y3 = convertRGB(139, 156, 30)

    c.colors.g1 = convertRGB(72, 207, 60)
    c.colors.g2 = convertRGB(64, 181, 62)
    c.colors.g3 = convertRGB(32, 158, 30)

    if c.b == 1 then
        c.color1 = c.colors.b1
        c.color2 = c.colors.b2
        c.color3 = c.colors.b3
    elseif c.b == 2 then
        c.color1 = c.colors.y1
        c.color2 = c.colors.y2
        c.color3 = c.colors.y3
    elseif c.b == 3 then
        c.color1 = c.colors.g1
        c.color2 = c.colors.g2
        c.color3 = c.colors.g3
    end

    function c.draw()
        love.graphics.setColor(c.color1) -- Cuadrado front
        love.graphics.rectangle("fill", c.x, c.y, c.w, c.h)
        love.graphics.setColor(c.color2) -- Cuadrado front
        love.graphics.polygon("fill", c.x, c.y, c.x + c.z, c.y - c.z, c.x + c.w + c.z, c.y - c.z, c.x + c.w, c.y)
    end

    function c.update()

    end

    return c
end