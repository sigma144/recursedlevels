
local wood = { ["7"] = "carve_ul", ["8"] = "carve_u", ["9"] = "carve_ur",
               ["4"] = "carve_l", ["="] = "backing", ["6"] = "carve_r",
               ["^"] = "plank_top", ["|"] = "plank_v", ["v"] = "plank_bottom",
               ["<"] = "plank_left", ["-"] = "plank_h", [">"] = "plank_right",
               [";"] = "bannister_l", ["~"] = "bannister_c", [":"] = "bannister_r",
               o = "panel", ["'"] = "ledge", n = "rafter_u", u = "rafter_d" }
local glitch = { o = "glitch", s = "glitchhole", ["-"] = "glitchledge", a = "acid", ["_"] = "acidsurface", b = "buoy"}
local clouds = { o = "cloud", x = "block", ["{"] = "cloud_l", ["}"] = "cloud_r", ["-"] = "cloudledge"}

function start()
  ApplyTiles(wood, 0, 0, [[
=6................4=
=6................4=
=6................4=
=6ooo.............4=
=6==6.............4=
=6==6.............4=
=6==6..........ooo4=
=6==6..........4==4=
=6==6..........4==4=
=6==6..ooo.....4==4=
=6==6..........4==4=
=6==6..........4==4=
=6==6..........4==4=
=6==oooooooooooo==4=
=6================4=
]])

  Spawn("player", 6.5, 12)
  Spawn("crystal", 3.5, 1.5)
  Global("chest", 8.5, 8.5, "room2")
  Global("box", 10.5, 12)
  
end

function room2()
  ApplyTiles(wood, 0, 0, [[
==u===u===u===u===u=
=^<-------------->^=
=|................|=
=|................|=
=|................|=
=|................|=
=|................|=
=|...........<--->v=
=|...........|u===u=
=|...........|u===u=
=|......<--->vu===u=
=|......|=u===u===u=
=|......|=u===u===u=
=v<---->v=u===u===u=
==u===u===u===u===u=
]])

Spawn("player", 14.5, 5.5)
Spawn("chest", 5, 12, "start")

end

function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo---oo...........oo
oo...oo...........oo
oo...oo...........oo
oo---oooooooooo___oo
oo...ooosooosooaaaoo
oo...ooooooooooooooo
]])

Spawn("player", 3, 11)
Spawn("chest", 10, 11, "roomP1")
Spawn("cauldron", 13, 11, "rejecttwo")

end

function rejecttwo()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oo................oo
oooooooooooooooooooo
oooosooosooosooosooo
oooooooooooooooooooo
]])

Spawn("player", 3, 11)
Spawn("fan", 7, 11)
Spawn("chest", 10, 11, "roomP1")
Global("cauldron", 13, 11, "reject")

end

function roomP1(wet)
if wet then
  ApplyTiles(glitch, -4, 0, [[
    oooooooooooooooooooo
    oo.................o
    oo.................o
    oo.................o
    oo____oooooooooo...o
    ooaaaaoooooooooo...o
    ooaaaaaaaaaaabbo...o
    ooaaaaaaaaaaabbo___o
    ooaaaaaaaaaaabboaaao
    ooaaaaaoooooobbossso
    ooaaaaaoooooobbo...o
    ooaaaaaoooooobbo...o
    ooaaaaaoooooobbo...o
    ooooooooooooobbo....
    ooooooooooooobbo____
]])
else
  ApplyTiles(glitch, -4, 0, [[
    oooooooooooooooooooo
    oo.................o
    oo.................o
    oo.................o
    oo....oooooooooo...o
    oo....oooooooooo...o
    oo.............o...o
    oo.............o...o
    oo.............o...o
    oo.....oooooobbossso
    oo.....oooooobbo...o
    oo.....oooooobbo...o
    oo.....oooooobbo...o
    ooooooooooooobbo....
    ooooooooooooobbo____
    ]])
end

Spawn("player", 4.5, 12)
Spawn("key", 17.5, 8)
Spawn("lock", 10.5, 7.5)
Spawn("lock", 12, 7.5)
Spawn("diamond", 14, 7.5)

end

function threadless()
  ApplyTiles(clouds, 0, 0, [[
..........{ooooooooo
................{ooo
o}..................
ooooo}..............
....................
....................
......{ooooo}.......
....{oooooooooo}....
....................
....................
--------------------
....................
....................
--------------------
....................
]])

Spawn("chest", 10, 5, "roomT1")
Spawn("player", 10, 12)

end

function roomT1()
  ApplyTiles(clouds, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
o}......{oo}........
o}......{oo}........
o}......{oo}........
o}......{oo}...{oooo
o}......{oo}...{oooo
o}.{oo}.{oo}...{oooo
o}.{oo}.{oo}...{oooo
o}.{oo}........{oooo
o}.{oo}........{oooo
o}.{oo}........{oooo
oooooooooooooooooooo
oooooooooooooooooooo
]])

Global("key", 2.5, 12)
Spawn("player", 11.5, 12)
Spawn("lock", 16.5, 4.5)
Spawn("ruby", 18.5, 4.5)
Global("box", 9, 12)
Global("chest", 14, 12, "roomT1")

end

tiles = "../custom/tiles/woodplus"
pattern = "backgrounds/spooty"
dark = {start = {0.04, 0.03, 0.31}, two = {0.22, 0.08, 0.02}}
light = {start = {0.11, 0.26, 0.64}, two = {0.44, 0.15, 0.05}}
dark.threadless = {0.75, 0.55, 0.75}
light.threadless = {1.0, 0.96, 0.46}
dark.reject = {0.5, 0.0, 0.5}
light.reject = {0.8, 0.0, 0.8}
dark.rejecttwo = {0.1, 0.4, 0.3}
light.rejecttwo = {0.2, 0.7, 0.4}

