pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
-- set pico8 to 64x64 mode
poke(0x5f2c,3)

-- draw a square
function r(x,y)rect(x,y,x+8,y+8)end

-- draw a tetris block
function z(x,y)r(x,y)r(x+10,y)r(x+20,y)r(x+10,y+10)end

-- set variables
c=color
a={18,28,38,28}
b={22,22,22,32}
i=4p=0g=flr(rnd(4))+1

-- game loop
::_::cls()
c(7)z(18,22)?p
c(8)r(a[g],b[g])c(12)r(a[i],b[i])
if(btnp(0) and i>1 and i<4)i-=1
if(btnp(1) and i<3)i+=1
if(btnp(2) and i==4)i=2
if(btnp(3) and i==2)i=4
if(g==i)p+=1 g=flr(rnd(4))+1
if(g==i)g+=1 g%=4 g+=1
flip()goto _