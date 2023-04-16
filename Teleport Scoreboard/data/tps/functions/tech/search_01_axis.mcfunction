scoreboard players add _axis tps 1

# Axis 1: x axis
execute if score _escape tps matches 0 if score _axis tps matches 1 run scoreboard players operation _target tps = _x tps
execute if score _escape tps matches 0 if score _axis tps matches 1 if score _target tps matches 1.. rotated -90 0 run function tps:tech/search_02_prepare
execute if score _escape tps matches 0 if score _axis tps matches 1 if score _target tps matches ..-1 rotated 90 0 run function tps:tech/search_02_prepare
execute if score _escape tps matches 0 if score _axis tps matches 1 if score _target tps matches 0 run function tps:tech/search_01_axis

# Axis 2: z axis
execute if score _escape tps matches 0 if score _axis tps matches 2 run scoreboard players operation _target tps = _z tps
execute if score _escape tps matches 0 if score _axis tps matches 2 if score _target tps matches 1.. rotated 0 0 run function tps:tech/search_02_prepare
execute if score _escape tps matches 0 if score _axis tps matches 2 if score _target tps matches ..-1 rotated 180 0 run function tps:tech/search_02_prepare
execute if score _escape tps matches 0 if score _axis tps matches 2 if score _target tps matches 0 run function tps:tech/search_01_axis

# Axis 3: y axis
execute if score _escape tps matches 0 if score _axis tps matches 3 run scoreboard players operation _target tps = _y tps
execute if score _escape tps matches 0 if score _axis tps matches 3 if score _target tps matches 1.. rotated 0 -90 run function tps:tech/search_02_prepare
execute if score _escape tps matches 0 if score _axis tps matches 3 if score _target tps matches ..-1 rotated 0 90 run function tps:tech/search_02_prepare
execute if score _escape tps matches 0 if score _axis tps matches 3 if score _target tps matches 0 run function tps:tech/search_01_axis

# Axis 4: done
#execute if score _escape tps matches 0 if score _axis tps matches 4 run setblock ~ ~ ~ minecraft:diamond_block
execute if score _escape tps matches 0 if score _axis tps matches 4 run tp @s ~ ~ ~
execute if score _escape tps matches 0 if score _axis tps matches 4 run scoreboard players set _escape tps 1