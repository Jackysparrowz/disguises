#Check if player logout

scoreboard players operation #searchCurrent ID = @s ID

scoreboard players set #found ID 0

execute as @a if score @s ID = #searchCurrent ID run function disguises:required/found

execute if score #found ID matches 0 run tp @s ~ ~-250 ~

execute if score #found ID matches 0 run kill @s