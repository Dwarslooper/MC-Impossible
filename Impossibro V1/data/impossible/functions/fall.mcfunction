execute as @a at @s if score @s imp.fall matches 283.. run kill @s
execute as @a at @s if score @s imp.fall matches 283.. run scoreboard players reset @a imp.fall
execute as @a at @s if score @s imp.fall matches ..283 run scoreboard players reset @s imp.fall

execute as @a at @s if score @s imp.bed matches 1.. run summon tnt ^ ^1 ^1
execute as @a at @s if score @s imp.bed matches 1.. run scoreboard players reset @s imp.bed

execute as @a at @s if score @s imp.craft matches 1.. run clear @s blaze_powder
execute as @a at @s if score @s imp.craft matches 1.. run clear @s blaze_rod
execute as @a at @s if score @s imp.craft matches 1.. run clear @s ender_eye
execute as @a at @s if score @s imp.craft matches 1.. run clear @s ender_pearl
execute as @a at @s if score @s imp.craft matches 1.. run clear @s diamond
execute as @a at @s if score @s imp.craft matches 1.. run clear @s diamond_block
execute as @a at @s if score @s imp.craft matches 1.. run clear @s stick
execute as @a at @s if score @s imp.craft matches 1.. run scoreboard players reset @s imp.craft

execute as @a at @s if score @s imp.food_death matches ..6 run effect give @s hunger 1 200 true
execute as @a at @s if score @s imp.food_death matches ..6 run effect give @s nausea 4 200 true
execute as @a at @s if score @s imp.food_death matches ..6 run effect give @s wither 1 200 true
execute as @a at @s if score @s imp.food_death matches ..6 run title @s actionbar "You should really eat something..."

execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 melon replace ancient_debris
execute as @a at @s if score @s imp.brew matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:birch_sign[waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"text":"No."}',Text3:'{"text":""}',Text4:'{"text":""}'} replace brewing_stand
execute as @a at @s if score @s imp.furnace matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:birch_sign[waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"text":"No."}',Text3:'{"text":""}',Text4:'{"text":""}'} replace furnace
execute as @a at @s if score @s imp.anvil matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:birch_sign[waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"text":"No."}',Text3:'{"text":""}',Text4:'{"text":""}'} replace anvil
execute as @a at @s if score @s imp.smith matches 1.. run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:birch_sign[waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"text":""}',Text2:'{"text":"No."}',Text3:'{"text":""}',Text4:'{"text":""}'} replace smithing_table
scoreboard players reset @a imp.smith
scoreboard players reset @a imp.brew
scoreboard players reset @a imp.anvil
scoreboard players reset @a imp.furnace

execute as @e[type=piglin] at @s run summon witch ~ ~ ~
execute as @e[type=piglin] at @s run teleport @s ~ ~-800 ~
execute as @e[type=piglin] at @s run kill @s

execute as @e[type=villager] at @s[tag=!vllr] run data merge entity @s {Tags:["vllr"],Willing:0b,VillagerData:{level:1,profession:"minecraft:toolsmith",type:"minecraft:taiga"},Offers:{Recipes:[{buy:{id:"minecraft:diamond",Count:1b},buyB:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b}},{buy:{id:'minecraft:diamond',Count:1b},buyB:{id:'minecraft:emerald',Count:1b},sell:{id:"minecraft:rotten_flesh",Count:1b}},{buy:{id:'minecraft:diamond',Count:1b},buyB:{id:'minecraft:emerald',Count:1b},sell:{id:"minecraft:suspicious_stew",Count:1b,tag:{Effects:[{EffectId:2b,EffectDuration:999999},{EffectId:4b,EffectDuration:999999},{EffectId:9b,EffectDuration:999999},{EffectId:14b,EffectDuration:999999},{EffectId:15b,EffectDuration:999999},{EffectId:17b,EffectDuration:999999},{EffectId:18b,EffectDuration:999999},{EffectId:19b,EffectDuration:999999},{EffectId:20b,EffectDuration:999999},{EffectId:24b,EffectDuration:999999},{EffectId:25b,EffectDuration:999999},{EffectId:27b,EffectDuration:999999},{EffectId:31b,EffectDuration:999999}]}}},{buy:{id:'minecraft:diamond',Count:1b},buyB:{id:'minecraft:emerald',Count:1b},sell:{id:"minecraft:wooden_hoe",Count:1b}}]}}

execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 infested_stone_bricks replace stone_bricks
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:infested_mossy_stone_bricks replace mossy_stone_bricks
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 minecraft:infested_cracked_stone_bricks replace cracked_stone_bricks

execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 lava replace lava_cauldron
execute as @a at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 water replace water_cauldron