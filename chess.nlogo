__includes [
  "board.nls"
  "pieces.nls"

  "rook.nls"
  "knight.nls"
  "bishop.nls"
  "queen.nls"
  "king.nls"
  "pawn.nls"

  "game.nls"
]

globals [
  pieces-left-direction
  pieces-right-direction
  pieces-up-direction
  pieces-down-direction
  pieces-same-direction
  pieces-always-mark-obstacles
  pieces-mark-opposing-obstacles
  pieces-never-mark-obstacles
  pieces-max-search-depth

  game-white-turn
  game-black-turn
  game-selected-piece
  game-turn
]

patches-own [orig-color marked?]
turtles-own [moved?]

to initialize-constants
  game-initialize-constants
  pieces-initialize-constants
end

to initialize-globals
  game-initialize-globals
end

to sync-screen
  wait .1
end
@#$#@#$#@
GRAPHICS-WINDOW
21
20
869
349
-1
-1
40.0
1
10
1
1
1
0
0
0
1
-5
15
0
7
0
0
1
ticks
30.0

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

!
false
0
Rectangle -7500403 true true 120 180 135 195
Rectangle -7500403 true true 120 90 135 165

'
false
0
Rectangle -7500403 true true 120 90 135 120

.
false
0
Rectangle -7500403 true true 120 180 135 195

0
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 120 105 135 180
Rectangle -7500403 true true 180 105 195 180

1
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 150 90 165 180
Rectangle -7500403 true true 135 105 150 120

2
false
0
Rectangle -7500403 true true 120 180 195 195
Rectangle -7500403 true true 135 165 150 180
Rectangle -7500403 true true 150 150 165 165
Rectangle -7500403 true true 165 135 180 150
Rectangle -7500403 true true 180 105 195 135
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 120 105 135 120

3
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 120 165 135 180
Rectangle -7500403 true true 180 150 195 180
Rectangle -7500403 true true 180 105 195 135
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 135 135 180 150
Rectangle -7500403 true true 120 105 135 120

4
false
0
Rectangle -7500403 true true 120 150 195 165
Rectangle -7500403 true true 165 90 180 150
Rectangle -7500403 true true 165 165 180 195
Rectangle -7500403 true true 120 135 135 150
Rectangle -7500403 true true 135 120 150 135
Rectangle -7500403 true true 150 105 165 120

5
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 180 135 195 180
Rectangle -7500403 true true 135 90 195 105
Rectangle -7500403 true true 135 105 150 120
Rectangle -7500403 true true 135 120 180 135

6
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 180 150 195 180
Rectangle -7500403 true true 120 120 135 180
Rectangle -7500403 true true 135 135 180 150
Rectangle -7500403 true true 120 105 135 120
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 180 105 195 120

7
false
0
Rectangle -7500403 true true 120 90 195 105
Rectangle -7500403 true true 180 105 195 120
Rectangle -7500403 true true 165 120 180 135
Rectangle -7500403 true true 135 165 150 195
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 150 135 165 150

8
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 120 150 135 180
Rectangle -7500403 true true 180 105 195 135
Rectangle -7500403 true true 120 105 135 135
Rectangle -7500403 true true 180 150 195 180
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 135 135 180 150

9
false
0
Rectangle -7500403 true true 135 180 180 195
Rectangle -7500403 true true 120 165 135 180
Rectangle -7500403 true true 135 135 180 150
Rectangle -7500403 true true 120 105 135 135
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 180 105 195 180

:
false
0
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 135 120 150 135

<
false
0
Rectangle -7500403 true true 105 135 120 150
Rectangle -7500403 true true 120 120 135 135
Rectangle -7500403 true true 135 165 150 180
Rectangle -7500403 true true 135 105 150 120
Rectangle -7500403 true true 120 150 135 165

>
false
0
Rectangle -7500403 true true 165 135 180 150
Rectangle -7500403 true true 150 120 165 135
Rectangle -7500403 true true 135 165 150 180
Rectangle -7500403 true true 135 105 150 120
Rectangle -7500403 true true 150 150 165 165

?
false
0
Rectangle -7500403 true true 120 180 135 195
Rectangle -7500403 true true 150 105 165 135
Rectangle -7500403 true true 90 105 105 120
Rectangle -7500403 true true 105 90 120 105
Rectangle -7500403 true true 120 90 135 105
Rectangle -7500403 true true 120 150 135 165
Rectangle -7500403 true true 90 120 105 135
Rectangle -7500403 true true 135 135 150 150
Rectangle -7500403 true true 135 90 150 105

