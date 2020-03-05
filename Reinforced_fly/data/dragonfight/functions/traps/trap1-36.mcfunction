#罠1~36 デバフ
#視覚に影響を与えるデバフが短かったり、ダメージとそれにつながる系は短めだったりする。
#後、確率も調整されてる。これはただ単になんとなく。
execute as @s[scores={df_id=1..5}] run effect give @a[distance=..0.5] minecraft:slowness 180 2
execute as @s[scores={df_id=6..10}] run effect give @a[distance=..0.5] minecraft:mining_fatigue 180 2
execute as @s[scores={df_id=11..12}] run effect give @a[distance=..0.5] minecraft:instant_damage 1 1
execute as @s[scores={df_id=13..17}] run effect give @a[distance=..0.5] minecraft:nausea 30
execute as @s[scores={df_id=18..22}] run effect give @a[distance=..0.5] minecraft:blindness 30
execute as @s[scores={df_id=23..25}] run effect give @a[distance=..0.5] minecraft:hunger 60 5
execute as @s[scores={df_id=26..30}] run effect give @a[distance=..0.5] minecraft:weakness 120 5
execute as @s[scores={df_id=31..33}] run effect give @a[distance=..0.5] minecraft:poison 60 3
execute as @s[scores={df_id=34..36}] run effect give @a[distance=..0.5] minecraft:wither 30 3