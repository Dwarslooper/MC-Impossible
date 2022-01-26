execute as @e[type=minecraft:end_crystal] at @s if entity @a[distance=..8] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:end_crystal] at @s if entity @e[distance=..8,type=minecraft:arrow] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:end_crystal] at @s if entity @e[distance=..8,type=minecraft:snowball] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:end_crystal] at @s if entity @e[distance=..8,type=minecraft:spectral_arrow] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:end_crystal] at @s if entity @e[distance=..8,type=minecraft:egg] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:end_crystal] at @s if entity @e[distance=..8,type=minecraft:trident] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:end_crystal] at @s if entity @e[distance=..8,type=minecraft:tnt_minecart] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ec.tp1"],Invisible:1b,NoGravity:1b}
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[distance=..8,type=minecraft:arrow]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[distance=..8,type=minecraft:egg]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[distance=..8,type=minecraft:snowball]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[distance=..8,type=minecraft:tnt_minecart]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[distance=..8,type=minecraft:spectral_arrow]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[distance=..8,type=minecraft:trident]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @e[type=minecraft:end_crystal,distance=..2]
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run spreadplayers ~ ~ 10 10 false @s
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run summon minecraft:end_crystal
execute as @e[type=minecraft:armor_stand,tag=ec.tp1] at @s run kill @s