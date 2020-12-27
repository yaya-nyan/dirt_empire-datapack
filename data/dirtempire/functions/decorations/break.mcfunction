execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] unless data entity @s Item at @s run function dirtempire:items/convert_to/advent_wreath
execute as @e[type=item_frame,tag=decoration,name=christmas_tree] unless data entity @s Item at @s run function dirtempire:items/convert_to/christmas_tree

execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ air run summon item ~ ~ ~ {Item:{Count:1,id:"minecraft:item_frame"},Motion:[0.0,0.25,0.0]}
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] at @s if block ~ ~-1 ~ air run function dirtempire:items/convert_to/advent_wreath
execute as @e[type=item_frame,tag=decoration,name=christmas_tree] at @s if block ~ ~-1 ~ air run function dirtempire:items/convert_to/christmas_tree

execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ cave_air run summon item ~ ~ ~ {Item:{Count:1,id:"minecraft:item_frame"},Motion:[0.0,0.25,0.0]}
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] at @s if block ~ ~-1 ~ cave_air run function dirtempire:items/convert_to/advent_wreath
execute as @e[type=item_frame,tag=decoration,name=christmas_tree] at @s if block ~ ~-1 ~ cave_air run function dirtempire:items/convert_to/christmas_tree

execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ void_air run summon item ~ ~ ~ {Item:{Count:1,id:"minecraft:item_frame"},Motion:[0.0,0.25,0.0]}
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] at @s if block ~ ~-1 ~ void_air run function dirtempire:items/convert_to/advent_wreath
execute as @e[type=item_frame,tag=decoration,name=christmas_tree] at @s if block ~ ~-1 ~ void_air run function dirtempire:items/convert_to/christmas_tree

execute as @e[type=item_frame,tag=decoration] at @s unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run summon item ~ ~ ~ {Item:{Count:1,id:"minecraft:item_frame"},Motion:[0.0,0.25,0.0]}
execute as @e[type=item_frame,tag=decoration,name=christmas_wreath] at @s unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run function dirtempire:items/convert_to/advent_wreath
execute as @e[type=item_frame,tag=decoration,name=christmas_tree] at @s unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run function dirtempire:items/convert_to/christmas_tree

execute as @e[type=item_frame,tag=decoration] unless data entity @s Item run kill @s
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ air run kill @s
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ void_air run kill @s
execute as @e[type=item_frame,tag=decoration] at @s if block ~ ~-1 ~ cave_air run kill @s
execute as @e[type=item_frame,tag=decoration] at @s unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run kill @s