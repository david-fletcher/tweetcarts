pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
-- colors: 8-14
x,y,c,dx,dy=rnd(97),rnd(112),7,1,1
::a::
if(c==14)c=7
c=c+1
::_::cls()
x,y=x+dx,y+dy
if(x>97)dx=-1 goto a
if(x<1)dx=1 goto a
if(y>112)dy=-1 goto a
if(y<1)dy=1 goto a
ovalfill(x,y,x+30,y+15,c)
flip()goto _