#main loop
#@s - console
#called by #minecraft:tick

execute as @a[gamemode=creative,tag=setupDisguises] run function disguises:setup
