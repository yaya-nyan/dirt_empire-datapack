execute as @e[type=snowball,name=snow-wand.proj] at @s if block ~ ~-1 ~ minecraft:frosted_ice run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 minecraft:frosted_ice[age=2] replace water
execute as @e[type=snowball,name=snow-wand.proj] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:frosted_ice replace water
execute as @e[type=snowball,name=snow-wand.proj] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:frosted_ice replace minecraft:frosted_ice
execute as @e[type=snowball,name=snow-wand.proj] at @s run particle minecraft:falling_dust snow ~ ~ ~ 0.5 0.5 0.5 0.1 5