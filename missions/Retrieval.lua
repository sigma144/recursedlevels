
palace = {["."]="empty", ["<"]="brick_ul", ["["]="brick_l", ["o"]="brick_m", ["]"]="brick_r", [">"]="brick_ur",
  ["%"]="brick_dl", ["^"]="brick_dm", ["&"]="brick_dr", 
  ["("]="pillar_ull", ["/"]="pillar_ul", ["_"]="pillar_u", ["\\"]="pillar_ur", [")"]="pillar_urr",
  ["{"]="pillar_l", ["#"]="pillar_m", ["}"]="pillar_r", 
  ["-"]="ledge", ["|"]="line_v", ["="]="line_h", ["v"]="brick_d",
  ["n"]="pillarv_u", ["I"]="pillarv_c", ["u"]="pillarv_d", ["x"]="block",
  g="grass1", G="grass2", r="ruin1", R="ruin2"}

water = {["_"]="water_surface", ["w"]="water", ["_"]="acid_surface", ["a"]="acid", 
  ["7"]="buoy_ul", ["8"]="buoy_u", ["9"]="buoy_ur",
  ["n"]="buoy_v_u", ["4"]="buoy_l", ["5"]="buoy_c", ["6"]="buoy_r",
  ["|"]="buoy_v_c", ["1"]="buoy_dl", ["2"]="buoy_d", ["3"]="buoy_dr",
  ["u"]="buoy_v_d", ["{"]="buoy_h_l", ["="]="buoy_h_c", ["}"]="buoy_h_r",  
  ["<"]="brick_ul_a", [">"]="brick_ur_a",
  ["("]="pillar_ull_a", [")"]="pillar_urr_a",
  ["-"]="ledge_a", ["^"]="ledge_x_a", }

paradox = {["-"]="ledge_x", ["\\"]="black_l", ["o"]="black", ["x"]="black_hole", ["/"]="black_r"}
clouds = {["{"]="cloud_l", ["}"]="cloud_r", ["o"]="cloud", ["-"]="cloudledge", }
crazy = { o = "black", ["-"] = "black_ledge",
                z = "glitch_tunnel", ["#"] = "glitch_check", ["?"] = "glitch_ugly",
                ["1"] = "glitch_static1", ["2"] = "glitch_static2", ["3"] = "glitch_static3",
                ["4"] = "glitch_static4", ["5"] = "glitch_static5" }

