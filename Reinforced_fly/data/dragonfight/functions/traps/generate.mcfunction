#生成用エンティティを召喚するだけ。
scoreboard players set #stack df_EndFlag 64
summon armor_stand 0 0 0 {Tags:["dfmakeTrap"],NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b}
execute as @e[type=minecraft:armor_stand,tag=dfmakeTrap] at @s run summon minecraft:armor_stand 0 0 0 {Tags:["dfmakeTrap"],NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b}
execute as @e[type=minecraft:armor_stand,tag=dfmakeTrap] at @s run summon minecraft:armor_stand 0 0 0 {Tags:["dfmakeTrap"],NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b}
execute as @e[type=minecraft:armor_stand,tag=dfmakeTrap] at @s run summon minecraft:armor_stand 0 0 0 {Tags:["dfmakeTrap"],NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b}
execute as @e[type=minecraft:armor_stand,tag=dfmakeTrap] at @s run summon minecraft:armor_stand 0 0 0 {Tags:["dfmakeTrap"],NoGravity:1b,Invulnerable:1b,DisabledSlots:2039583,Invisible:1b}
schedule function dragonfight:traps/gen2 1t
