# Set a waypoint at the current location

execute store result storage tps:data waypoint_x int 1 run data get entity @s Pos[0]
execute store result storage tps:data waypoint_y int 1 run data get entity @s Pos[1]
execute store result storage tps:data waypoint_z int 1 run data get entity @s Pos[2]

execute if dimension minecraft:overworld run data modify storage tps:data waypoint_dim set value 0
execute if dimension minecraft:the_nether run data modify storage tps:data waypoint_dim set value 1
execute if dimension minecraft:the_end run data modify storage tps:data waypoint_dim set value 2