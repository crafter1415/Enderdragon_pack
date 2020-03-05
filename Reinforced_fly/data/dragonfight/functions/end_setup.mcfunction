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
tag @e[tag=dfCrSeted] remove dfCrSeted

#トラップの生成回数もリセット
scoreboard players set #stack df_EndFlag 32

#他の処理はほぼメインでやってる。
#ここでやるのはフラグ処理と生成回数の設定のみ。

#召喚された場合進捗をクリア
advancement revoke @a only dragonfight:rebegin

#エンド設定済みフラグを立てる。これがないとまともに動かない。
scoreboard players set #Flag df_EndFlag 1