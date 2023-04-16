# The entity calling this function will be teleported to the
# coordinates specified on the tps scoreboard.

#scoreboard players set _x tps 117
#scoreboard players set _y tps 75
#scoreboard players set _z tps -4
#scoreboard players set _dimension tps -1

# _dimension:
#	-1 (or any unknown value): Stay in the dimension the command was called in
#	 0: Teleport to overworld
#	 1: Teleport to the nether
#	 2: Teleport to the end

# Tracks the axis we're currently searching on
scoreboard players set _axis tps 0
# Gets set to 1 when the teleport location is found, preventing further
# execution as the stack unwinds.
scoreboard players set _escape tps 0

execute if score _escape tps matches 0 if score _dimension tps matches 0 in minecraft:overworld positioned 0 0 0 run function tps:tech/search_01_axis
execute if score _escape tps matches 0 if score _dimension tps matches 1 in minecraft:the_nether positioned 0 0 0 run function tps:tech/search_01_axis
execute if score _escape tps matches 0 if score _dimension tps matches 2 in minecraft:the_end positioned 0 0 0 run function tps:tech/search_01_axis
execute if score _escape tps matches 0 positioned 0 0 0 run function tps:tech/search_01_axis