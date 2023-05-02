pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
x,y,w,h,d=0,0,1,1,1
::_::cls()
rect(x,y,w,h,7)
w,h=w+d,h+d
if(w>127)d=-1
if(w<0)d=1
flip()goto _
