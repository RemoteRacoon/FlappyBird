Base = {}
Base.__index = Base

function Base:create(img)
 local base = {}
 setmetatable(base, Base)
 
 base.img= img
 return base
end

function Base:draw()
  local posy = height - self.img:getHeight()
  local posx = 0
  local sx = width / self.img:getWidth()
  love.graphics.draw(self.img, posx, posy, 0, sx, 0)
end