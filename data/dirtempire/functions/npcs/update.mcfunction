#Santa
execute as @e[type=bat,name=Santa,tag=Spawner] at @s run function dirtempire:npcs/spawn/santa

execute as @e[type=armor_stand,name=Santa] at @s run particle minecraft:falling_dust snow ~ ~5 ~ 7.5 5 7.5 0.1 1
execute as @e[type=armor_stand,name=Santa] run scoreboard players add @s temp 1
execute as @e[type=armor_stand,name=Santa] if score @s temp matches 500.. at @s run playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ 1 0.75
execute as @e[type=armor_stand,name=Santa] if score @s temp matches 500.. run scoreboard players set @s temp 0

#Snow Golems
execute as @e[type=snow_golem] run scoreboard players add @s temp 1
execute as @e[type=snow_golem] if score @s temp matches 3000.. at @s run loot spawn ~ ~ ~ loot dirtempire:christmas/snow_golem_idle
execute as @e[type=snow_golem] if score @s temp matches 3001.. run scoreboard players set @s temp 0