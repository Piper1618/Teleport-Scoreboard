scoreboard players add _step tps 1

execute if score _escape tps matches 0 if score _step tps matches 1 run scoreboard players operation _target tps = _x tps
#execute if score _escape tps matches 0 if score _step tps matches 1 if score _target tps matches 1.. run scoreboard players set _running tps 1
execute if score _escape tps matches 0 if score _step tps matches 1 if score _target tps matches 1.. rotated -90 0 positioned ^ ^ ^1 run function tps:step_up_1
#execute if score _escape tps matches 0 if score _step tps matches 1 if score _target tps matches ..-1 run scoreboard players set _running tps 1
execute if score _escape tps matches 0 if score _step tps matches 1 if score _target tps matches ..-1 rotated 90 0 positioned ^ ^ ^1 run function tps:step_up_1
execute if score _escape tps matches 0 if score _step tps matches 1 if score _target tps matches 0 run function tps:search_setup

execute if score _escape tps matches 0 if score _step tps matches 2 run setblock ~ 75 ~ minecraft:diamond_block
execute if score _escape tps matches 0 if score _step tps matches 2 run scoreboard players set _escape tps 1