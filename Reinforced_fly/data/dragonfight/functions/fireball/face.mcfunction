execute facing entity @r[nbt={Dimension:1}] feet run tp @s ~ ~ ~ ~ ~
#execute store result score @s df_MotionX run data get entity @s UUIDLeast 0.00000000000127
#scoreboard players operation @s df_MotionX %= #100 df_NUM
#execute store result score @s df_MotionZ run data get entity @s UUIDMost 0.00000000000127
#scoreboard players operation @s df_MotionZ %= #100 df_NUM
#scoreboard players remove @s df_MotionX 50
#scoreboard players remove @s df_MotionZ 50
tag @s[tag=dfNotFaced] remove dfNotFaced
