#ロード時に実行されるコマンド
#必要最低限の定数を初期化する。
gamerule commandBlockOutput false
gamerule logAdminCommands false
scoreboard objectives add df_EndFlag dummy
scoreboard objectives add df_NUM dummy
scoreboard objectives add df_id dummy
scoreboard objectives add df_tick dummy
scoreboard objectives add df_MotionX dummy
scoreboard objectives add df_MotionZ dummy
scoreboard players set #1 df_NUM 1
scoreboard players set #12 df_NUM 12
scoreboard players set #67 df_NUM 67
scoreboard players set #100 df_NUM 100
scoreboard players set #1000 df_NUM 1000
tellraw @a ["",{"text":"Reinforced dragon 1.1","bold":true,"italic":true,"color":"dark_purple"},{"text":"  "},{"text":"by mkm75","italic":true,"color":"light_purple"},{"text":"\n\n\u0020"},{"text":"Successfully loaded!!","bold":true,"italic":true,"color":"green"}]