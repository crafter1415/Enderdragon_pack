#再生成までの時間は 10/人数 分。
scoreboard players set #Time df_NUM 12000
scoreboard players operation #Time df_NUM /= #Players df_NUM

#有効タグがあるのにクリスタルがなければ、タイマー初期化、スポナー破壊、タグ消去。
execute as @s[tag=dfActive] unless entity @e[type=minecraft:end_crystal,distance=..0.5] run scoreboard players set @s df_tick 0
execute as @s[tag=dfActive] unless entity @e[type=minecraft:end_crystal,distance=..0.5] positioned ~ ~-1 ~ run kill @e[type=minecraft:spawner_minecart,distance=..0.5,tag=dfSpawner]
execute as @s[tag=dfActive] unless entity @e[type=minecraft:end_crystal,distance=..0.5] run tag @s remove dfActive

#有効タグがないのにクリスタルがあれば、スポナー召喚、タグ追加。
execute as @s[tag=!dfActive] if entity @e[type=minecraft:end_crystal,distance=..0.5] run function dragonfight:crystals/spawner
execute as @s[tag=!dfActive] if entity @e[type=minecraft:end_crystal,distance=..0.5] run tag @s add dfActive

#クリスタルがなくなってから (10/人数) 分で復活。
execute as @s[tag=!dfActive] if score @s df_tick > #Time df_NUM run summon minecraft:end_crystal ~ ~ ~