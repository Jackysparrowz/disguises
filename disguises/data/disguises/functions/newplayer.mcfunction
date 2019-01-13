#runs on new players
#@s - @a unless score @s ID matches 0..
#called by disguises:core

#Assign ID to new players
scoreboard players operation @s ID = #next ID
scoreboard players add #next ID 1

#Clear disguise type
scoreboard players set @s disguiseType 0
