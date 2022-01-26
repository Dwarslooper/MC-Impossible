execute as @e[type=minecraft:arrow] at @s run scoreboard players add @s ar.L.cd 1
execute as @e[type=minecraft:arrow] at @s if entity @e[type=minecraft:skeleton,distance=..2] if score @s ar.L.cd matches 1 run tag @s add ar.L
execute as @e[type=minecraft:arrow,tag=ar.L] at @s run data merge entity @s {Fire:999999}
execute as @e[type=minecraft:arrow,tag=ar.L] at @s run playsound minecraft:entity.arrow.hit_player master @a[distance=..10] ~ ~ ~ 100 2 1
execute as @e[type=minecraft:arrow,tag=ar.L] at @s if data entity @s {inGround:1b} run summon tnt ~ ~ ~
execute as @e[type=minecraft:arrow,tag=ar.L] at @s if data entity @s {inGround:1b} run kill @s