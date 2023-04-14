-- title:   game title
-- author:  joejoemars1
-- desc:    short description
-- site:    joejoemars1.github.io
-- license: NOT SET, OPEN ISSUE?
-- version: 0.1
-- script:  lua

a = {}

a[1] = {}
a[1].x = math.random(0,240)
a[1].y = math.random(0,136)
a[1].r = math.random(1,15)

function TIC()
	
	cls()
	
	a[#a].r = a[#a].r + 1
	
	if a[#a].r == 20 then insertCircle() end
	
	for i=1, #a do
		
		circ(a[i].x, a[i].y, a[i].r, i)
		
	end
	
end

function insertCircle()
	
	table.insert(a,{})
	a[#a].x = math.random(0,240)
	a[#a].y = math.random(0,136)
	a[#a].r = math.random(1,15)
	
end
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

