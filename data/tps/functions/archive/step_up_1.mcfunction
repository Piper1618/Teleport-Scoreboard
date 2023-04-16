# Flip the sine of _target if it is negative
execute if score _target tps matches ..-1 run scoreboard players set _negate tps 0
execute if score _target tps matches ..-1 run scoreboard players operation _negate tps -= _target tps
execute if score _target tps matches ..-1 run scoreboard players operation _target tps = _negate tps

scoreboard players set _running tps 1

execute if score _escape tps matches 0 if score _running tps = _target tps run function tps:search_setup
execute if score _escape tps matches 0 if score _running tps < _target tps positioned ^ ^ ^2 run function tps:step_up_2