_
false
0

_a
false
0
Rectangle -7500403 true true 105 105 120 195
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 165 105 180 195
Rectangle -7500403 true true 120 135 165 150

_b
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 165 105 180 135
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 120 135 165 150
Rectangle -7500403 true true 165 150 180 180

_c
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 165 105 180 120
Rectangle -7500403 true true 165 165 180 180
Rectangle -7500403 true true 105 105 120 180

_d
false
0
Rectangle -7500403 true true 105 180 165 195
Rectangle -7500403 true true 165 105 180 180
Rectangle -7500403 true true 105 90 165 105
Rectangle -7500403 true true 105 105 120 180

_e
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 180 180 195
Rectangle -7500403 true true 120 135 165 150
Rectangle -7500403 true true 120 90 180 105

_f
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 135 165 150
Rectangle -7500403 true true 120 90 180 105

_g
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 165 150 180 180
Rectangle -7500403 true true 150 150 165 165
Rectangle -7500403 true true 105 105 120 180
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 165 105 180 120

_h
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 165 90 180 195
Rectangle -7500403 true true 120 135 165 150

_i
false
0
Rectangle -7500403 true true 105 90 180 105
Rectangle -7500403 true true 135 105 150 180
Rectangle -7500403 true true 105 180 180 195

_j
false
0
Rectangle -7500403 true true 135 90 180 105
Rectangle -7500403 true true 150 105 165 180
Rectangle -7500403 true true 105 165 120 180
Rectangle -7500403 true true 120 180 150 195

_k
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 135 135 150
Rectangle -7500403 true true 135 120 150 135
Rectangle -7500403 true true 150 105 165 120
Rectangle -7500403 true true 165 90 180 105
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 180 180 195

_l
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 180 180 195

_m
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 165 90 180 195
Rectangle -7500403 true true 120 105 135 120
Rectangle -7500403 true true 135 120 150 150
Rectangle -7500403 true true 150 105 165 120

_n
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 165 90 180 195
Rectangle -7500403 true true 135 135 150 150
Rectangle -7500403 true true 120 120 135 135
Rectangle -7500403 true true 150 150 165 165

_o
false
0
Rectangle -7500403 true true 105 105 120 180
Rectangle -7500403 true true 165 105 180 180
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 120 180 165 195

_p
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 120 135 165 150
Rectangle -7500403 true true 165 105 180 135

_q
false
0
Rectangle -7500403 true true 105 105 120 180
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 165 105 180 165
Rectangle -7500403 true true 120 180 150 195
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 180 180 195

_r
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 90 165 105
Rectangle -7500403 true true 120 135 165 150
Rectangle -7500403 true true 165 105 180 135
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 180 180 195

_s
false
0
Rectangle -7500403 true true 105 180 165 195
Rectangle -7500403 true true 120 90 180 105
Rectangle -7500403 true true 105 105 120 135
Rectangle -7500403 true true 165 150 180 180
Rectangle -7500403 true true 120 135 165 150

_t
false
0
Rectangle -7500403 true true 135 105 150 195
Rectangle -7500403 true true 105 90 180 105

_u
false
0
Rectangle -7500403 true true 105 90 120 180
Rectangle -7500403 true true 165 90 180 180
Rectangle -7500403 true true 120 180 165 195

_v
false
0
Rectangle -7500403 true true 105 90 120 150
Rectangle -7500403 true true 165 90 180 150
Rectangle -7500403 true true 120 150 135 180
Rectangle -7500403 true true 135 180 150 195
Rectangle -7500403 true true 150 150 165 180

_w
false
0
Rectangle -7500403 true true 105 90 120 180
Rectangle -7500403 true true 135 135 150 180
Rectangle -7500403 true true 165 90 180 180
Rectangle -7500403 true true 120 180 135 195
Rectangle -7500403 true true 150 180 165 195

_x
false
0
Rectangle -7500403 true true 105 90 120 120
Rectangle -7500403 true true 165 90 180 120
Rectangle -7500403 true true 165 165 180 195
Rectangle -7500403 true true 105 165 120 195
Rectangle -7500403 true true 120 120 135 135
Rectangle -7500403 true true 135 135 150 150
Rectangle -7500403 true true 150 150 165 165
Rectangle -7500403 true true 120 150 135 165
Rectangle -7500403 true true 150 120 165 135

