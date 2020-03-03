summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}}}
execute store result score @s df_id run data get entity @s UUIDMost 0.0000000001
scoreboard players operation @s df_id %= #67 df_NUM
execute as @s[scores={df_id=0}] run function dragonfight:traps/trap0
execute as @s[scores={df_id=1..36}] run function dragonfight:traps/trap1-36
execute as @s[scores={df_id=37..66}] run function dragonfight:traps/trap37-66
kill @s