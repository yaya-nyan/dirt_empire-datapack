execute as @e[type=item,nbt={Age:0s},distance=..7,tag=!newWood] unless data entity @s Thrower at @s run function dirtempire:items/lumber/break

execute as @e[type=armor_stand,tag=newWood] unless data entity @s Thrower at @s run function dirtempire:items/lumber/break