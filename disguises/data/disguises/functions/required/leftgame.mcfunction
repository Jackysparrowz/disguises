#reset players who have re-joined the game
#@s - @a[scores={leftgame=1}]
#called by disguises:core

scoreboard players set @s[tag=disguise] disguise 1
scoreboard players set @s leftgame 0
