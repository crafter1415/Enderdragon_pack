effect give @p[distance=..5] minecraft:poison 1 5
execute as @s[scores={df_tick=1200},tag=!dfHealing] run summon tnt ~ ~ ~ {Fuse:200}
execute as @s[scores={df_tick=1208},tag=!dfHealing] run summon tnt ~ ~ ~ {Fuse:200}
execute as @s[scores={df_tick=1216},tag=!dfHealing] run summon tnt ~ ~ ~ {Fuse:200}
scoreboard players set @s[scores={df_tick=1216..},tag=!dfHealed,tag=!dfHardend] df_tick 0
scoreboard players set @s[scores={df_tick=1216..},tag=dfHealed,tag=!dfHardend] df_tick 400
scoreboard players set @s[scores={df_tick=1216..},tag=dfHardend] df_tick 800

execute if entity @s[tag=!dfHardend] store result score @s df_id run data get entity @s Health 1

tag @s[tag=!dfHealed,scores={df_id=1..250}] add dfHealing
scoreboard players set @s[tag=!dfHealed,scores={df_id=1..250}] df_tick 0
tag @s[tag=!dfHealed,scores={df_id=1..250}] add dfHealed
execute at @s[tag=dfHealing] run particle minecraft:witch ~ ~ ~ 1 1 1 1 10 force
data merge entity @s[tag=dfHealing,scores={df_tick=200..}] {Health:500f}
tag @s[tag=dfHealing,scores={df_tick=200..}] remove dfHealing

data merge entity @s[scores={df_id=1..125},tag=!dfHardend] {ActiveEffects:[{Id:11b,Amplifier:2b,Duration:1048576,ShowParticles:1b}],Attributes:[{Name:generic.movementSpeed,Base:1.0}]}
tag @s[tag=!dfHardend,scores={df_id=1..125}] add dfHardend
