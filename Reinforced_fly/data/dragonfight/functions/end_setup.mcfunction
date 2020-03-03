#エンドのシステムエンティティを初期化
kill @e[tag=dftrap,type=minecraft:armor_stand]
tag @e[tag=dftrap] remove dftrap
kill @e[tag=dfmakeTrap,type=minecraft:armor_stand]
tag @e[tag=dfmakeTrap] remove dfmakeTrap
tag @e[tag=dftick] remove dftick
tag @e[tag=dftrap] remove dftrap
tag @e[tag=dfHealed] remove dfHealed
tag @e[tag=dfHealing] remove dfHealing
tag @e[tag=dfHardend] remove dfHardend
kill @e[tag=dfSpawner,type=minecraft:spawner_minecart]
tag @e[tag=dfSpawner] remove dfSpawner
tag @e[tag=dfActive] remove dfActive
kill @e[tag=dfCrystal,type=minecraft:armor_stand]
tag @e[tag=dfCrystal] remove dfCrystal
scoreboard players set #stack df_EndFlag 32
tag @e[tag=dfCrSeted] remove dfCrSeted

#トラップをばら撒く
#文字通り、ばら撒く
#ロード待ちで償還されないからここはメインで
#2^4=16
#16*32=512
#エンドの中心から半径100m以内に500個トラップを配置しました。頑張って！

#クリスタルの位置にエンティティ召喚
execute as @e[type=minecraft:end_crystal,tag=!dfCrSeted,nbt={ShowBottom:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["dfCrystal","dftick"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:2039583}
tag @e[type=minecraft:end_crystal,tag=!dfCrSeted,nbt={ShowBottom:1b}] add dfCrSeted

#ドラゴンの体力を500にしてタグtickを付与
#これも生成されてないことがあるからメインで

#召喚された場合召喚フラグを撤去
advancement revoke @a only dragonfight:rebegin

scoreboard players set #Flag df_EndFlag 1