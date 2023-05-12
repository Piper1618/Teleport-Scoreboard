# Any data pack using Teleport Scoreboard should call this to verify that this
# data pack is also installed. Inform the user of the missing dependency if
# the verification fails.

data modify storage tps:data verify set value 1

# Use the following code to check that Teleport Scoreboard is installed
# data remove storage tps:data verify
# function tps:verify
# execute unless data storage tps:data verify run tellraw @a ["",{"text":"Required data pack is missing: ","color":"dark_red"},"Teleport Scoreboard\n",{"text":"Download it here","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Piper1618/Teleport-Scoreboard"}}]