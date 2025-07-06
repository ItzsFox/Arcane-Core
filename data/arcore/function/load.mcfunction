gamerule naturalRegeneration false
scoreboard objectives add level level
scoreboard objectives add level_up dummy
execute as @a unless entity @a[scores={level_up=0..}] run scoreboard players set @s level_up 0
scoreboard objectives add level_reward dummy
scoreboard objectives add crouch_timer dummy
scoreboard objectives add crouch_timer2 dummy
scoreboard objectives add glacialtimer dummy
scoreboard objectives add borntimer dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add data dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add health health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay below_name level
scoreboard players set @a crouch_timer 0
scoreboard players set @a crouch_timer2 0
scoreboard players set @a glacialtimer 0
scoreboard objectives add tempCount dummy
scoreboard objectives add correctItems dummy
scoreboard objectives add coreLevel dummy
schedule function arcore:shootingsoul/shootingsoul 24000


#loaded
tellraw @a ["",{"text":"I ","bold":true,"obfuscated":true,"color":"light_purple"},{"text":"Arcane Core v1.0.1 Loaded!","bold":true,"color":"dark_purple"}]
execute at @a run playsound block.enchantment_table.use master @a ~ ~ ~ 10 1
#announcement
tellraw @a [""]
tellraw @a ["",{"text":" Brace yourself for the ultimate challenge with ","color":"white"},{"text":"Arcane Core","bold":true,"color":"dark_purple"},{"text":". You start at your weakest\u2014just half a heart, and ","color":"white"},{"text":"no natural regeneration","color":"aqua"},{"text":". Your survival depends on your ","color":"white"},{"text":"XP","color":"yellow"},{"text":". As you gain levels, your ","color":"white"},{"text":"health will grow","color":"#F8ADAE"},{"text":", and with each milestone, you'll unlock powerful ","color":"white"},{"text":"buffs","color":"green"},{"text":" and ","color":"white"},{"text":"rewards","color":"green"},{"text":". In this world, ","color":"white"},{"text":"death isn't final","color":"#CA5000"},{"text":". Sacrifice your hard-earned ","color":"white"},{"text":"XP ","color":"yellow"},{"text":"to bring fallen teammates ","color":"white"},{"text":"back to life","color":"green"},{"text":" and keep the fight going.","color":"white"}]
tellraw @a [""]
tellraw @a ["",{"text":"Type "},{"text":"/function arcore:main/help","color":"aqua","clickEvent":{"action":"run_command","value":"/function arcore:main/help"}},{"text":" for more info."}]
tellraw @a [""]

#patch notes
tellraw @a ["",{"text":"Patch Notes v1.2.0:","bold":true,"color":"gold"},{"text":"\n"},{"text":"+ Added Core\n\n+ Added Core Tasks\n\n+ Added world border","color":"yellow"},{"text":"\n"}]
tellraw @a ["",{"text":"Last Patch Notes v1.1.0:","bold":true,"color":"gold"},{"text":"\n"},{"text":"+ Added craftable Reconstructed Soul Shards\n\n+ Added Shooting Souls that spawn every 20 minutes\n\n+ Soul Guardians will now spawn when a player dies","color":"yellow"},{"text":"\n"}]
