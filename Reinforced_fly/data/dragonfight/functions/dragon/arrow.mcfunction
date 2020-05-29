execute store result score @s df_MotionX run data get entity @s UUIDLeast 0.00000000000127
scoreboard players operation @s df_MotionX %= #1000 df_NUM
execute store result score @s df_MotionZ run data get entity @s UUIDMost 0.00000000000127
scoreboard players operation @s df_MotionZ %= #1000 df_NUM
scoreboard players remove @s df_MotionX 500
scoreboard players remove @s df_MotionZ 500
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s df_MotionX
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s df_MotionZ
scoreboard players reset @s
tag @s remove dfnotrandomized
