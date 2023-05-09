pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
-- day 3 - hollow knight art month 2023 - greenpath
f,e,a,b,c,p=0,0,"\\","/",circfill,print
::_::cls(1)f+=1
c(50,121,50,3)c(110,121,60)c(0,121,20)c(96,119,16,5)c(96,119,15,0)for i=0,2 do
if(not(e%15==i))p(a..b,92,i*5+110,7)
end clip()if(f%4==0)e+=1
p(b,5,110,11)p(a,52,95,11)p(b,91,79,11)flip()goto _