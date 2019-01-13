#All running functions

function disguises:required/adddisguises

function disguises:book/bookcommands

execute as @e[tag=disguiseMob,tag=ID] run function disguises:required/search

execute as @a[scores={leftgame=1}] run function disguises:required/leftgame

execute as @a unless score @s ID matches 0.. run function disguises:newplayer