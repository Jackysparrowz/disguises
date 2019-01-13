#Commands for book
	
	#Gamerule
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Disguises",author:"JunXz"}}}] run gamerule sendCommandFeedback false
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Disguises",author:"JunXz"}}}] run gamerule sendCommandFeedback true
	
	#Change book
tag @a[scores={bookTrigger=1..}] add changebook
tag @a[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Disguises",author:"JunXz"}}}] add changebook2
scoreboard players add @a[scores={changebook=..1},nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Disguises",author:"JunXz"}}}] changebook 1
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Disguises",author:"JunXz"}}}] run scoreboard players set @s changebook 0
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b,tag:{title:"Disguises",author:"JunXz"}}}] run tag @s remove changebook2
execute as @a[tag=changebook2] run function disguises:book/changebook

	#Trigger
scoreboard players enable @a bookTrigger

#From trigger to commands
	#Disguise player
scoreboard players set @a[tag=!disguise,scores={bookTrigger=1,disguiseType=1..}] disguise 1
tellraw @a[tag=!disguise,scores={bookTrigger=1,disguiseType=0}] ["",{"text":"You need to select a disguise first!","color":"dark_aqua"}]
tag @a[tag=disguise,scores={bookTrigger=2}] add disguiseOff

	#Offset
tag @a[scores={bookTrigger=3}] add disguiseOffset
tellraw @a[scores={bookTrigger=3}] ["",{"text":"Enabled offset.","color":"aqua"}]
tag @a[scores={bookTrigger=4}] remove disguiseOffset
tellraw @a[scores={bookTrigger=4}] ["",{"text":"Disabled offset.","color":"dark_aqua"}]

	#Visible name
