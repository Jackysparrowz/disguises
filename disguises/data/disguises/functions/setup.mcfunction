#Setup disguises

#Forceload sign chunk
tellraw @a[gamemode=creative,tag=!setupDisguises] ["",{"text":"Click ","color":"aqua"},{"text":"this","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/forceload add 0 0"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click first","color":"white"}]}}},{"text":" first, then click ","color":"aqua","underlined":false},{"text":"this","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @p add setupDisguises"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click second","color":"white"}]}}},{"text":" to setup the disguises datapack!","color":"aqua","underlined":false}]

#Setup commands

#Blocks
execute as @s[tag=setupDisguises] run setblock 0 0 0 minecraft:oak_sign
execute as @s[tag=setupDisguises] run setblock 0 0 1 minecraft:repeating_command_block{Command:"/function disguises:core","auto":1b}
execute as @s[tag=setupDisguises] run fill 0 1 0 0 1 1 minecraft:bedrock

#gamerules
execute as @s[tag=setupDisguises] run gamerule commandBlockOutput false
execute as @s[tag=setupDisguises] run gamerule mobGriefing false

#scoreboards
execute as @s[tag=setupDisguises] run scoreboard objectives add disguiseFind dummy
execute as @s[tag=setupDisguises] run scoreboard objectives add disguise dummy
execute as @s[tag=setupDisguises] run scoreboard objectives add ID dummy
execute as @s[tag=setupDisguises] run scoreboard objectives add disguiseType dummy
execute as @s[tag=setupDisguises] run scoreboard objectives add leftgame minecraft.custom:minecraft.leave_game
execute as @s[tag=setupDisguises] run scoreboard objectives add bookTrigger trigger
execute as @s[tag=setupDisguises] run scoreboard objectives add changebook dummy
execute unless score #next ID matches 0.. run scoreboard players set #next ID 1

#disguiseMob team
execute as @s[tag=setupDisguises] run team add disguiseMob
execute as @s[tag=setupDisguises] run team modify disguiseMob collisionRule never
execute as @s[tag=setupDisguises] run team modify disguiseMob deathMessageVisibility never

#Thank you
tellraw @a[tag=setupDisguises] ["",{"text":"Thank you for downloading the disguises datapack by JunXz!","color":"aqua"}]

#Give book
execute as @s[tag=setupDisguises] run function disguises:book/book

#Stop setup
tag @s remove setupDisguises