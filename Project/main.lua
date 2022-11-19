if pcall(require, "lldebugger") then
  require("lldebugger").start()
end

io.stdout:setvbuf("no")

local racket = {}
racket.x = 0
racket.y = 0
racket.width = 80
racket.height = 20

function love.load()
  width, height = love.graphics.getDimensions()
  print("width : " .. width)
  print("height : " .. height)

  racket.y = height - (racket.height / 2)
end

function love.update(dt)
  racket.x = love.mouse.getX()
end

function love.draw()
  love.graphics.rectangle("fill", racket.x - (racket.width / 2), racket.y - (racket.height / 2), racket.width, racket.height)
end
