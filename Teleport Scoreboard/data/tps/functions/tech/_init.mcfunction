#do all the initial setup, including creating armor stands and setting up scoreboard stuff

say Initializing Scoreboard Teleportation

data modify storage tps:data init set value 1

function tps:tech/_disable


scoreboard objectives add tps dummy

scoreboard objectives add temp dummy

#execute store result storage tps:data temp int 1 run data get entity @s Pos[0]