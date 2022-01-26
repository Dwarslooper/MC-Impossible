function impossible:addscores
function impossible:dias
function impossible:hot
function impossible:1
function impossible:2
function impossible:3
function impossible:4
function impossible:5
function impossible:6
execute as @a[scores={imp.rl=1..}] at @s unless score @s imp.rl matches 200 run scoreboard players add @s imp.rl 1

execute as @a[scores={imp.rl=2}] at @s run tellraw @s {"text":"Something went wrong with Minecraft...","color":"red"}
execute as @a[scores={imp.rl=5}] at @s run tellraw @s {"text":"Attempting to restore Data from local files...","color":"red"}
execute as @a[scores={imp.rl=12}] at @s run tellraw @s {"text":"10% complete","color":"red"}
execute as @a[scores={imp.rl=22}] at @s run tellraw @s {"text":"40% complete","color":"red"}
execute as @a[scores={imp.rl=53}] at @s run tellraw @s {"text":"90% complete","color":"red"}
execute as @a[scores={imp.rl=57}] at @s run tellraw @s {"text":"99% complete","color":"red"}
execute as @a[scores={imp.rl=80}] at @s run tellraw @s {"text":"100% complete","color":"red"}
execute as @a[scores={imp.rl=120}] at @s run tellraw @s {"text":"processing data...","color":"red"}
execute as @a[scores={imp.rl=140}] at @s run tellraw @s {"text":"Data restoring complete.","color":"red"}
execute as @a[scores={imp.rl=145}] at @s run tellraw @s {"text":"We couldn't restore everything, so there might be some bugs in the word now.","color":"dark_red"}
execute as @a[scores={imp.rl=200}] at @s run title @s title ""
execute as @a[scores={imp.rl=200}] at @s run title @s subtitle {"text":"Enjoy impossible Minecraft","color":"red"}

execute as @a[scores={imp.rl=200}] at @s run scoreboard players reset @s imp.rl

execute as @a[nbt={Dimension:-1}] at @s unless score @s imp.ntPDS matches 2 run scoreboard players add @s imp.ntPDS 1
execute as @a[nbt={Dimension:-1}] at @s if score @s imp.ntPDS matches 1 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace nether_portal
execute as @a[nbt={Dimension:-1}] at @s if score @s imp.ntPDS matches 1 run tellraw @s "Oups, the portal just broke... I hope you took flint and steel with you!"
execute as @a[nbt={Dimension:-1}] at @s if score @s imp.ntPDS matches 1 run scoreboard players set @s imp.ntPDS 2

execute as @a at @s as @e[type=chest_minecart,distance=..40] at @s run data merge entity @s {LootTable:""}
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 chest{LootTable:""} replace chest

execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run spreadplayers ~ ~ 0 400 false @s
execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 100 1 1
execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run tellraw @s "You already foundnthe Stronghold? Come on, that was too easy. Try again to find it! "
execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run tag @s add end.bruh






execute as @a[tag=ch.settings.save_ar037] at @s if score #ch.settings imp.data matches ..19 run tellraw @s "Der angegebene Wert ist zu klein, er wurde auf das Minimum gesetzt."
execute as @a[tag=ch.settings.save_ar037] at @s if score #ch.settings imp.data matches ..19 run scoreboard players set #ch.settings imp.data 20

execute as @a[tag=ch.settings.save_ar037] at @s if score #ch.settings imp.data matches 301.. run tellraw @s "Der angegebene Wert ist zu groß, er wurde auf das Maximum gesetzt."
execute as @a[tag=ch.settings.save_ar037] at @s if score #ch.settings imp.data matches 301.. run scoreboard players set #ch.settings imp.data 300

execute as @a[tag=ch.settings.save_ar037] at @s store result score #ch.timer imp.ch.timer run scoreboard players get #ch.settings imp.data
execute as @a[tag=ch.settings.save_ar037] at @s run scoreboard players operation #ch.timer imp.ch.timer *= #20 imp.data
execute as @a[tag=ch.settings.save_ar037] at @s store result score ch.time imp.data run scoreboard players get #ch.timer imp.ch.timer
execute as @a[tag=ch.settings.save_ar037] at @s run tellraw @a [{"text":"Neue Zeit zwischen Swapping: ","color":"gray"},{"score":{"name":"#ch.settings","objective":"imp.data"},"color":"gold"},{"text":" Sekunden oder ","color":"gray"},{"score":{"name":"#ch.timer","objective":"imp.ch.timer"},"color":"dark_purple"},{"text":" Ticks.","color":"dark_purple"}]
execute as @a[tag=ch.settings.save_ar037] at @s run tag @s remove ch.settings.save_ar037


execute if entity @a[tag=challange] if score ch.time imp.data matches 1..6000 run scoreboard players remove ch.time imp.data 1
execute if entity @a[tag=challange] if score ch.time imp.data matches 200 run tellraw @a {"text":"Swapping in: 10","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches 100 run tellraw @a {"text":"Swapping in: 5","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches 80 run tellraw @a {"text":"Swapping in: 4","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches 60 run tellraw @a {"text":"Swapping in: 3","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches 40 run tellraw @a {"text":"Swapping in: 2","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches 20 run tellraw @a {"text":"Swapping in: 1","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches ..0 run tellraw @a {"text":"Switched places!","color":"dark_red"}
execute if entity @a[tag=challange] if score ch.time imp.data matches ..0 run execute as @a[tag=challange] at @s run summon armor_stand ~ ~ ~ {Tags:["ch.tpengine"],Invisible:1b,NoGravity:1b,Small:1b,Marker:1b,Silent:1b}
execute if entity @a[tag=challange] if score ch.time imp.data matches ..0 run execute as @a[tag=challange] at @s run teleport @s @e[type=armor_stand,limit=1,sort=random,tag=ch.tpengine,distance=2..]
execute if entity @a[tag=challange] if score ch.time imp.data matches ..0 run execute as @a[tag=challange] at @s run kill @e[tag=ch.tpengine,type=armor_stand]
execute if entity @a[tag=challange] if score ch.time imp.data matches ..0 run execute as @a[tag=challange] at @s run execute store result score ch.time imp.data run scoreboard players get #ch.timer imp.ch.timer