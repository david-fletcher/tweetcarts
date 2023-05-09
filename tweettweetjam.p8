pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
-- set pico8 to 64x64 mode
poke(0x5f2c,3)

-- draw a square
function r(x,y)rect(x,y,x+8,y+8)end

-- set variables
c=color
a={18,28,38,28}
b={22,22,22,32}
p=0g=flr(rnd(4))+1i=1l=0

-- game loop
::_::cls()c(7)l=t()?p
line(0,63,l*1.06,63)

for j=1,4 do c(5)
    if (j==g)c(3)
    if (j==i)c(7)
    if (l>60)c(8)
    r(a[j],b[j])
end

if (l<60) then 
if(btnp(0) and i>1 and i<4)i-=1
if(btnp(1) and i<3)i+=1
if(btnp(2) and i==4)i=2
if(btnp(3) and i==2)i=4
if(g==i)p+=1 g=flr(rnd(4))+1
if(g==i)g+=1 g%=4 g+=1
end
flip()goto _