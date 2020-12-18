require("base")

function love.load()
  width = love.graphics.getWidth()
  height = love.graphics.getHeight()

  background = love.graphics.newImage("assets/sprites/background-day.png")
  baseImg = love.graphics.newImage("assets/sprites/base.png")
  base = Base:create(baseImg)
  sx = width / background:getWidth()
  sy = height / background:getHeight()
  
end

function love.update()
end

function love.draw()
  love.graphics.draw(background, 0, 0, 0, sx, sy)
  base:draw()
end