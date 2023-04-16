scoreboard players set _running tps 3
scoreboard players set _next tps 3

execute if score _escape tps matches 0 if score _running tps = _target tps run function tps:search_setup
execute if score _escape tps matches 0 if score _running tps < _target tps run scoreboard players add _next tps 4
execute if score _escape tps matches 0 if score _running tps < _target tps positioned ^ ^ ^4 run function tps:step_up_4