-- title:   LRNCART: Loops & Tables vol. 1
-- author:  joejoemars1
-- desc:    A learning cart for Loops & Tables, vol. 1
-- site:    joejoemars1.github.io
-- license: CC BY-NC-SA 4.0
-- version: 1.1
-- script:  lua

--[[ Create the table ]]
a = {}

--[[ Use a `for` loop to add an `x y vx vy` to 100
     indicies with random values for each one ]]
for i=1, 100 do
	
	a[i] = {
	x=math.random(6,234), 
	y=math.random(6,130), 
	vx = math.random(-5,5), 
	vy = math.random(-5,5)
	}
	
end

function TIC()
	
	
	--[[ Clear the screen so we donm't get ghosting ]]
	cls()
	
	--[[ Loop to update every index with it's velocities 
	     `vx vy` ]]
	for i=1, #a do
		
		--[[ Apply the velocity ]]
		a[i].x = a[i].x + a[i].vx
		a[i].y = a[i].y + a[i].vy
		
		--[[ Invert the respective velocity if it hits a
		     border ]]
		if a[i].x <= 5 or a[i].x >= 235 then a[i].vx = a[i].vx * -1 end
		if a[i].y <= 5 or a[i].y >= 131 then a[i].vy = a[i].vy * -1 end
		
		--[[ Draw the circle for the current index ]]
		circ(a[i].x, a[i].y, 6, i%15+1)
		
		--[[ Uncomment the line below to remove the last index
		     each frame and add a new one ]]
		--if i == #a then table.remove(a,i) table.insert(a,1,{x=math.random(6,234), y=math.random(6,130), vx = math.random(-5,5), vy = math.random(-5,5)}) end
		
	end
	
end

-- <TILES>
-- 236:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 237:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 238:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 239:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 252:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 253:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 254:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 255:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- 001:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

