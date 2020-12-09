scoreboard players set @s temp 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] run scoreboard players set @s temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] run scoreboard players set @s temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] run scoreboard players set @s temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] run scoreboard players set @s temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] run scoreboard players set @s temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run scoreboard players set @s temp 1

execute if score @s temp matches 1 as @p[distance=..2] run function dirtempire:items/convert_to/snowy
execute if score @s temp matches 0 run function dirtempire:items/give/snowyhelmetenchant