
#エンドにいる人数を取得
execute in the_end store result score #Players df_NUM if entity @a[nbt={Dimension:1}]

#エンドラ強化
data merge entity @e[type=minecraft:ender_dragon,limit=1,tag=!dftick] {Health:500f,Attributes:[{Name:"generic.maxHealth",Base:500}],Tags:["dftick"]}

#矢の消去
kill @e[tag=dfArrow,nbt={inGround:1b},type=arrow]

#クリスタル強化
execute as @e[type=minecraft:end_crystal,tag=!dfCrSeted,nbt={ShowBottom:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["dfCrystal","dftick"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:2039583}
execute as @e[type=minecraft:armor_stand,tag=dfCrystal] at @s run tag @e[type=end_crystal,distance=..0.5] add dfCrSeted

#踏まれたら実行、ブロックが消えたら消去
#近づいたら表示、離れたら非表示
execute at @a[nbt={Dimension:1}] as @e[tag=dftrap,type=minecraft:armor_stand,distance=..5] at @s positioned ~ ~1.5 ~ if entity @a[distance=..0.5] run function dragonfight:traps/trap_run
execute at @a[nbt={Dimension:1}] as @e[tag=dftrap,type=minecraft:armor_stand,distance=..5] at @s unless block ~ ~1 ~ minecraft:end_stone run kill @s
execute as @a[nbt={Dimension:1}] at @s as @e[type=minecraft:armor_stand,tag=dftrap,distance=..10] run data merge entity @s {ArmorItems:[{},{},{},{id:"end_stone",Count:1b}]}
execute as @e[tag=dftrap,nbt={ArmorItems:[{},{},{},{id:"end_stone",Count:1b}]}] unless entity @a[distance=..15] run data merge entity @s {ArmorItems:[{},{},{},{}]}

#各エンティティからを実行
execute as @e[tag=dfCrystal,type=minecraft:armor_stand] at @s run function dragonfight:crystals/crystal
execute as @e[type=ender_dragon] at @s run function dragonfight:dragon/dragon
execute as @e[tag=dfFireball,type=armor_stand] at @s run function dragonfight:fireball/move

#負荷軽減
kill @e[type=item,nbt={Item:{id:"minecraft:end_stone"},Age:200s}] 

#メインクロックを進める
scoreboard players add @e[tag=dftick,type=!minecraft:player] df_tick 1
