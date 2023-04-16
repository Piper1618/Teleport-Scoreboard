#scoreboard players set _x tps 117
#scoreboard players set _y tps -45
#scoreboard players set _z tps -1
#tag @e remove tps
#tag @p add tps


scoreboard players set _axis tps 0
scoreboard players set _escape tps 0

execute positioned 0 0 0 run function tps:search_01_axis