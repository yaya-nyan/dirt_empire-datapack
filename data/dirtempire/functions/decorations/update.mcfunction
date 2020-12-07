#breaking decorations
execute as @e[type=item_frame,tag=decoration] unless data entity @s Item at @s run function dirtempire:decorations/break
execute as @e[type=item_frame,tag=decoration] at @s unless block ~ ~ ~ air run function dirtempire:decorations/break
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ air run function dirtempire:decorations/break

#advent wreath particles
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] run scoreboard players add @s temp 1
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 10 at @s run particle flame ~0.275 ~0.45 ~0.275 0 0 0 0.001 1
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 5 at @s run particle flame ~-0.275 ~0.45 ~-0.275 0 0 0 0.001 1

execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] if score @s temp matches 16.. at @s run scoreboard players set @s temp 0