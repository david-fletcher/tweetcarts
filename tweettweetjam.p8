pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
-- draw a square
function r (x,y) rect(x,y,x+8,y+8) end

-- draw a tetris block
function b () end

-- game loop
::_::cls()
color(7)
r(10,10)
flip()goto _
