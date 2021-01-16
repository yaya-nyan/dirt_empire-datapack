execute if entity @s[tag=Tier0] at @s run execute as @p run give @p bat_spawn_egg{EntityTag:{CustomName:'[{"text":"Present tier 0"}]',Health:1,Silent:1,DeathLootTable:"dirtempire:christmas/presents/tier0",Attributes:[{Name:"generic.max_health",Base:1F}],Tags:["Present","Tier0"]},display:{Name:'{"text":"Present tier 0","italic":false,"color":"gray"}'},CustomModelData:1} 1

execute if entity @s[tag=Tier1] at @s run execute as @p run give @p bat_spawn_egg{EntityTag:{CustomName:'[{"text":"Present tier 1"}]',Health:1,Silent:1,DeathLootTable:"dirtempire:christmas/presents/tier1",Attributes:[{Name:"generic.max_health",Base:1F}],Tags:["Present","Tier1"]},display:{Name:'{"text":"Present tier 1","italic":false}'},CustomModelData:2} 1

execute if entity @s[tag=Tier2] at @s run execute as @p run give @p bat_spawn_egg{EntityTag:{CustomName:'[{"text":"Present tier 2"}]',Health:1,Silent:1,DeathLootTable:"dirtempire:christmas/presents/tier2",Attributes:[{Name:"generic.max_health",Base:1F}],Tags:["Present","Tier2"]},display:{Name:'{"text":"Present tier 2","italic":false,"color":"gold"}'},CustomModelData:3} 1

execute if entity @s[tag=Tier3] at @s run execute as @p run give @p bat_spawn_egg{EntityTag:{CustomName:'[{"text":"Present tier 3"}]',Health:1,Silent:1,DeathLootTable:"dirtempire:christmas/presents/tier3",Attributes:[{Name:"generic.max_health",Base:1F}],Tags:["Present","Tier3"]},display:{Name:'{"text":"Present tier 3","italic":false,"color":"light_purple"}'},CustomModelData:4} 1

tp @s[type=bat] 0 0 0
kill @s[type=bat]

