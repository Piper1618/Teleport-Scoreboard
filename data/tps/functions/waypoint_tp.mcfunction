execute store result score _x tps run data get storage tps:data waypoint_x
execute store result score _y tps run data get storage tps:data waypoint_y
execute store result score _z tps run data get storage tps:data waypoint_z

tag @e remove tps
tag @s add tps

function tps:search