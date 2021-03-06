#全データ、フラグをリセットする
#非常用

#ゲームルール
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false

#使用エンティティのkill、タグの消去
kill @e[tag=dftrap,type=minecraft:armor_stand]
tag @e[tag=dftrap] remove dftrap
kill @e[tag=dfmakeTrap,type=minecraft:armor_stand]
tag @e[tag=dfmakeTrap] remove dfmakeTrap
tag @e[tag=dftick] remove dftick
tag @e[tag=dfHealed] remove dfHealed
tag @e[tag=dfHealing] remove dfHealing
tag @e[tag=dfHardend] remove dfHardend
kill @e[tag=dfSpawner,type=minecraft:spawner_minecart]
tag @e[tag=dfSpawner] remove dfSpawner
tag @e[tag=dfActive] remove dfActive
kill @e[tag=dfCrystal,type=minecraft:armor_stand]
tag @e[tag=dfCrystal] remove dfCrystal
tag @e[tag=dfCrSeted] remove dfCrSeted
#多分エンドにいるやつには意味ない。
#まぁエンドに行ったときエンティティは初期化されるので問題ない。

#スコア初期化
scoreboard objectives remove df_EndFlag
scoreboard objectives remove df_NUM
scoreboard objectives remove df_id
scoreboard objectives remove df_tick
scoreboard objectives add df_EndFlag dummy
scoreboard objectives add df_NUM dummy
scoreboard objectives add df_id dummy
scoreboard objectives add df_tick dummy
scoreboard players reset #Flag df_EndFlag
scoreboard players set #stack df_EndFlag 0
scoreboard players set #1 df_NUM 1
scoreboard players set #12 df_NUM 12
scoreboard players set #67 df_NUM 67
scoreboard players set #100 df_NUM 100
scoreboard players set #Time df_NUM 36000
scoreboard players set #Players df_NUM 0

#オリジナル進捗も初期化。
advancement revoke @a only dragonfight:rebegin
advancement revoke @a only dragonfight:killed
#進捗にセンスを求めるな。