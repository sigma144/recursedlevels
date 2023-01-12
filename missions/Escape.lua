
local castle = { o = "brick", n = "brick_u", u = "brick_d", ["["] = "brick_l", ["]"] = "brick_r",
x = "wall", ["="] = "trim", ["#"] = "bars",
[":"] = "chain_u", ["'"] = "chain_d", ["*"] = "pillar_u", ["|"] = "pillar_d",
["\\"] = "camera_l", ["/"] = "camera_r" }

local water = { w = "water", ["^"] = "watersurface", ["#"] = "waterbars",
[":"] = "waterchain_u", ["'"] = "waterchain_d", ["*"] = "waterpillar_u", ["|"] = "waterpillar_d",
["7"] = "buoyul", ["8"] = "buoyu", ["9"] = "buoyur",
["4"] = "buoyl", ["5"] = "buoyc", ["6"] = "buoyr",
["1"] = "buoydl", ["2"] = "buoyd", ["3"] = "buoydr" }

local glitch = { o = "glitch", ["/"] = "glitchl", ["\\"] = "glitchr", ["|"] = "glitchbars", ["-"] = "glitchledge" }
local clouds = { o = "cloud", x = "block", ["{"] = "cloud_l", ["}"] = "cloud_r", ["-"] = "cloudledge"}

function start(wet)
  ApplyTiles(castle, -4, 0, [[
    []|................|
    ===\...............|
    ...................|
    ...................|
    ...................|
    ===...........======
    ][|...........|][][]
    []|...........|[][][
    ][|...........|]###]
    []|...........|[###[
    ][|...........|]###]
    []|...........|[][][
    ][|...........|][][]
    []|=================
    ][|oooooo|[][][][][]
    ]])
if wet then
  ApplyTiles(water, -4, 0, [[
    ...455556wwwwwwwwww.
    ...455556wwwwwwwwww.
    www455556wwwwwwwwww.
    www455556wwwwwwwwww.
    www455556wwwwwwwwww.
    ...455556wwwww......
    ...455556wwwww......
    ...455556wwwww......
    ...455556wwwww..###
    ...455556wwwww..###.
    ...455556wwwww..###.
    ...455556wwwww......
    ...455556wwwww......
    ...455556...........
    ...455556...........
  ]])
else
  ApplyTiles(water, -1, 13, [[
    788889
    455556
    ]])
end

  Spawn("player", 16.5, 4)
  Spawn("crystal", 1, 3.5)
  Spawn("lock", 2.5, 3.5)
  Global("chest", 12, 12, "room2")
  
end

function room2(wet)
ApplyTiles(castle, -2, 0, [[
  ::xu...:....:...ux::
  ::xn...:....:...nx::
  ::xu...:....:...ux::
  ::xn...:....:...nx::
  ::xu...:....:...ux::
  ::xn...:....:...nx::
  ::xu...:....:...ux::
  ::xn...:....:...nx::
  ::xu...:....:...ux::
  ::xn...:....:...nx::
  xxxu...:....:...uxxx
  [][]...======...[][]
  ####............####
  ####............####
  ====================
  ]])
if wet then
ApplyTiles(water, -2, 0, [[
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ::..www:wwww:www..::
  ....www:wwww:www....
  ....www......www....
  ####wwwwwwwwwwww####
  ####wwwwwwwwwwww####
  ....................
]])
  else
  ApplyTiles(water, -4, 11, [[
    ....^^^......^^^....
    ####wwwwwwwwwwww####
    ####wwwwwwwwwwww####
    ]])
end

Spawn("player", 10, 10)
Spawn("chest", 8.5, 10, "room3")

end

