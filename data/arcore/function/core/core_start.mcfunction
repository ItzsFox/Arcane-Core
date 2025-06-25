execute as @r[tag=!CoreGiven] unless entity @e[type=marker,tag=CoreSpawned] run give @s cauldron[custom_name='["",{"text":"Core","italic":false,"color":"dark_purple","bold":true}]',rarity=epic,enchantment_glint_override=true,enchantments={levels:{infinity:1},show_in_tooltip:false},can_place_on={predicates:[{blocks:bedrock}]}]
execute as @a[tag=!CoreGiven] unless entity @e[type=marker,tag=CoreSpawned] run tag @s add CoreGiven
execute if block -66 71 -9 minecraft:cauldron unless entity @e[type=marker,tag=CoreSpawned] unless entity @e[type=marker,tag=CoreSetup] run summon marker -66 71 -9 {Tags:["CoreSetup"]}
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run setblock ~ ~ ~ air
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run fill ~ ~ ~ ~ ~100 ~ air
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run fill ~ ~ ~ ~ ~100 ~ air
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run summon falling_block ~ ~1 ~ {BlockState:{Name:cauldron},CustomName:'[{"text":"Core","bold":true,"color":"dark_purple"}]',CustomNameVisible:1b,Glowing:1b,Motion:[0d,5d,0d]}
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run summon firework_rocket
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run summon armor_stand ~ ~1 ~ {Invisible:1b, DisabledSlots:63, Invulnerable:1b, PersistenceRequired:1b, Motion:[0d,9.5d,0d], Tags:["CoreStand"]}
execute at @e[tag=CoreSetup] unless entity @e[type=marker,tag=CoreSpawned] run summon marker ~ ~ ~ {Tags:["CoreSpawned"], data:{coreLevel:0, correctItems:1}}
execute as @e[tag=CoreSetup] if entity @e[type=marker,tag=CoreSpawned] run kill @e[type=marker,tag=CoreSetup]