_y
false
0
Rectangle -7500403 true true 105 90 120 120
Rectangle -7500403 true true 165 90 180 120
Rectangle -7500403 true true 120 120 135 135
Rectangle -7500403 true true 150 120 165 135
Rectangle -7500403 true true 135 135 150 195

_z
false
0
Rectangle -7500403 true true 105 180 180 195
Rectangle -7500403 true true 105 90 180 105
Rectangle -7500403 true true 105 165 120 180
Rectangle -7500403 true true 120 150 135 165
Rectangle -7500403 true true 135 135 150 150
Rectangle -7500403 true true 150 120 165 135
Rectangle -7500403 true true 165 105 180 120

a
false
0
Rectangle -7500403 true true 120 180 180 195
Rectangle -7500403 true true 165 135 180 180
Rectangle -7500403 true true 120 150 165 165
Rectangle -7500403 true true 105 165 120 180
Rectangle -7500403 true true 120 120 165 135

b
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 165 135 180 180
Rectangle -7500403 true true 135 120 165 135
Rectangle -7500403 true true 120 135 135 150

bishops
false
0
Circle -7500403 true true 135 20 30
Circle -16777216 false false 135 20 30
Rectangle -7500403 true true 90 255 210 300
Rectangle -16777216 false false 90 255 210 300
Polygon -7500403 true true 105 255 120 150 180 150 195 255
Polygon -16777216 false false 105 255 120 150 180 150 195 255
Rectangle -7500403 true true 105 165 195 150
Line -16777216 false 137 59 162 59
Polygon -7500403 true true 135 45 120 60 120 90 120 105 105 105 105 75 90 90 90 105 90 120 105 135 195 135 210 120 210 105 210 90 195 75 165 45
Polygon -16777216 false false 135 45 120 60 120 105 105 105 105 75 90 90 90 120 105 135 195 135 210 120 210 90 165 45
Rectangle -7500403 true true 105 135 195 150

c
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 105 135 120 180
Rectangle -7500403 true true 120 120 165 135
Rectangle -7500403 true true 165 165 180 180

check
false
0
Rectangle -7500403 true true 90 150 105 165
Rectangle -7500403 true true 195 105 210 120
Rectangle -7500403 true true 180 120 195 135
Rectangle -7500403 true true 165 135 180 150
Rectangle -7500403 true true 150 150 165 165
Rectangle -7500403 true true 135 165 150 180
Rectangle -7500403 true true 120 180 135 195
Rectangle -7500403 true true 105 165 120 180
Polygon -7500403 true true 90 165 120 195 135 180 105 150
Polygon -7500403 true true 120 180 195 105 210 120 135 195

d
false
0
Rectangle -7500403 true true 105 135 120 180
Rectangle -7500403 true true 120 120 150 135
Rectangle -7500403 true true 150 135 165 150
Rectangle -7500403 true true 165 90 180 195
Rectangle -7500403 true true 120 180 165 195

e
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 105 135 120 180
Rectangle -7500403 true true 120 120 165 135
Rectangle -7500403 true true 120 150 165 165
Rectangle -7500403 true true 165 135 180 150

f
false
0
Rectangle -7500403 true true 120 105 135 195
Rectangle -7500403 true true 135 90 165 105
Rectangle -7500403 true true 165 105 180 120
Rectangle -7500403 true true 105 135 120 150
Rectangle -7500403 true true 135 135 150 150

g
false
0
Rectangle -7500403 true true 120 105 165 120
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 165 105 180 180
Rectangle -7500403 true true 105 120 120 150
Rectangle -7500403 true true 120 150 165 165

h
false
0
Rectangle -7500403 true true 105 90 120 195
Rectangle -7500403 true true 120 135 135 150
Rectangle -7500403 true true 135 120 165 135
Rectangle -7500403 true true 165 135 180 195

i
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 135 120 150 180
Rectangle -7500403 true true 135 90 150 105
Rectangle -7500403 true true 120 120 135 135

j
false
0
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 120 165 180
Rectangle -7500403 true true 120 180 150 195
Rectangle -7500403 true true 105 165 120 180
Rectangle -7500403 true true 135 120 150 135

k
false
0
Rectangle -7500403 true true 120 90 135 195
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 180 180 195
Rectangle -7500403 true true 150 135 165 150
Rectangle -7500403 true true 165 120 180 135

