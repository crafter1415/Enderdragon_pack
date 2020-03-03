execute as @s[tag=dfActive] unless entity @e[type=minecraft:end_crystal,distance=..0.5] run scoreboard players set @s df_tick 0
execute as @s[tag=dfActive] unless entity @e[type=minecraft:end_crystal,distance=..0.5] positioned ~ ~-1 ~ run kill @e[type=minecraft:spawner_minecart,distance=..0.5,tag=dfSpawner]
execute as @s[tag=dfActive] unless entity @e[type=minecraft:end_crystal,distance=..0.5] run tag @s remove dfActive
execute as @s[tag=dfCrystal,tag=!dfActive] if entity @e[type=minecraft:end_crystal,distance=..0.5] run function dragonfight:crystals/spawner
execute as @s[tag=dfCrystal,tag=!dfActive] if entity @e[type=minecraft:end_crystal,distance=..0.5] run tag @s add dfActive
execute as @s[tag=dfCrystal,tag=!dfActive,scores={df_tick=18000}] run summon minecraft:end_crystal ~ ~ ~