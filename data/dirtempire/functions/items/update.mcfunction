#Lumber Axe
execute as @a[nbt={SelectedItem:{tag:{Lumber:true}}}] at @s run function dirtempire:items/lumber/check
execute as @e[tag=newWood] at @s unless entity @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Age:0s}] run kill @s

#Use Wands
execute as @a[nbt={SelectedItem:{tag:{Wand:"Snow"}}}] if score @s useItem matches 1.. at @s run function dirtempire:items/wands/snow_wand/use
execute as @e[tag=newWood] at @s unless entity @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Age:0s}] run kill @s

#Snowy Helmet
execute as @a[nbt={Inventory:[{Slot:103b, tag:{Snowy:1b}}]}] at @s run particle minecraft:falling_dust snow ~ ~5 ~ 5 0.25 5 0.1 1

#Snowy Helmet Enchant
execute as @e[type=bat,name="ench.snow"] at @s run execute as @p run function dirtempire:items/try/convert_to/snowy
execute as @e[type=bat,name="ench.snow"] at @s run tp @s 0 0 0
execute as @e[type=bat,name="ench.snow"] at @s run kill @s

#BlockEquip attribute
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b, tag:{BlockEquip:1b}}]}] run clear @s minecraft:leather_boots{blocker:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b, tag:{BlockEquip:1b}}]}] run clear @s minecraft:leather_leggings{blocker:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b, tag:{BlockEquip:1b}}]}] run clear @s minecraft:leather_chestplate{blocker:1b}
execute as @a unless entity @s[nbt={Inventory:[{Slot:-106b, tag:{BlockEquip:1b}}]}] run clear @s minecraft:leather_helmet{blocker:1b}
execute as @a[nbt={Inventory:[{Slot:-106b, tag:{BlockEquip:1b}}]}] run function dirtempire:items/block_equip

execute as @a at @s unless entity @e[type=item,tag=dur,limit=1,distance=..2] run clear @s minecraft:oak_boat{Clutter:true}
execute as @a if score @s useItem matches 1.. run scoreboard players set @s useItem 0