kings
false
0
Polygon -7500403 true true 105 255 120 90 180 90 195 255
Polygon -16777216 false false 105 255 120 90 180 90 195 255
Polygon -7500403 true true 120 85 105 40 195 40 180 85
Polygon -16777216 false false 119 85 104 40 194 40 179 85
Rectangle -7500403 true true 105 105 195 75
Rectangle -16777216 false false 112 75 191 106
Rectangle -7500403 true true 90 255 210 300
Rectangle -16777216 false false 90 255 210 300
Rectangle -7500403 true true 165 23 134 13
Rectangle -7500403 true true 144 0 154 44
Polygon -16777216 false false 153 0 144 0 144 13 133 13 133 22 144 22 144 41 154 41 154 22 165 22 165 12 153 12
Rectangle -7500403 true true 112 75 190 107
Rectangle -7500403 true true 135 15 165 15
Rectangle -7500403 true true 134 14 166 22

knight
true
0
Line -16777216 false 75 255 225 255
Polygon -7500403 true true 210 255 240 255 240 225 225 180 225 165 240 135 255 90 240 75 240 45 210 30 180 30 165 45 60 60 45 75 45 90 45 105 60 120 75 105 120 120 90 150 75 195 75 210 90 255
Polygon -16777216 false false 90 255 240 255 240 225 225 180 225 165 240 135 255 90 240 75 240 45 210 30 180 30 165 45 60 60 45 75 45 90 45 105 60 120 75 105 120 120 90 150 75 195 75 210
Line -16777216 false 45 90 60 90
Circle -16777216 true false 134 63 24
Line -16777216 false 197 34 192 45
Line -16777216 false 220 41 212 49
Line -16777216 false 239 53 230 58
Line -16777216 false 236 75 221 75
Line -16777216 false 247 100 233 98
Line -16777216 false 237 126 231 123
Line -16777216 false 229 148 223 145
Rectangle -7500403 true true 90 255 210 300
Rectangle -16777216 false false 90 255 210 300

knights
false
0
Line -16777216 false 75 255 225 255
Polygon -7500403 true true 90 255 60 255 60 225 75 180 75 165 60 135 45 90 60 75 60 45 90 30 120 30 135 45 240 60 255 75 255 90 255 105 240 120 225 105 180 120 210 150 225 195 225 210 210 255
Polygon -16777216 false false 210 255 60 255 60 225 75 180 75 165 60 135 45 90 60 75 60 45 90 30 120 30 135 45 240 60 255 75 255 90 255 105 240 120 225 105 180 120 210 150 225 195 225 210
Line -16777216 false 255 90 240 90
Circle -16777216 true false 134 63 24
Line -16777216 false 103 34 108 45
Line -16777216 false 80 41 88 49
Line -16777216 false 61 53 70 58
Line -16777216 false 64 75 79 75
Line -16777216 false 53 100 67 98
Line -16777216 false 63 126 69 123
Line -16777216 false 71 148 77 145
Rectangle -7500403 true true 90 255 210 300
Rectangle -16777216 false false 90 255 210 300

l
false
0
Rectangle -7500403 true true 135 90 150 195

m
false
0
Rectangle -7500403 true true 105 120 120 195
Rectangle -7500403 true true 120 120 135 135
Rectangle -7500403 true true 135 135 150 165
Rectangle -7500403 true true 150 120 165 135
Rectangle -7500403 true true 165 135 180 195

n
false
0
Rectangle -7500403 true true 105 120 120 195
Rectangle -7500403 true true 120 135 135 150
Rectangle -7500403 true true 135 120 165 135
Rectangle -7500403 true true 165 135 180 195

o
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 105 135 120 180
Rectangle -7500403 true true 165 135 180 180
Rectangle -7500403 true true 120 120 165 135

p
false
0
Rectangle -7500403 true true 105 120 120 195
Rectangle -7500403 true true 120 120 165 135
Rectangle -7500403 true true 120 150 165 165
Rectangle -7500403 true true 165 135 180 150

pawns
false
0
Polygon -16777216 false false 105 225 120 120 180 120 195 225
Circle -7500403 true true 105 20 90
Rectangle -7500403 true true 90 225 210 270
Rectangle -16777216 false false 90 225 210 270
Polygon -7500403 true true 105 225 120 120 180 120 195 225
Rectangle -16777216 false false 105 105 195 120
Rectangle -7500403 true true 105 105 195 120
Circle -16777216 false false 105 20 90

q
false
0
Rectangle -7500403 true true 165 120 180 195
Rectangle -7500403 true true 150 135 165 150
Rectangle -7500403 true true 120 120 150 135
Rectangle -7500403 true true 105 135 120 150
Rectangle -7500403 true true 120 150 165 165

