#
#@s - as @a if score @s ID = #searchCurrent ID
#called by disguises:required/search

#When player online
scoreboard players set #found ID 1

#Select current player
scoreboard players operation #tpCurrent ID = @s[tag=disguise] ID

execute as @e[type=!player,tag=disguiseMob,tag=ID] if score @s ID = #tpCurrent ID run scoreboard players set @s ID -1
tag @e[tag=disguiseMob,tag=ID,scores={ID=-1}] add tpTick
tag @s add tpTickPlayer

#Commands for current player and disguiseMob

	#Teleport
	tp @e[tag=ID,tag=disguiseMob,tag=tpTick] @s[tag=disguise,scores={disguise=0}]
		#Offset
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=1}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.5
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=7}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=8}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=9}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=10}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.1
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=12}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.4
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=13}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=14}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=15}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.4
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=16}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.8
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=18}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.2
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=20}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=21}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.5
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=26}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=28}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.4
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=31}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,scores={disguise=0,disguiseType=33}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.4
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=34}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.4
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=35}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=37}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=38}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.3
		execute at @s[tag=disguise,tag=disguiseOffset,scores={disguise=0,disguiseType=39}] rotated ~ 0 run tp @e[tag=ID,tag=disguiseMob,tag=tpTick] ^ ^ ^-.4


	#Disguise name
	execute as @s[tag=disguise,tag=noDisguiseName,scores={disguise=0}] run data merge entity @e[tag=tpTick,tag=disguiseMob,tag=ID,limit=1] {CustomNameVisible:0b}
	execute as @s[tag=disguise,tag=noDisguiseName,scores={disguise=0}] run data merge entity @e[tag=tpTick,tag=disguiseMob,tag=ID,limit=1] {CustomName:""}
	execute as @s[tag=disguise,tag=!noDisguiseName,scores={disguise=0}] run data merge entity @e[tag=tpTick,tag=disguiseMob,tag=ID,limit=1] {CustomNameVisible:1b}
	execute as @s[tag=disguise,tag=!noDisguiseName,scores={disguise=0}] run data merge block 0 0 0 {Text2:"{\"selector\":\"@a[tag=disguise,scores={disguise=0},tag=!noDisguiseName,tag=tpTickPlayer]\"}"}
	execute as @s[tag=disguise,tag=!noDisguiseName,scores={disguise=0}] run execute as @e[tag=disguiseMob,tag=ID,tag=tpTick] run data modify entity @s CustomName set from block 0 0 0 Text2

	#Change disguise trigger
	tag @s[tag=disguiseTypeD] add disguiseOff
	scoreboard players set @s[tag=disguiseTypeD] disguise 1

	#Disguise off
	tag @s[tag=disguiseOff] remove disguise
	execute at @s[tag=disguiseOff] run tag @e[tag=ID,tag=disguiseMob,tag=tpTick] add disguiseRemove
	execute at @s[tag=disguiseOff] run tp @e[tag=ID,tag=disguiseMob,tag=disguiseRemove,tag=tpTick] ~ ~-250 ~
	kill @e[tag=ID,tag=disguiseMob,tag=disguiseRemove,tag=tpTick]
	effect clear @s[tag=disguiseOff] minecraft:invisibility
	tellraw @s[tag=disguiseOff,tag=!disguiseTypeD] ["",{"text":"Undisguised!","color":"dark_aqua"}]
	tag @s[tag=disguiseOff] remove disguiseOff

#Reset
scoreboard players operation @e[scores={ID=-1}] ID = #tpCurrent ID
tag @e[tag=disguiseMob,tag=ID] remove tpTick
tag @s remove tpTickPlayer
tag @s remove disguiseTypeD
