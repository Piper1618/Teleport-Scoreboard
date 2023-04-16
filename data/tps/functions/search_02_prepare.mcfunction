# Flip the sine of _target if it is negative
execute if score _target tps matches ..-1 run scoreboard players set _negate tps 0
execute if score _target tps matches ..-1 run scoreboard players operation _negate tps -= _target tps
execute if score _target tps matches ..-1 run scoreboard players operation _target tps = _negate tps

scoreboard players set _mod tps 8
scoreboard players operation _step_1 tps = _target tps
scoreboard players operation _step_1 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_8 tps = _target tps
scoreboard players operation _step_8 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_64 tps = _target tps
scoreboard players operation _step_64 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_512 tps = _target tps
scoreboard players operation _step_512 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_4096 tps = _target tps
scoreboard players operation _step_4096 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_32768 tps = _target tps
scoreboard players operation _step_32768 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_262144 tps = _target tps
scoreboard players operation _step_262144 tps %= _mod tps
scoreboard players operation _target tps /= _mod tps

scoreboard players operation _step_2097152 tps = _target tps

function tps:search_03_step_1