# Teleport to a waypoint previously set with function tps:waypoint_set

execute store result score _x tps run data get storage tps:data waypoint_x
execute store result score _y tps run data get storage tps:data waypoint_y
execute store result score _z tps run data get storage tps:data waypoint_z
execute store result score _dimension tps run data get storage tps:data waypoint_dim

function tps:teleport