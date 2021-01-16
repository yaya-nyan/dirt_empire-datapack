#Lumber Axe
execute as @a[nbt={SelectedItem:{tag:{Lumber:true}}}] at @s run function dirtempire:items/lumber/check
execute as @e[tag=newWood] at @s unless entity @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Age:0s}] run kill @s

#Use Wands
execute as @a[nbt={SelectedItem:{tag:{Wand:"Snow"}}}] if score @s useItem matches 1.. at @s run function dirtempire:items/wands/snow_wand/use
execute as @a[nbt={SelectedItem:{tag:{Wand:"Lightning"}}}] if score @s useItem matches 1.. at @s run function dirtempire:items/wands/lightning_wand/use
execute as @a[nbt={SelectedItem:{tag:{Wand:"Lightning"}}}] if score @s useItem matches 0 if score @s summoning matches 1 at @s run function dirtempire:items/wands/lightning_wand/use

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

#Dropped Eternal Snowflakes particle
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar",tag:{CustomModelData:2}}}] run scoreboard players add @s temp 1
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar",tag:{CustomModelData:2}}}] if score @s temp matches 2.. at @s run particle minecraft:falling_dust snow ~ ~0.5 ~ 0.25 0.25 0.25 0.1 1
execute as @e[type=item,nbt={Item:{id:"minecraft:sugar",tag:{CustomModelData:2}}}] if score @s temp matches 2.. run scoreboard players set @s temp 0

#other
execute as @a at @s unless entity @e[type=item,tag=dur,limit=1,distance=..2] run clear @s minecraft:oak_boat{Clutter:true}
execute as @a if score @s summoning matches 1 run title @s actionbar ["",{"text":"[summoning] ","color":"dark_purple"},{"text":"Focus: "},{"score":{"name":"@s","objective":"useItem"}}]