function room3(wet)
  ApplyTiles(castle, -2, 0, [[
  xxxxxxxxxxxxxxxxxxxx
  xxxxxxxxxxxxxxxxxxxx
  xooooooooooooooooooo
  xo................/*
  xo.................*
  xo.................*
  xo.................*
  oo.................*
  *..................*
  *..................*
  *..................*
  *...............==.*
  oooooo..oooooooooooo
  xxxxxx..xxxxxxxxxxxx
  xxxxxx..xxxxxxxxxxxx
  ]])
if wet then
  ApplyTiles(water, -4, 3, [[
    ..wwww79............
    ..wwww46............
    ..wwww46............
    ..wwww46............
    ..wwww46............
    .wwwww46............
    .wwwww46............
    .wwwww46............
    .wwwww46............
    ......46............
    ......46............
    ......46............
  ]])
else
  ApplyTiles(water, 4, 8, [[
  79
  46
  46
  46
  46
  46
  46
    ]])
end

Spawn("player", 2, 11)
Spawn("cauldron", 17, 10, "two")

end

function two(wet)
  ApplyTiles(castle, -4, 0, [[
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ====================
    xxxxxxxxxxxxxxxxxxxx
    xx[][]xx[][]xx[][]xx
    xxn##nxxn##nxxn##nxx
    xxu##uxxn##nxxn##nxx
    xx[][]xx[][]xx[][]xx
    xxxxxxxxxxxxxxxxxxxx
    xxxxxxxxxxxxxxxxxxxx
    xx[][]xx[][]xx[][]xx
    ]])
  ApplyTiles(clouds, -4, 0, [[
    ..{ooo}..{oo}...{oo}
    ...{ooo}.........{o}
    oo}.................
  ]])
  
Spawn("key", 5, 5)
Spawn("player", 8, 5)
Spawn("cauldron", 10, 5, "start")
Spawn("chest", 15, 5, "start")

end

function reject()
  ApplyTiles(glitch, -4, 0, [[
    ooo................o
    ooo................o
    ...................o
    ...................o
    ...................o
    ooo...........ooo--o
    ooo...........ooo..o
    ooo...........ooo..o
    ooo...........ooo--o
    ooo...........ooo..o
    ||o...........ooo..o
    ||o...........ooo--o
    ||o...........ooo..o
    ooo------oooooooo..o
    ooo......oooooooo--o
    ]])
    Spawn("player", 18, 6.5)
    Spawn("diamond", 1, 3.5)
    Spawn("lock", 2.5, 3.5)
    Spawn("cauldron", 10.5, 12, "rejecttwo")
    Spawn("chest", 13, 12, "cage")
end

function rejecttwo()
  ApplyTiles(glitch, -4, 0, [[
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    oooooooooooooooooooo
    oooooooooooooooooooo
    ooo|||ooo|||ooo|||oo
    ooo|||ooo|||ooo|||oo
    ooo|||ooo|||ooo|||oo
    oooooooooooooooooooo
    oooooooooooooooooooo
    oooooooooooooooooooo
    ooo|||ooo|||ooo|||oo
    ]])

    Spawn("player", 10, 5)
    Spawn("chest", 12.5, 5, "reject")
    Global("chest", 15, 5, "fanroom")
    Spawn("key", 5, 5)
    Spawn("key", 7.5, 5)
end

function fanroom()
  ApplyTiles(glitch, -4, 0, [[
    oooooooooooooooooooo
    o..o..o..o..o..o..o.
    oooooooooooooooooooo
    o/.............\oooo
    o...............oooo
    o...............oooo
    o...............oooo
    o...............oooo
    o.......o.......oooo
    o.......|..........o
    o.......|..........o
    o.......|..........o
    oooooooooooooooooooo
    o..o..o..o..o..o..o.
    oooooooooooooooooooo
    ]])

    Spawn("player", 2, 11)
    Spawn("chest", 3.5, 11, "cage")
    Spawn("cauldron", 14, 11, "reject")
    Spawn("lock", 16.5, 10.5)
    Global("fan", 18, 11)
end

function cage()
  ApplyTiles(glitch, 2, -1, [[
    ..o..o..
    ..o..o..
    ..o..o..
    ..o..o..
    ..o..o..
    oooooooo
    |......|
    |......|
    |......|
    |......|
    |......|
    |......|
    oooooooo
    ]])

    Spawn("player", 10, 10)
end

tiles = "../custom/tiles/castleplus"
pattern = "backgrounds/scuzz"
--dark = {start = {0.11, 0.08, 0.15}, two = {0.55, 0.22, 0.02}}
--light = {start = {0.22, 0.13, 0.30}, two = {0.88, 0.44, 0.05}}
dark = {two = {0.03, 0.03, 0.33}, start = {0.33, 0.03, 0.03}}
light = {two = {0.06, 0.06, 0.55}, start = {0.55, 0.06, 0.06}}
dark.threadless = {0.75, 0.55, 0.75}
light.threadless = {1.0, 0.96, 0.46}
dark.reject = {0.5, 0.0, 0.5}
light.reject = {0.8, 0.0, 0.8}
dark.rejecttwo = {0.1, 0.4, 0.3}
light.rejecttwo = {0.2, 0.7, 0.4}