queens
false
0
Circle -7500403 true true 140 11 20
Circle -16777216 false false 140 10 20
Circle -7500403 true true 120 22 60
Circle -16777216 false false 120 21 60
Rectangle -7500403 true true 90 255 210 300
Rectangle -16777216 false false 90 255 210 300
Polygon -7500403 true true 105 255 120 90 180 90 195 255
Polygon -16777216 false false 105 255 120 90 180 90 195 255
Rectangle -7500403 true true 105 105 195 75
Rectangle -16777216 false false 110 75 189 103
Polygon -7500403 true true 120 75 105 45 195 45 180 75
Polygon -16777216 false false 120 75 105 45 195 45 180 75
Circle -7500403 true true 180 35 20
Circle -16777216 false false 180 35 20
Circle -7500403 true true 140 35 20
Circle -16777216 false false 140 35 20
Circle -7500403 true true 100 35 20
Circle -16777216 false false 100 35 20
Rectangle -7500403 true true 110 75 188 105

quit
false
0
Polygon -2674135 true false 270 75 225 30 30 225 75 270
Polygon -2674135 true false 30 75 75 30 270 225 225 270

r
false
0
Rectangle -7500403 true true 105 120 120 195
Rectangle -7500403 true true 120 135 135 150
Rectangle -7500403 true true 135 120 165 135
Rectangle -7500403 true true 165 135 180 150

rooks
false
0
Rectangle -7500403 true true 90 255 210 300
Rectangle -16777216 false false 90 255 210 300
Polygon -7500403 true true 90 255 120 105 180 105 210 255
Polygon -16777216 false false 90 255 120 105 180 105 210 255
Rectangle -7500403 true true 75 90 120 60
Rectangle -7500403 true true 75 84 225 105
Rectangle -7500403 true true 135 90 165 60
Rectangle -7500403 true true 180 90 225 60
Polygon -16777216 false false 90 105 75 105 75 60 108 61 110 84 157 83 156 60 165 60 165 84 194 84 195 60 225 60 225 105
Rectangle -7500403 true true 75 60 109 105
Rectangle -7500403 true true 157 59 187 89
Rectangle -7500403 true true 195 60 225 90
Rectangle -7500403 true true 120 60 146 89

s
false
0
Rectangle -7500403 true true 120 120 165 135
Rectangle -7500403 true true 120 150 165 165
Rectangle -7500403 true true 105 135 120 150
Rectangle -7500403 true true 105 180 165 195
Rectangle -7500403 true true 165 165 180 180

t
false
0
Rectangle -7500403 true true 135 90 150 180
Rectangle -7500403 true true 150 180 180 195
Rectangle -7500403 true true 180 165 195 180
Rectangle -7500403 true true 120 120 135 135
Rectangle -7500403 true true 150 120 165 135

u
false
0
Rectangle -7500403 true true 120 180 150 195
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 120 180 195
Rectangle -7500403 true true 105 120 120 180

v
false
0
Rectangle -7500403 true true 135 180 150 195
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 120 180 165
Rectangle -7500403 true true 105 120 120 165
Rectangle -7500403 true true 120 165 135 180

w
false
0
Rectangle -7500403 true true 105 120 120 180
Rectangle -7500403 true true 120 180 135 195
Rectangle -7500403 true true 135 150 150 180
Rectangle -7500403 true true 150 180 165 195
Rectangle -7500403 true true 165 120 180 180

x
false
0
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 120 165 135 180
Rectangle -7500403 true true 105 180 120 195
Rectangle -7500403 true true 150 135 165 150
Rectangle -7500403 true true 165 120 180 135
Rectangle -7500403 true true 150 165 165 180
Rectangle -7500403 true true 165 180 180 195
Rectangle -7500403 true true 105 120 120 135
Rectangle -7500403 true true 120 135 135 150

y
false
0
Rectangle -7500403 true true 120 180 165 195
Rectangle -7500403 true true 165 120 180 180
Rectangle -7500403 true true 120 150 165 165
Rectangle -7500403 true true 105 120 120 150

z
false
0
Rectangle -7500403 true true 105 180 180 195
Rectangle -7500403 true true 120 165 135 180
Rectangle -7500403 true true 135 150 150 165
Rectangle -7500403 true true 150 135 165 150
Rectangle -7500403 true true 105 120 180 135
@#$#@#$#@
NetLogo 6.0.4
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