tag @a[scores={bookTrigger=5}] remove noDisguiseName
tellraw @a[scores={bookTrigger=5}] ["",{"text":"Showing name.","color":"aqua"}]
tag @a[scores={bookTrigger=6},tag=namePerm] add noDisguiseName
tellraw @a[scores={bookTrigger=6}] ["",{"text":"Hiding name.","color":"dark_aqua"}]


	#Change entity type
		#Blaze (Type 1)
	tag @a[scores={bookTrigger=11,disguiseType=1}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=11}] disguiseType 1
	tellraw @a[scores={bookTrigger=11}] ["",{"text":"Selected ","color":"aqua"},{"text":"Blaze","color":"dark_aqua"},{"text":"!","color":"aqua"}]
	
		#Cat (Type 2)
	tag @a[scores={bookTrigger=12,disguiseType=2}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=12}] disguiseType 2
	tellraw @a[scores={bookTrigger=12}] ["",{"text":"Selected ","color":"aqua"},{"text":"Cat","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Cave Spider (Type 3)
	tag @a[scores={bookTrigger=13,disguiseType=3}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=13}] disguiseType 3
	tellraw @a[scores={bookTrigger=13}] ["",{"text":"Selected ","color":"aqua"},{"text":"Cave Spider","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Chicken (Type 4)
	tag @a[scores={bookTrigger=14,disguiseType=4}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=14}] disguiseType 4
	tellraw @a[scores={bookTrigger=14}] ["",{"text":"Selected ","color":"aqua"},{"text":"Chicken","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Cod (Type 5)
	tag @a[scores={bookTrigger=15,disguiseType=5}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=15}] disguiseType 5
	tellraw @a[scores={bookTrigger=15}] ["",{"text":"Selected ","color":"aqua"},{"text":"Cod","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Cow (Type 6)
	tag @a[scores={bookTrigger=16,disguiseType=6}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=16}] disguiseType 6
	tellraw @a[scores={bookTrigger=16}] ["",{"text":"Selected ","color":"aqua"},{"text":"Cow","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Creeper (Type 7)
	tag @a[scores={bookTrigger=17,disguiseType=7}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=17}] disguiseType 7
	tellraw @a[scores={bookTrigger=17}] ["",{"text":"Selected ","color":"aqua"},{"text":"Creeper","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Dolphin (Type 8)
	tag @a[scores={bookTrigger=18,disguiseType=8}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=18}] disguiseType 8
	tellraw @a[scores={bookTrigger=18}] ["",{"text":"Selected ","color":"aqua"},{"text":"Dolphin","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Drowned (Type 9)
	tag @a[scores={bookTrigger=19,disguiseType=9}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=19}] disguiseType 9
	tellraw @a[scores={bookTrigger=19}] ["",{"text":"Selected ","color":"aqua"},{"text":"Drowned","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Enderman (Type 10)
	tag @a[scores={bookTrigger=20,disguiseType=10}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=20}] disguiseType 10
	tellraw @a[scores={bookTrigger=20}] ["",{"text":"Selected ","color":"aqua"},{"text":"Enderman","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Endermite (Type 11)
	tag @a[scores={bookTrigger=21,disguiseType=11}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=21}] disguiseType 11
	tellraw @a[scores={bookTrigger=21}] ["",{"text":"Selected ","color":"aqua"},{"text":"Endermite","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Evoker (Type 12)
	tag @a[scores={bookTrigger=22,disguiseType=12}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=22}] disguiseType 12
	tellraw @a[scores={bookTrigger=22}] ["",{"text":"Selected ","color":"aqua"},{"text":"Evoker","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Guardian (Type 13)
	tag @a[scores={bookTrigger=23,disguiseType=13}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=23}] disguiseType 13
	tellraw @a[scores={bookTrigger=23}] ["",{"text":"Selected ","color":"aqua"},{"text":"Guardian","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Husk (Type 14)
	tag @a[scores={bookTrigger=24,disguiseType=14}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=24}] disguiseType 14
	tellraw @a[scores={bookTrigger=24}] ["",{"text":"Selected ","color":"aqua"},{"text":"Husk","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Illusioner (Type 15)
	tag @a[scores={bookTrigger=25,disguiseType=15}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=25}] disguiseType 15
	tellraw @a[scores={bookTrigger=25}] ["",{"text":"Selected ","color":"aqua"},{"text":"Illusioner","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Mooshroom (Type 16)
	tag @a[scores={bookTrigger=26,disguiseType=16}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=26}] disguiseType 16
	tellraw @a[scores={bookTrigger=26}] ["",{"text":"Selected ","color":"aqua"},{"text":"Mooshroom","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Ocelot (Type 17)
	tag @a[scores={bookTrigger=27,disguiseType=17}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=27}] disguiseType 17
	tellraw @a[scores={bookTrigger=27}] ["",{"text":"Selected ","color":"aqua"},{"text":"Ocelot","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Panda (Type 18)
	tag @a[scores={bookTrigger=28,disguiseType=18}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=28}] disguiseType 18
	tellraw @a[scores={bookTrigger=28}] ["",{"text":"Selected ","color":"aqua"},{"text":"Panda","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Pig (Type 19)
	tag @a[scores={bookTrigger=29,disguiseType=19}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=29}] disguiseType 19
	tellraw @a[scores={bookTrigger=29}] ["",{"text":"Selected ","color":"aqua"},{"text":"Pig","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Pillager (Type 20)
	tag @a[scores={bookTrigger=30,disguiseType=20}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=30}] disguiseType 20
	tellraw @a[scores={bookTrigger=30}] ["",{"text":"Selected ","color":"aqua"},{"text":"Pillager","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Polar Bear (Type 21)
	tag @a[scores={bookTrigger=31,disguiseType=21}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=31}] disguiseType 21
	tellraw @a[scores={bookTrigger=31}] ["",{"text":"Selected ","color":"aqua"},{"text":"Polar Bear","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Rabbit (Type 22)
	tag @a[scores={bookTrigger=32,disguiseType=22}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=32}] disguiseType 22
	tellraw @a[scores={bookTrigger=32}] ["",{"text":"Selected ","color":"aqua"},{"text":"Rabbit","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Salmon (Type 23)
	tag @a[scores={bookTrigger=33,disguiseType=23}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=33}] disguiseType 23
	tellraw @a[scores={bookTrigger=33}] ["",{"text":"Selected ","color":"aqua"},{"text":"Salmon","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Sheep (Type 24)
	tag @a[scores={bookTrigger=34,disguiseType=24}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=34}] disguiseType 24
	tellraw @a[scores={bookTrigger=34}] ["",{"text":"Selected ","color":"aqua"},{"text":"Sheep","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Silverfish (Type 25)
	tag @a[scores={bookTrigger=35,disguiseType=25}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=35}] disguiseType 25
	tellraw @a[scores={bookTrigger=35}] ["",{"text":"Selected ","color":"aqua"},{"text":"Silverfish","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Skeleton (Type 26)
	tag @a[scores={bookTrigger=36,disguiseType=26}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=36}] disguiseType 26
	tellraw @a[scores={bookTrigger=36}] ["",{"text":"Selected ","color":"aqua"},{"text":"Skeleton","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Slime (Type 27)
	tag @a[scores={bookTrigger=37,disguiseType=27}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=37}] disguiseType 27
	tellraw @a[scores={bookTrigger=37}] ["",{"text":"Selected ","color":"aqua"},{"text":"Slime","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Snow Golem (Type 28)
	tag @a[scores={bookTrigger=38,disguiseType=28}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=38}] disguiseType 28
	tellraw @a[scores={bookTrigger=38}] ["",{"text":"Selected ","color":"aqua"},{"text":"Snow Golem","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Spider (Type 29)
	tag @a[scores={bookTrigger=39,disguiseType=29}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=39}] disguiseType 29
	tellraw @a[scores={bookTrigger=39}] ["",{"text":"Selected ","color":"aqua"},{"text":"Spider","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Squid (Type 30)
	tag @a[scores={bookTrigger=40,disguiseType=30}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=40}] disguiseType 30
	tellraw @a[scores={bookTrigger=40}] ["",{"text":"Selected ","color":"aqua"},{"text":"Squid","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Stray (Type 31)
	tag @a[scores={bookTrigger=41,disguiseType=31}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=41}] disguiseType 31
	tellraw @a[scores={bookTrigger=41}] ["",{"text":"Selected ","color":"aqua"},{"text":"Stray","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Turtle (Type 32)
	tag @a[scores={bookTrigger=42,disguiseType=32}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=42}] disguiseType 32
	tellraw @a[scores={bookTrigger=42}] ["",{"text":"Selected ","color":"aqua"},{"text":"Turtle","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Villager (Type 33)
	tag @a[scores={bookTrigger=43,disguiseType=33}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=43}] disguiseType 33
	tellraw @a[scores={bookTrigger=43}] ["",{"text":"Selected ","color":"aqua"},{"text":"Villager","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Vindicator (Type 34)
	tag @a[scores={bookTrigger=44,disguiseType=34}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=44}] disguiseType 34
	tellraw @a[scores={bookTrigger=44}] ["",{"text":"Selected ","color":"aqua"},{"text":"Vindicator","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Wither Skeleton (Type 35)
	tag @a[scores={bookTrigger=45,disguiseType=35}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=45}] disguiseType 35
	tellraw @a[scores={bookTrigger=45}] ["",{"text":"Selected ","color":"aqua"},{"text":"Wither Skeleton","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Wolf (Type 36)
	tag @a[scores={bookTrigger=46,disguiseType=36}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=46}] disguiseType 36
	tellraw @a[scores={bookTrigger=46}] ["",{"text":"Selected ","color":"aqua"},{"text":"Wolf","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Zombie (Type 37)
	tag @a[scores={bookTrigger=47,disguiseType=37}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=47}] disguiseType 37
	tellraw @a[scores={bookTrigger=47}] ["",{"text":"Selected ","color":"aqua"},{"text":"Zombie","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Zombie Pigman (Type 38)
	tag @a[scores={bookTrigger=48,disguiseType=38}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=48}] disguiseType 38
	tellraw @a[scores={bookTrigger=48}] ["",{"text":"Selected ","color":"aqua"},{"text":"Zombie Pigman","color":"dark_aqua"},{"text":"!","color":"aqua"}]

		#Zombie Villager (Type 39)
	tag @a[scores={bookTrigger=49,disguiseType=39}] add noDisguiseType
	scoreboard players set @a[tag=noDisguiseType] disguiseType 0
	scoreboard players set @a[tag=noDisguiseType] bookTrigger 0
	scoreboard players set @a[scores={bookTrigger=49}] disguiseType 39
	tellraw @a[scores={bookTrigger=49}] ["",{"text":"Selected ","color":"aqua"},{"text":"Zombie Villager","color":"dark_aqua"},{"text":"!","color":"aqua"}]


	#Stop commands
tellraw @a[tag=noDisguiseType] ["",{"text":"Deselected disguise!","color":"dark_aqua"}]
tag @a[scores={bookTrigger=11..49},tag=disguise] add disguiseTypeD
scoreboard players set @a[scores={bookTrigger=1..}] bookTrigger 0
tag @a[tag=disguise,tag=noDisguiseType] add disguiseOff
tag @a remove noDisguiseType