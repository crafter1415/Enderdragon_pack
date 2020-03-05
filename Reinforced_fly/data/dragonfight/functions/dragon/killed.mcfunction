#初手進捗剥奪。
advancement revoke @a only dragonfight:killed

#クリスタルの位置にあるスポナーをkill。
execute as @e[type=minecraft:armor_stand,tag=dfCrystal] at @s positioned ~ ~-1 ~ run kill @e[type=minecraft:spawner_minecart,distance=..0.5,tag=dfSpawner]

#クリスタルの位置にtnt召喚。爆破順はランダム
execute as @e[type=minecraft:armor_stand,tag=dfCrystal] at @s run summon tnt ~ ~ ~ {Tags:["dfTnt"],Fuse:20}
execute as @e[type=minecraft:tnt,tag=dfTnt] store result score @s df_id run data get entity @s UUIDMost 0.0000000001
execute as @e[type=minecraft:tnt,tag=dfTnt] run scoreboard players operation @s df_id %= #100 df_NUM
scoreboard players add @e[type=minecraft:tnt,tag=dfTnt] df_id 20
execute as @e[type=minecraft:tnt,tag=dfTnt] at @s store result entity @s Fuse short 1 run scoreboard players get @s df_id

#トラップとクリスタルのシステムエンティティ、共に破壊
kill @e[type=minecraft:armor_stand,tag=dfCrystal]
kill @e[type=minecraft:armor_stand,tag=dftrap]