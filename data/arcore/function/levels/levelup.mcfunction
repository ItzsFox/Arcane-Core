#tellraw
execute as @a if score @s level > @s level_up run tellraw @a {"text":"","color":"#dba800","extra":[{"selector":"@s"},{"text":" has leveled up to level "},{"score":{"name":"@s","objective":"level"}},{"text":" \u2b06"}]}
execute as @a if score @s level_up > @s level run tellraw @a {"text":"","color":"#db1a00","extra":[{"selector":"@s"},{"text":" has leveled down to level "},{"score":{"name":"@s","objective":"level"}},{"text":" \u2b07"}]}

#playsound
execute as @a if score @s level_up > @s level run playsound block.trial_spawner.eject_item master @s ~ ~ ~ 50 .5
execute as @a if score @s level > @s level_up run playsound block.amethyst_block.chime master @s ~ ~ ~ 50 2

#action bar
execute as @a if score @s level > @s level_up run title @s actionbar {"text":"\u2b06 Level up \u2b06","color":"yellow"}

#level up
execute as @a if score @s level > @s level_up run effect give @s regeneration 2 1
execute as @a if score @s level > @s level_up run effect give @s glowing 2 1 true
execute as @a at @s if score @s level > @s level_up run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force


#level down
execute as @a if score @s level_up > @s level unless score @s level matches 0 run effect clear @s
execute as @a if score @s level_up > @s level run effect give @s blindness 5 1 false
execute as @a if score @s level_up > @s level run effect give @s slowness 5 3 false
execute as @a if score @s level_up > @s level run effect give @s mining_fatigue 15 3 false


#level 5 reward
execute as @a if score @s level > @s level_up if score @s level matches 5 if score @s level_reward matches 0 run give @s shield[enchantments={levels:{unbreaking:1}}]
execute as @a if score @s level > @s level_up if score @s level matches 5 if score @s level_reward matches 0 run tellraw @a {"text":"","color":"#ac63ff","extra":[{"selector":"@s"},{"text":" has received a level reward!"}]}
execute as @a if score @s level > @s level_up if score @s level matches 5 if score @s level_reward matches 0 run effect give @s regeneration 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 5 if score @s level_reward matches 0 run effect give @s saturation 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 5 if score @s level_reward matches 0 run scoreboard players set @s level_reward 1

#level 10 reward
execute as @a if score @s level > @s level_up if score @s level matches 10 if score @s level_reward matches ..1 run give @s potion[potion_contents="fire_resistance"] 1
execute as @a if score @s level > @s level_up if score @s level matches 10 if score @s level_reward matches ..1 run tellraw @a {"text":"","color":"#ac63ff","extra":[{"selector":"@p"},{"text":" has received a level reward!"}]}
execute as @a if score @s level > @s level_up if score @s level matches 10 if score @s level_reward matches ..1 run effect give @s regeneration 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 10 if score @s level_reward matches ..1 run effect give @s saturation 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 10 if score @s level_reward matches ..1 run scoreboard players set @s level_reward 2

#level 15 reward
execute as @a if score @s level > @s level_up if score @s level matches 15 if score @s level_reward matches ..2 run give @s golden_apple 1
execute as @a if score @s level > @s level_up if score @s level matches 15 if score @s level_reward matches ..2 run tellraw @a {"text":"","color":"#ac63ff","extra":[{"selector":"@p"},{"text":" has received a level reward!"}]}
execute as @a if score @s level > @s level_up if score @s level matches 15 if score @s level_reward matches ..2 run effect give @s regeneration 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 15 if score @s level_reward matches ..2 run effect give @s saturation 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 15 if score @s level_reward matches ..2 run scoreboard players set @s level_reward 3

#level 20 reward
execute as @a if score @s level > @s level_up if score @s level matches 20 if score @s level_reward matches ..3 run give @s totem_of_undying[enchantment_glint_override=true,enchantments={levels:{unbreaking:1},show_in_tooltip:false}]
execute as @a if score @s level > @s level_up if score @s level matches 20 if score @s level_reward matches ..3 run tellraw @a {"text":"","color":"#ac63ff","extra":[{"selector":"@p"},{"text":" has received a level reward!"}]}
execute as @a if score @s level > @s level_up if score @s level matches 20 if score @s level_reward matches ..3 run effect give @s regeneration 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 20 if score @s level_reward matches ..3 run effect give @s saturation 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 20 if score @s level_reward matches ..3 run scoreboard players set @s level_reward 4

#level 25 reward
execute as @a if score @s level > @s level_up if score @s level matches 25 if score @s level_reward matches ..4 run give @s enchanted_golden_apple 1
execute as @a if score @s level > @s level_up if score @s level matches 25 if score @s level_reward matches ..4 run tellraw @a {"text":"","color":"#ac63ff","extra":[{"selector":"@p"},{"text":" has received a level reward!"}]}
execute as @a if score @s level > @s level_up if score @s level matches 25 if score @s level_reward matches ..4 run effect give @s regeneration 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 25 if score @s level_reward matches ..4 run effect give @s saturation 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 25 if score @s level_reward matches ..4 run scoreboard players set @s level_reward 5

#level 30 reward
execute as @a if score @s level > @s level_up if score @s level matches 30 if score @s level_reward matches ..5 run give @s netherite_ingot 1
execute as @a if score @s level > @s level_up if score @s level matches 30 if score @s level_reward matches ..5 run tellraw @a {"text":"","color":"#ac63ff","extra":[{"selector":"@p"},{"text":" has received a level reward!"}]}
execute as @a if score @s level > @s level_up if score @s level matches 30 if score @s level_reward matches ..5 run effect give @s regeneration 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 30 if score @s level_reward matches ..5 run effect give @s saturation 15 3 false
execute as @a if score @s level > @s level_up if score @s level matches 30 if score @s level_reward matches ..5 run scoreboard players set @s level_reward 6

#set level_up as level
execute as @a if score @s level > @s level_up run scoreboard players operation @s level_up = @s level
execute as @a if score @s level_up > @s level run scoreboard players operation @s level_up = @s level
