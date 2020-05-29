#トラップばら撒き
execute in minecraft:the_end run spreadplayers 0 0 5 100 false @e[tag=dfmakeTrap,type=minecraft:armor_stand]
execute in minecraft:the_end unless entity @e[type=minecraft:armor_stand,tag=dfmakeTrap] run function dragonfight:traps/generate
execute in minecraft:the_end as @e[type=minecraft:armor_stand,tag=dfmakeTrap] at @s if block ~ ~-0.5 ~ end_stone unless entity @e[type=minecraft:armor_stand,tag=dftrap,distance=..3] run summon minecraft:armor_stand ~ ~-1.5 ~ {Tags:["dftrap"],NoGravity:1b,Pose:{Head:[180f,0f,0f]},Invisible:1b,DisabledSlots:2039583}
execute in minecraft:the_end if entity @e[type=minecraft:armor_stand,tag=dftrap] run scoreboard players remove #stack df_EndFlag 1

#今回最大の改善点。
#scheduleコマンドの使い方を分かったためにtick処理を少し省くことに成功。
execute unless score #stack df_EndFlag >= #1 df_NUM in minecraft:the_end run kill @e[type=minecraft:armor_stand,tag=dfmakeTrap]
execute if score #stack df_EndFlag >= #1 df_NUM run schedule function dragonfight:traps/gen2 1t
