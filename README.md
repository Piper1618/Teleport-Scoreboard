# Teleport Scoreboard

This is a utility Minecraft data pack that adds the ability to teleport an entity to a location stored on the scoreboard. This data pack is not intended to be used alone and there's no way for a player without operator permissions to set the required scoreboard values or trigger the teleportation. 

Requires Minecraft 1.19.4 (Known to fail in 1.19.3 and below)

# Explanation for Developers

If you want to use this in your own data pack, these are the functions you'll want to examine to understand how to use it.

## function tps:teleport

Call this function as an entity to teleport that entity to the specified coordinates.

## function tps:verify

Call this function to verify that Teleport Scoreboard is installed. See the function's script for an example of how to do this.

## function tps:waypoint_set

An example function that store's the player's coordinates (or the coordinates used to call the function) in a storage location so it can be recalled later. 

## function tps:waypoint_tp

An example function to teleport the player to the coordinates that were previously stored with waypoint_set.