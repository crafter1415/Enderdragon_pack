#近くのプレイヤーに毒付与。害悪仕様はノクバだけにしてくれ。
effect give @p[distance=..5] minecraft:poison 1 5

#(可変) 秒ごとにtnt投下。 詳しくはreadme読んで
execute if entity @s[scores={df_tick=1200},tag=!dfHealing] run summon tnt ~ ~ ~ {Fuse:200}
execute if entity @s[scores={df_tick=1208},tag=!dfHealing] run summon tnt ~ ~ ~ {Fuse:200}
execute if entity @s[scores={df_tick=1216},tag=!dfHealing] run summon tnt ~ ~ ~ {Fuse:200}
scoreboard players set @s[scores={df_tick=1216..},tag=!dfHealed,tag=!dfHardend] df_tick 0
scoreboard players set @s[scores={df_tick=1216..},tag=dfHealed,tag=!dfHardend] df_tick 400
scoreboard players set @s[scores={df_tick=1216..},tag=dfHardend] df_tick 800

#(可変) 秒ごとに矢発射。これもりどみ。
execute if entity @s[scores={df_tick=600..639},tag=!dfHealing] run summon arrow ~ ~-1 ~ {damage:5d,Color:8913151,Motion:[0d,-1d,0d],Tags:["dfArrow","dfnotrandomized"],CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:17b,Amplifier:1b,Duration:200,ShowParticles:0b}]}
execute as @e[type=arrow,tag=dfArrow,tag=dfnotrandomized] at @s run function dragonfight:dragon/arrow

#(可変) 秒ごとに爆発する火の玉。りどみ読め。
execute if entity @s[scores={df_tick=1000..1004},tag=!dfHealing] run summon armor_stand ~ ~-3 ~ {Tags:["dfFireball","dfNotFaced"],NoGravity:1b,Invisible:1b,Marker:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"fire_charge",Count:1b}],Small:1b,Fire:32767s}

#ドラゴンの体力を取得
execute if entity @s[tag=!dfHardend] store result score @s df_id run data get entity @s Health 1

#着地させません
execute if entity @s[nbt={DragonPhase:3}] run data merge entity @s {DragonPhase:0}

#半分以下ならヒール
tag @s[tag=!dfHealed,scores={df_id=1..250}] add dfHealing
scoreboard players set @s[tag=!dfHealed,scores={df_id=1..250}] df_tick 0
tag @s[tag=!dfHealed,scores={df_id=1..250}] add dfHealed
execute at @s[tag=dfHealing] run particle minecraft:witch ~ ~ ~ 1 1 1 1 10 force
data merge entity @s[tag=dfHealing,scores={df_tick=200..}] {Health:500f}
tag @s[tag=dfHealing,scores={df_tick=200..}] remove dfHealing

