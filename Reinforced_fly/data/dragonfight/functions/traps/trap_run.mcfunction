#打ち上げ花火、横から見るか、上から見るか。
summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}}}

#例によってトラップはUUIDからのランダム。
execute store result score @s df_id run data get entity @s UUIDMost 0.0000000001
scoreboard players operation @s df_id %= #67 df_NUM
execute as @s[scores={df_id=0}] run function dragonfight:traps/trap0
execute as @s[scores={df_id=1..36}] run function dragonfight:traps/trap1-36
execute as @s[scores={df_id=37..66}] run function dragonfight:traps/trap37-66
kill @s

#ここから確率一覧

# バフ消去      1.49%   1

# 鈍足          7.46%   5
# 採掘速度低下  7.46%   5
# ダメージ      2.98%   2
# 吐き気        7.46%   5
# 盲目          7.46%   5
# 空腹          4.47%   3
# 弱体化        7.46%   5
# 毒            4.47%   3
# ウィザー      4.47%   3

# 爆発          29.85% 20
# 落雷          14.92% 10

#不正ぱなかった。
#数値は切り捨ててるから合計は100%にはならない。
#統計作るなら横の割合用の数値使って(ハートを入れたかった)