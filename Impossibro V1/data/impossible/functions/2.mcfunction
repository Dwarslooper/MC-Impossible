execute as @e[type=minecraft:creeper] at @s run tag @s add cr.lTry
execute as @e[type=minecraft:creeper,sort=random,limit=1] at @s unless entity @e[type=minecraft:creeper,distance=0.1..80,tag=cr.L] run tag @s add cr.L
execute as @e[type=minecraft:creeper,tag=cr.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s cr.L.cd 0
execute as @e[type=minecraft:creeper,tag=cr.L] at @s if score @s cr.L.cd matches 0.. run scoreboard players add @s cr.L.cd 1
execute as @e[type=minecraft:creeper,tag=cr.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s cr.L.cd matches 1..18 run teleport @s ~ ~ ~ ~70 ~
execute as @e[type=minecraft:creeper,tag=cr.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s cr.L.cd matches 1..18 run summon tnt ^ ^2 ^1 {Fuse:40,Motion:[0.0,0.4,0.0]}
execute as @e[type=minecraft:creeper,tag=cr.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s cr.L.cd matches 1 run data merge entity @s {Motion:[0.0,0.6,0.0]}
execute as @e[type=minecraft:creeper,tag=cr.L] at @s if score @s cr.L.cd matches 400.. run scoreboard players reset @s
execute as @e[type=minecraft:creeper,tag=cr.L] at @s run data merge entity @s {CustomName:'{"text":"Creeper Lord","color":"red","bold":"true"}',CustomNameVisible:1b}