function start(wet)
  ApplyTiles(palace, -4, 0, [[
    ...[oI...........{#}
    ...[oI...........{#}
    ...[oI...........{#}
    ^^^ooI..........(/_\
    oooooI...........{#}
    vvvvvI...........{#}
    .....I...........{#}
    .....I..........(/_\
    .....I...........{#}
    .....I...........{#}
    .....u...........{#}
    ^^&.....%^^^^^^^^^^^
    oo].....[ooooooooooo
    Go].....[ooooooooooo
    Gr]-----[ooooooooooo
  ]])
  ApplyTiles(water, -4, 0, [[
    ...
    ___
    aaa
  ]])
  Spawn("player", 9, 10)
  Spawn("cauldron", 1, 10, "two")
  Spawn("chest", 13, 10, "jarroom")
  Spawn("crystal", 13, 5)
end

function two(wet)
  ApplyTiles(palace, -4, 0, [[
    ]ggG..........IgG...
    ]G............IGg...
    ].............Iggg..
    ].............IGgGgG
    ].............Igg.gg
    ].............Ig..gR
    ].............I.....
    G.............I.....
    G.............I.....
    rR^>..........I.....
    oo]...........u.....
    oo]........g.....%^^
    rRrggRggGrRR.....[oo
    ooorrorrRooo.....[oG
    oooooooooooo-----GRg
  ]])
  ApplyTiles(water, 13, 0, [[
    ...
    ___
    .aa
  ]])
  Spawn("player", 19, 10)
  Spawn("cauldron", 19, 10, "start")
  Spawn("chest", 3, 8, "acidroom")
  Spawn("chest", 8, 11, "jarroom")
  Global("generic", 5.5, 11)
end

function jarroom(wet)
  ApplyTiles(palace, -4, 0, [[
    oooo.ooo|...........
    oooo.ooo|...........
    x==x.x==x........./_
    |.................{#}
    |.................{#}
    |.................{#}
    |.................{#}
    |.................{#}
    x===x---..........{#}
    oooo|.............{#}
    oooo|.............{#}
    oooo|.............{#}
    oooo|......%^^^^^&oo
    oooo|......[oooooooo
    oooo|--%^^&[oooooooo
  ]])
  if wet then
    ApplyTiles(water, -4, 0, [[
    ....|...............
    ....|...............
    ....u...._________..
    .aaaaaaaaaaaaaaaaa..
    .aaaaaaaaaaaaaaaaa..
    .aaaaaaaaaaaaaaaaa..
    .aaaaaaaaaaaaaaaaa..
    .aaaaaaaaaaaaaaaaa..
    .....---aaaaaaaaaa..
    .....aaaaaaaaaaaaa..
    .....aaaaaaaaaaaaa..
    .....aaaaaaaaaaaaa..
    .....aaaaaa.........
    .....aaaaaa.........
    .....--.............
  ]])
  else
    ApplyTiles(water, 0, 0, [[
    |
    |
    |
    |
    |
    |
    |
    u
  ]])
  end
  Spawn("player", 6, 6.2)
  Spawn("generic", 9, 13)
  Spawn("yield", 16, 11)
  Spawn("box", 2.5, 7)
  Spawn("chest", 13, 11, "jarroom")
end

function acidroom(wet)
  ApplyTiles(palace, -4, 0, [[
    ....................
   .....................
    _\)..............(/_
    #}................{#
    #}................{#
    #}................{#
    #}................{#
    #}................{#
    #}................{#
    #}................{#
    #}....../__\......{#
    #}......{##}......{#
    #}......{##}......{#
    xxxxxxxxxxxxxxxxxxxx
    xxxxxxxxxxxxxxxxxxxx
  ]])
  if wet then
    ApplyTiles(water, -4, 0, [[
    ....................
    ....................
    ....................
    ....................
    ..________________..
    ..aaaaaaaaaaaaaaaa..
    ..aaaaaaaaaaaaaaaa..
    ..aaaaaaaaaaaaaaaa..
    ..aaaaaaaaaaaaaaaa..
    ..aaaaaaaaaaaaaaaa..
    ..aaaaaa....aaaaaa..
    ..aaaaaa....aaaaaa..
    ..aaaaaa....aaaaaa..
    xxxxxxxxxxxxxxxxxxxx
    xxxxxxxxxxxxxxxxxxxx
    ]])
  else
    ApplyTiles(water, -4, 0, [[
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ..______....______..
    ..aaaaaa....aaaaaa..
    ..aaaaaa....aaaaaa..
    xxxxxxxxxxxxxxxxxxxx
    xxxxxxxxxxxxxxxxxxxx
]])

  end
  Spawn("player", 10, 9)

end

function reject()
  ApplyTiles(paradox, -4, 0, [[
    .oo..............oo.
    \oo/............\oo/
    .oo..............oo.
    .oo..............oo.
    .oo..............oo.
    .oo..............oo.
    \oo/............\oo/
    .oo..............oo.
    .oo..............oo.
    .oo..............oo.
    .oo..............oo.
    xooxxxoxxxoxxxo--oox
    .oo...x...x...x..oo.
    .oo...x...x...x..oo.
    xooxxxoxxxoxxxo--oox
  ]])
  --ApplyTiles(water, 2, 10, [[
  --  aaa
  --  aaa
  --  aaa
  --]])
  Spawn("player", 16, 12.5)
  Spawn("chest", 12.5, 10, "diamondroom")
  Spawn("fan", 8.5, 10)
  Spawn("key", 4.5, 10)
end

function diamondroom(wet)
  ApplyTiles(paradox, -4, 0, [[
    oooooooooooooooo...o
    o/..........\ooo...o
    o............ooo...o
    o............ooo...o
    o..................x
    x..................x
    x..................x
    x............ooooooo
    o............o/\o/\o
    o--..........o..o..o
    o............o..o..o
    o............o..o..o
    o............o..o..o
    o............o..o..o
    oooooooooooooo..o..o
  ]])
  Spawn("player", 2, 7.2)
  Spawn("generic", 6, 13)
  Spawn("generic", 8, 13)
  Spawn("yield", 12, 13)
  Spawn("lock", 13.52, 5.5)
  Spawn("lock", 15.02, 5.5)
  Spawn("diamond", 17.5, 1.5)
  if wet then
  ApplyTiles(water, -3, 8, [[
    ____________
    ^^aaaaaaaaaa
    aaaaaaaaaaaa
    aaaaaaaaaaaa
    aaaaaaaaaaaa
    aaaaaaaaaaaa
  ]])
  end
end

function threadless()
  ApplyTiles(clouds, -4, 0, [[
    ....................
    ....................
    ....................
    ....................
    ....................
    ......{oooo}........
    .......{ooooo}......
    ....................
    ....................
    .............{--}...
    .......{---}........
    ....................
    ....................
    .{----}.............
    ....................
  ]])
  Spawn("player", 3.5, 11.2)
  Spawn("chest", 9, 4, "keyroom")
end

function keyroom()
  ApplyTiles(clouds, -4, 0, [[
    oooooo}......{oooooo
    oooooo}......{oooooo
    oooooo}......{oooooo
    oooooo}.{--}.{oooooo
    oooo}..........{oooo
    oooo}...........{ooo
    oooo}...........{ooo
    ooo}............{ooo
    ooo}............{ooo
    ooo}............{ooo
    ooo}............{ooo
    ooo}.............{oo
    ooo}.............{oo
    oooooooooooooooooooo
    oooooooooooooooooooo
  ]])
  ApplyTiles(palace, -4, 13, [[
    .._________________.
    ..ooooooooooooooooo.
  ]])
  Spawn("player", 10, 1.2)
  Spawn("key", 10, 12)
  Spawn("chest", 14, 12, "jumproom")
end

function jumproom()
  ApplyTiles(clouds, -4, 0, [[
    ooooooooooooooo}..{o
    ooooooooooooooo}..{o
    ooooo}...{ooo}....{o
    oooo}......{o}....{o
    oo}...............{o
    o}................{o
    o}................{o
    o}.......o--oooooooo
    o}.......o..oooooooo
    o}.......o..oooooooo
    ooooo}....--oooooooo
    ooooo}......oooooooo
    oooooo}.....oooooooo
    oooooooooooooooooooo
    oooooooooooooooooooo
  ]])
  ApplyTiles(palace, 5, 6, [[
    ....
    n--n
    I..I
    I..I
    u--I
    ...I
    ...I
    nooI
    IooI
  ]])
  Spawn("player", 7, 12)
  Spawn("yield", 11, 6.9)
  Spawn("lock", 12.52, 5.5)
  Spawn("chest", 14.5, 6, "resetroom")
  Spawn("chest", 17, 6, "rubyroom")
end

function resetroom()
  ApplyTiles(clouds, -4, 0, [[
    .......{oooooooooooo
    ........{ooooooooooo
    ........{ooooooooooo
    ..........{ooooooooo
    ...........{oooooooo
    ..{oo}.....{oooooooo
    ..{ooooo}..{oooooooo
    ......{o----oo}.....
    ....................
    ....................
    .....o---..---o.....
    ..............o.....
    ..............o.....
    oooooooooooooooooooo
    oooooooooooooooooooo
  ]])
  ApplyTiles(palace, -4, 1, [[
    \)............
    }.............
    }.............
    }.............
    }.............
    }.............
    }.............
    }.............
    }.............
    }....x---..---x
    }.............|
    }.............|
    ^^^^^^^^^^^^^^^^^^^^
  ]])
  Spawn("player", 3, 12)
  Spawn("record", 5.5, 9, "sounds/voices/t6")
  Spawn("yield", 10, 6.5)
  Spawn("chest", 17, 12, "keyroom")
end

function rubyroom()
  ApplyTiles(clouds, -4, 0, [[
    ..........{ooooo}.{o
    ....{ooo}.{ooooo}.{o
    .{oooooo}.{oooo}..{o
    .{o}{ooo}..{ooo}...{
    ...........{ooo}...{
    ...........{ooo}...{
    ...................{
    ...................{
    ...................{
    .....ooooooooooooooo
    .....ooooooooooooooo
    .....ooooooooooooooo
    oooooooooooooooooooo
    oooooooooooooooooooo
    oooooooooooooooooooo
  ]])
  ApplyTiles(palace, -4, 0, [[
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    ....................
    .................n..
    .................I..
    .....%^^^^^^....^^^^
    .....[ooo...........
    .....[oo............
    ^^^^&ooo............
    ooooooo.............
    ooooo...............
  ]])
  Spawn("player", 9, 8)
  Spawn("lock", 13.02, 7.5)
  Spawn("lock", 14.52, 7.5)
  Spawn("yield", 3, 11)
  Spawn("ruby", 17.5, 6.5)
end

function glitch()
  ApplyTiles(crazy, 0, 0, [[
o##oo521...54o?oo.??
##o.o43...3215oo.o.o
o#oo5o21....432oo.o.
.#o.o43......15ooo.o
.#ooz1.......4o2o14.
.#z#oo2.......3o?zzo
###o4o.......ooooooo
oz#ooo.........ooz?z
z.?oo...........o#o.
ozoo...........oozzo
o#ooo...........o2oo
zozo............ozo?
ozoz............?o?o
zozo##?###zzo???z?o?
oz5#?##4z?#z?oo??o1o
]])
ApplyTiles(palace, 0, 0, [[
...}................
...r.>......../...x.
..&.........v.......
.....-.........%.#..
.x..o............\..
..%............[....
..|............./...
..................%.
x..#................
.|...............>..
.n.#................
..G..............(G.
.=..................
.g.o...^......=R..&.
..r..\.....I........
]])
Spawn("player", 10, 12)
end



tiles = "../custom/tiles/whitepalace"
pattern = "backgrounds/tubes"
dark = { start = {0, 0.3, 0.1}, two = {0.7, 0.25, 0}, reject = {0.25, 0, 0.35}, threadless = {0, 0.4, 0.75} }
light = { start = {0, 0.5, 0.2}, two = {0.9, 0.5, 0}, reject = {0.5, 0, 0.7}, threadless = {0, 0.5, 0.9} }
