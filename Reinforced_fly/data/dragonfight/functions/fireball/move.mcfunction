execute if entity @s[tag=dfNotFaced] run function dragonfight:fireball/face
tp @s ^ ^ ^1.5
#execute if score @s df_MotionX matches 1.. run tp @s ~ ~ ~ ~1 ~
#scoreboard players remove @s[scores={df_MotionX=1..}] df_MotionX 1
#execute if score @s df_MotionX matches ..1 run tp @s ~ ~ ~ ~-1 ~
#scoreboard players add @s[scores={df_MotionX=..-1}] df_MotionX 1
#execute if score @s df_MotionZ matches 1.. run tp @s ~ ~ ~ ~ ~1
#scoreboard players remove @s[scores={df_MotionZ=1..}] df_MotionZ 1
#execute if score @s df_MotionZ matches ..1 run tp @s ~ ~ ~ ~ ~-1
#scoreboard players add @s[scores={df_MotionZ=..-1}] df_MotionZ 1

particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 force
execute unless block ~ ~ ~ air run function dragonfight:fireball/explode
kill @s[nbt={Age:400}]
