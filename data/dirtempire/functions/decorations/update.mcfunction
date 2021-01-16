#breaking decorations
execute as @e[type=item_frame,tag=decoration] unless data entity @s Item at @s run function dirtempire:decorations/break
execute as @e[type=item_frame,tag=decoration] at @s unless block ~ ~ ~ void_air unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run function dirtempire:decorations/break
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ air run function dirtempire:decorations/break
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ cave_air run function dirtempire:decorations/break
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ void_air run function dirtempire:decorations/break

#advent wreath particles
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] run scoreboard players add @s temp 1
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 10 at @s run particle flame ~0.275 ~0.45 ~0.275 0 0 0 0.001 1
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 5 at @s run particle flame ~-0.275 ~0.45 ~-0.275 0 0 0 0.001 1
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 13 at @s run particle flame ~-0.275 ~0.45 ~0.275 0 0 0 0.001 1
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 7 at @s run particle flame ~0.275 ~0.45 ~-0.275 0 0 0 0.001 1

execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 16.. at @s run scoreboard players set @s temp 0

#eternal snowflake particles
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:sugar",tag:{CustomModelData:2}}}] at @s run particle minecraft:falling_dust snow ~ ~5 ~ 7.5 3 7.5 0.1 2