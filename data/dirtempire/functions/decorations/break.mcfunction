execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] unless data entity @s Item at @s run function dirtempire:items/convert_to/advent_wreath

execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{Count:1,id:"minecraft:item_frame"}}
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] at @s if block ~ ~-1 ~ air run function dirtempire:items/convert_to/advent_wreath

execute as @e[type=item_frame,tag=decoration] at @s unless block ~ ~ ~ air run summon item ~ ~ ~ {Item:{Count:1,id:"minecraft:item_frame"}}
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] at @s unless block ~ ~ ~ air run function dirtempire:items/convert_to/advent_wreath

execute as @e[type=item_frame,tag=decoration] unless data entity @s Item run kill @s
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ air run kill @s
execute as @e[type=item_frame,tag=decoration] at @s unless block ~ ~ ~ air run kill @s