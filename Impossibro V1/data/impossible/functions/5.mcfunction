execute as @e[type=minecraft:fireball] at @s run summon minecraft:bat ~ ~ ~
execute as @e[type=minecraft:fireball] at @s as @e[type=minecraft:bat,distance=..2] run effect give @s minecraft:resistance 2 255 true
execute as @e[type=minecraft:fireball] at @s as @e[type=minecraft:bat,distance=..2] run data modify entity @s Motion set from entity @e[type=minecraft:fireball,sort=nearest,limit=1] Motion