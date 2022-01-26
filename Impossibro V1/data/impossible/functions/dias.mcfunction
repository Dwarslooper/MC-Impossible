execute as @a at @s if score @s imp.diaMSG matches 1.. run tellraw @s [{"text":"Found parts for 1 diamond:","color":"gray"},{"text":"\n"},{"score":{"name":"@s","objective":"imp.diaP"},"color":"gold"},{"text":"/2","color":"gold"}]
scoreboard players reset @a imp.diaMSG
execute as @a[scores={imp.diaDR=1..}] at @s run tellraw @s "Stupid, you gave away a diamond..."
execute as @a[scores={imp.diaDR=1..}] at @s run scoreboard players reset @s imp.diaDR
kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}}]
execute as @a[scores={imp.diaP=2..}] at @s run give @s diamond
execute as @a[scores={imp.diaP=2..}] at @s run scoreboard players reset @s imp.diaP