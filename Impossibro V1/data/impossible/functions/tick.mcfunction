function impossible:addscores
function impossible:dias
function impossible:hot
function impossible:1
function impossible:2
function impossible:3
function impossible:4
function impossible:5
function impossible:6
function impossible:fall
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

execute as @a[nbt={Dimension:"minecraft:the_nether"}] at @s unless score @s imp.ntPDS matches 2 run scoreboard players add @s imp.ntPDS 1
execute as @a[nbt={Dimension:"minecraft:the_nether"}] at @s if score @s imp.ntPDS matches 1 run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace nether_portal
execute as @a[nbt={Dimension:"minecraft:the_nether"}] at @s if score @s imp.ntPDS matches 1 run tellraw @s "Oups, the portal just broke... I hope you took flint and steel with you!"
execute as @a[nbt={Dimension:"minecraft:the_nether"}] at @s if score @s imp.ntPDS matches 1 run scoreboard players set @s imp.ntPDS 2
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s run scoreboard players reset @s imp.ntPDS

execute as @a at @s as @e[type=chest_minecart,distance=..40] at @s run data merge entity @s {LootTable:""}
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 chest{LootTable:""} replace chest

execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run spreadplayers ~ ~ 0 400 false @s
execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 100 1 1
execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run tellraw @s "You already found the Stronghold? Come on, that was too easy. Try again to find it! "
execute as @a[advancements={minecraft:story/follow_ender_eye=true},tag=!end.bruh] at @s run tag @s add end.bruh

execute as @a at @s if predicate impossible:predicate run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 lava replace end_portal

execute as @a at @s if block ~2 ~ ~ end_portal_frame if block ~-2 ~ ~ end_portal_frame if block ~ ~ ~2 end_portal_frame if block ~ ~ ~-2 end_portal_frame unless block ~ -60 ~ end_portal run playsound minecraft:block.end_portal.spawn master @s
execute as @a at @s if block ~2 ~ ~ end_portal_frame if block ~-2 ~ ~ end_portal_frame if block ~ ~ ~2 end_portal_frame if block ~ ~ ~-2 end_portal_frame run setblock ~1 -60 ~ end_portal_frame[facing=west]
execute as @a at @s if block ~2 ~ ~ end_portal_frame if block ~-2 ~ ~ end_portal_frame if block ~ ~ ~2 end_portal_frame if block ~ ~ ~-2 end_portal_frame run setblock ~-1 -60 ~ end_portal_frame[facing=east]
execute as @a at @s if block ~2 ~ ~ end_portal_frame if block ~-2 ~ ~ end_portal_frame if block ~ ~ ~2 end_portal_frame if block ~ ~ ~-2 end_portal_frame run setblock ~ -60 ~1 end_portal_frame[facing=north]
execute as @a at @s if block ~2 ~ ~ end_portal_frame if block ~-2 ~ ~ end_portal_frame if block ~ ~ ~2 end_portal_frame if block ~ ~ ~-2 end_portal_frame run setblock ~ -60 ~-1 end_portal_frame[facing=south]
execute as @a at @s if block ~2 ~ ~ end_portal_frame if block ~-2 ~ ~ end_portal_frame if block ~ ~ ~2 end_portal_frame if block ~ ~ ~-2 end_portal_frame run setblock ~ -60 ~ end_portal

execute as @e[type=ender_dragon,nbt={DragonPhase:0}] at @s unless entity @e[type=tnt,distance=..8] run summon tnt ~ ~-2 ~ {Fuse:80}
execute as @e[type=ender_dragon,nbt={DragonPhase:6}] at @s run effect give @a[distance=..13] levitation 7 10 true
execute as @e[type=ender_dragon,nbt={DragonPhase:0}] at @s run kill @e[type=arrow,distance=..13]
execute as @e[type=ender_dragon,nbt={DragonPhase:0}] at @s run data merge entity @s {DragonPhase:0}