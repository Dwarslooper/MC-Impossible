execute as @e[type=minecraft:enderman,sort=random,limit=1] at @s unless entity @e[type=minecraft:enderman,distance=0.1..80,tag=en.L] run tag @s add en.L
execute as @e[type=minecraft:enderman,tag=en.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s en.L.cd 0
execute as @e[type=minecraft:enderman,tag=en.L] at @s if score @s en.L.cd matches 0.. run scoreboard players add @s en.L.cd 1
execute as @e[type=minecraft:enderman,tag=en.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s en.L.cd matches 1 run effect give @a[distance=..6] minecraft:blindness 2 100 true
execute as @e[type=minecraft:enderman,tag=en.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s en.L.cd matches 1 run clone ~4 ~4 ~4 ~-4 ~-4 ~-4 ~-4 ~20 ~-4 masked move
execute as @e[type=minecraft:enderman,tag=en.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s en.L.cd matches 1 run teleport @a[distance=..6] ~ ~28 ~
execute as @e[type=minecraft:enderman,tag=en.L] at @s if entity @a[distance=..6,gamemode=!spectator,gamemode=!creative] if score @s en.L.cd matches 1 positioned ~ ~28 ~ run playsound minecraft:entity.enderman.death master @a[distance=10]
execute as @e[type=minecraft:enderman,tag=en.L] at @s if score @s en.L.cd matches 400.. run scoreboard players reset @s
execute as @e[type=minecraft:enderman,tag=en.L] at @s run data merge entity @s {CustomName:'{"text":"Slenderman","color":"dark_purple","bold":"true"}',CustomNameVisible:1b}