execute as @a[nbt={SelectedItem:{tag:{Lumber:true}}}] at @s run function dirtempire:items/lumber/check
execute as @e[tag=newWood] at @s unless entity @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Age:0s}] run kill @s

execute as @a[nbt={SelectedItem:{tag:{Wand:"Snow"}}}] if score @s useItem matches 1.. at @s run function dirtempire:items/wands/snow_wand/use
execute as @e[tag=newWood] at @s unless entity @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Age:0s}] run kill @s

execute as @a at @s unless entity @e[type=item,tag=dur,limit=1,distance=..2] run clear @s minecraft:oak_boat{Clutter:true}
execute as @a if score @s useItem matches 1.. run scoreboard players set @s useItem 0