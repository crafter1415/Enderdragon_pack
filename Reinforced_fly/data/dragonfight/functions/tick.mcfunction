#常時実行するコマンド
#負荷軽減のためのバッファともいえる？
execute if entity @a[nbt={Dimension:1}] unless score #Flag df_EndFlag = #1 df_NUM in the_end run function dragonfight:end_setup
execute if entity @a[nbt={Dimension:1}] in the_end run function dragonfight:end_main