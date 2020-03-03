data merge entity @e[type=minecraft:ender_dragon,limit=1,tag=!dftick] {Health:500f,Attributes:[{Name:generic.maxHealth,Base:500}],Tags:["dftick"]}
execute as @e[type=minecraft:end_crystal,tag=!dfCrSeted,nbt={ShowBottom:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["dfCrystal","dftick"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:2039583}
execute as @e[type=minecraft:armor_stand,tag=dfCrystal] at @s run tag @e[type=end_crystal,distance=..0.5] add dfCrSeted
execute if score #stack df_EndFlag >= #1 df_NUM in minecraft:the_end run spreadplayers 0 0 5 100 false @e[tag=dfmakeTrap,type=minecraft:armor_stand]
execute if score #stack df_EndFlag >= #1 df_NUM in minecraft:the_end unless entity @e[type=minecraft:armor_stand,tag=dfmakeTrap] run function dragonfight:traps/generate
execute if score #stack df_EndFlag >= #1 df_NUM in minecraft:the_end as @e[type=minecraft:armor_stand,tag=dfmakeTrap] at @s if block ~ ~-0.5 ~ end_stone unless entity @e[type=minecraft:armor_stand,tag=dftrap,distance=..3] run summon minecraft:armor_stand ~ ~-1.5 ~ {ArmorItems:[{},{},{},{id:"end_stone",Count:1b}],Tags:["dftrap"],NoGravity:1b,Pose:{Head:[180f,0f,0f]},Invisible:1b,DisabledSlots:2039583}
execute if score #stack df_EndFlag >= #1 df_NUM in minecraft:the_end if entity @e[type=minecraft:armor_stand,tag=dftrap] run scoreboard players remove #stack df_EndFlag 1
execute unless score #stack df_EndFlag >= #1 df_NUM in minecraft:the_end run kill @e[type=minecraft:armor_stand,tag=dfmakeTrap]
execute at @a[nbt={Dimension:1}] as @e[tag=dftrap,type=minecraft:armor_stand,distance=..5] at @s positioned ~ ~1.5 ~ if entity @a[distance=..0.5] run function dragonfight:traps/trap_run
execute at @a[nbt={Dimension:1}] as @e[tag=dftrap,type=minecraft:armor_stand,distance=..5] at @s unless block ~ ~1 ~ minecraft:end_stone run kill @s
scoreboard players add @e[tag=dftick,type=!minecraft:player] df_tick 1
execute as @e[tag=dfCrystal,type=minecraft:armor_stand] at @s run function dragonfight:crystals/crystal
execute as @e[type=ender_dragon] at @s run function dragonfight:dragon/dragon