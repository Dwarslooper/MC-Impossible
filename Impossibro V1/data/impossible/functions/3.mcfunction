execute as @e[type=minecraft:phantom] at @s run tag @s add ph.lTry
execute as @e[type=minecraft:phantom,sort=random,limit=1] at @s unless entity @e[type=minecraft:phantom,distance=0.1..80,tag=ph.L] run tag @s add ph.L
execute as @e[type=minecraft:phantom,tag=ph.L] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=-100,dz=4,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s ph.L.cd 0
execute as @e[type=minecraft:phantom,tag=ph.L] at @s if score @s ph.L.cd matches 0.. run scoreboard players add @s ph.L.cd 1
execute as @e[type=minecraft:phantom,tag=ph.L] at @s if score @s ph.L.cd matches 1 run summon minecraft:tnt_minecart ~ ~ ~ {Motion:[0.1,-0.4,0.0]}
execute as @e[type=minecraft:phantom,tag=ph.L] at @s if score @s ph.L.cd matches 400.. run scoreboard players reset @s
execute as @e[type=minecraft:phantom,tag=ph.L] at @s run data merge entity @s {CustomName:'{"text":"Evil Phantom","color":"blue","bold":"true"}',CustomNameVisible:1b}