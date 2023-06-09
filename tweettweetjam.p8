pico-8 cartridge // http://www.pico-8.com
version 39
__lua__
poke(0x5f2c,3)a={18,28,38,28}b={22,22,22,32}p=0g=4i=1l=0c=color q=btnp
::_::c(0)for j=0,4096do
if(rnd()>.7)pset(j\64,j%64)end
c(7)l=t()?p,0,0
line(0,63,l,63)for j=1,4do c(5)
if(j==g)c(3)?"x",a[j]+3,b[j]+2
if(j==i)c(7)
if(l>63)c(8)
rect(a[j],b[j],a[j]+8,b[j]+8)end if(l<63)then 
if(q(0) and i%4>1)i-=1
if(q(1) and i<3)i+=1
if(q(2) and i>3)i=2
if(q(3) and i==2)i=4
if(g==i)p+=1 g=rnd(4)\1+1 rectfill(a[i],b[i],a[i]+8,b[i]+8,3)
if(g==i)g+=1 g%=4 g+=1
end flip()goto _

-- COMMENTED VERSION --
-- -- set to 64x64 mode
-- poke(0x5f2c,3)

-- -- declare some variables. 
-- -- a is a list of x values for each square, b is a list of y values for each square
-- -- p is the number of points the player has
-- -- g is the index (1-4) of the goal (the square with the X)
-- -- i is the index (1-4) of the player (white square)
-- -- l is the amount of time that has elapsed
-- -- c is a shorthand for color()
-- -- q is a shorthand for btnp()
-- a={18,28,38,28}b={22,22,22,32}p=0g=4i=1l=0c=color q=btnp

-- -- start our game loop with a label named _
-- -- set the color to black (color 0)
-- ::_::c(0)

-- -- iterate over every pixel on the screen, and start randomly wiping away old colors there (creates a noisy animation for cheap)
-- for j=0,4096do
--     -- we roll a d100 - if the dice is greater than 70, then we set that pixel to black
--     if(rnd()>.7)pset(j\64,j%64)
-- end

-- -- set the color to white (7)
-- c(7)

-- -- update the elapsed time variable with the latest time - t() returns the fractional number of seconds since PICO-8 started the game
-- l=t()

-- -- at coordinate (0,0), print out how many points the player has
-- ?p,0,0

-- -- draw a line along the bottom of the screen to represent how many seconds have elapsed
-- line(0,63,l,63)

-- -- for every square that we need to draw, determine how to draw it
-- for j=1,4do c(5)
--     -- if this square is the goal, set the color to dark green (3) and print out an "X" in the center of that square
--     if(j==g)c(3)?"x",a[j]+3,b[j]+2
--     -- if this square is the player, set the color to white (7)
--     if(j==i)c(7)
--     -- if the game has ended, set the color to red (8)
--     if(l>63)c(8)
--     -- draw the square using the x,y coordinates from our helper a,b tables
--     rect(a[j],b[j],a[j]+8,b[j]+8)
-- end 

-- -- if the game hasn't ended yet
-- if(l<63)then 
--     -- if the left arrow key is pressed and we are able to move left, then shift the player left
--     if(q(0) and i%4>1)i-=1
--     -- if the right arrow key is pressed and we are able to move right, then shift the player right
--     if(q(1) and i<3)i+=1
--     -- if the up arrow key is pressed and we are able to move up, then shift the player up
--     if(q(2) and i>3)i=2
--     -- if the down arrow key is pressed and we are able to move down, then shift the player down
--     if(q(3) and i==2)i=4
--     -- if the player has reached the goal, increase the player points by 1, set a new goal, then color in a solid rectangle on the old goal to show it was completed
--     if(g==i)p+=1 g=rnd(4)\1+1 rectfill(a[i],b[i],a[i]+8,b[i]+8,3)
--     -- if the new goal spawned on top of the player, do math to move it in a guaranteed fashion so that it is not on top of the player
--     if(g==i)g+=1 g%=4 g+=1
-- end
-- -- draw to the screen and restart the game loop!
-- flip()goto _