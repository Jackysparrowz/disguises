#Disguise on
scoreboard players add @e[scores={disguise=1..5}] disguise 1

scoreboard players set @a[scores={disguise=3}] disguise 0

	tag @a[scores={disguise=2},tag=!disguise] add disguise

#Summon disguise
	execute as @a[scores={disguise=2,disguiseType=1}] run summon minecraft:blaze ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=2}] run summon minecraft:cat ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=3}] run summon minecraft:cave_spider ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=4}] run summon minecraft:chicken ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=5}] run summon minecraft:cod ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=6}] run summon minecraft:cow ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=7}] run summon minecraft:creeper ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=8}] run summon minecraft:dolphin ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=9}] run summon minecraft:drowned ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=10}] run summon minecraft:enderman ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=11}] run summon minecraft:endermite ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Lifetime:-1000000000,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=12}] run summon minecraft:evoker ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=13}] run summon minecraft:guardian ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=14}] run summon minecraft:husk ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=15}] run summon minecraft:illusioner ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=16}] run summon minecraft:mooshroom ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=17}] run summon minecraft:ocelot ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=18}] run summon minecraft:panda ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=19}] run summon minecraft:pig ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=20}] run summon minecraft:pillager ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",HandItems:[{id:"minecraft:crossbow",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=21}] run summon minecraft:polar_bear ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=22}] run summon minecraft:rabbit ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=23}] run summon minecraft:salmon ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=24}] run summon minecraft:sheep ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=25}] run summon minecraft:silverfish ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=26}] run summon minecraft:skeleton ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=27}] run summon minecraft:slime ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=28}] run summon minecraft:snow_golem ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=29}] run summon minecraft:spider ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=30}] run summon minecraft:squid ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=31}] run summon minecraft:stray ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=32}] run summon minecraft:turtle ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=33}] run summon minecraft:villager ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CareerLevel:1,Offers:{},CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=34}] run summon minecraft:vindicator ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=35}] run summon minecraft:wither_skeleton ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",HandItems:[{id:"minecraft:stone_sword",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=36}] run summon minecraft:wolf ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob"}
	execute as @a[scores={disguise=2,disguiseType=37}] run summon minecraft:zombie ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=38}] run summon minecraft:zombie_pigman ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",HandItems:[{id:"minecraft:golden_sword",Count:1b}]}
	execute as @a[scores={disguise=2,disguiseType=39}] run summon minecraft:zombie_villager ~2 ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["disguiseMob"],Team:"disguiseMob",ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
	
#Name disguise
	data merge block 0 0 0 {Text1:"{\"selector\":\"@a[scores={disguise=2}]\"}"}

	execute as @a[scores={disguise=2}] run execute as @e[tag=disguiseMob,tag=!ID] run data modify entity @s CustomName set from block 0 0 0 Text1

	scoreboard players operation @e[tag=disguiseMob,tag=!ID] ID = @a[scores={disguise=2}] ID

	tag @e[tag=disguiseMob,scores={ID=0..}] add ID

	effect give @a[tag=disguise] minecraft:invisibility 1 0 true
	
	tellraw @a[scores={disguise=2}] ["",{"text":"Disguised!","color":"aqua"}]