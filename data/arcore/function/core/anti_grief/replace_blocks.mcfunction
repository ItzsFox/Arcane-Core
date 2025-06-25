# Replaces missing blocks in the core area with the correct blocks

effect give @p blindness 10 1
effect give @p nausea 10 255
effect give @p instant_damage 10 100
effect give @p mining_fatigue 10 255
effect give @p slowness 10 255
effect give @p levitation 1 20



execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~1 ~-1 air run setblock ~-3 ~1 ~-1 minecraft:crimson_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~2 ~ air run setblock ~-3 ~2 ~ minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~1 ~ air run setblock ~-3 ~1 ~ minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~ ~-2 air run setblock ~-3 ~ ~-2 minecraft:crimson_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~ ~-1 air run setblock ~-3 ~ ~-1 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~ ~ air run setblock ~-3 ~ ~ minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-3 ~ ~1 air run setblock ~-3 ~ ~1 minecraft:crimson_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]

execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~ ~-3 air run setblock ~-2 ~ ~-3 minecraft:crimson_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~2 ~-2 air run setblock ~-2 ~2 ~-2 minecraft:crimson_trapdoor[facing=east,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~1 ~-2 air run setblock ~-2 ~1 ~-2 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~ ~-2 air run setblock ~-2 ~ ~-2 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~ ~-1 air run setblock ~-2 ~ ~-1 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~ ~ air run setblock ~-2 ~ ~ minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~2 ~1 air run setblock ~-2 ~2 ~1 minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~1 ~1 air run setblock ~-2 ~1 ~1 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-2 ~ ~1 air run setblock ~-2 ~ ~1 minecraft:crimson_stem[axis=y]

execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~5 ~-5 air run setblock ~-1 ~5 ~-5 minecraft:crimson_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~4 ~-5 air run setblock ~-1 ~4 ~-5 minecraft:crimson_planks
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~3 ~-5 air run setblock ~-1 ~3 ~-5 minecraft:crimson_planks
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~2 ~-5 air run setblock ~-1 ~2 ~-5 minecraft:crimson_stairs[facing=south,half=top,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~7 ~-4 air run setblock ~-1 ~7 ~-4 minecraft:crimson_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~6 ~-4 air run setblock ~-1 ~6 ~-4 minecraft:crimson_planks
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~5 ~-4 air run setblock ~-1 ~5 ~-4 minecraft:crimson_stairs[facing=north,half=top,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~2 ~-4 air run setblock ~-1 ~2 ~-4 minecraft:crimson_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~1 ~-4 air run setblock ~-1 ~1 ~-4 minecraft:crimson_stairs[facing=south,half=top,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~7 ~-3 air run setblock ~-1 ~7 ~-3 minecraft:crimson_stairs[facing=north,half=top,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~7 ~-3 air run setblock ~-1 ~7 ~-3 minecraft:crimson_stairs[facing=north,half=top,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~2 ~-3 air run setblock ~-1 ~2 ~-3 minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~1 ~-3 air run setblock ~-1 ~1 ~-3 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~ ~-3 air run setblock ~-1 ~ ~-3 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~8 ~-2 air run setblock ~-1 ~8 ~-2 minecraft:crimson_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~7 ~-2 air run setblock ~-1 ~7 ~-2 minecraft:crimson_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~ ~-2 air run setblock ~-1 ~ ~-2 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~8 ~-1 air run setblock ~-1 ~8 ~-1 minecraft:crimson_slab[type=bottom,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~ ~-1 air run setblock ~-1 ~ ~-1 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~8 ~ air run setblock ~-1 ~8 ~ minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~7 ~ air run setblock ~-1 ~7 ~ minecraft:grindstone[face=ceiling,facing=north]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~6 ~ air run setblock ~-1 ~6 ~ minecraft:chain[axis=y,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~5 ~ air run setblock ~-1 ~5 ~ minecraft:cauldron
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~ ~ air run setblock ~-1 ~ ~ minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~ ~1 air run setblock ~-1 ~ ~1 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~2 ~2 air run setblock ~-1 ~2 ~2 minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~1 ~2 air run setblock ~-1 ~1 ~2 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~-1 ~ ~2 air run setblock ~-1 ~ ~2 minecraft:crimson_stem[axis=y]

execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~1 ~-3 air run setblock ~ ~1 ~-3 minecraft:crimson_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~ ~-3 air run setblock ~ ~ ~-3 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~ ~-2 air run setblock ~ ~ ~-2 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~ ~-1 air run setblock ~ ~ ~-1 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~ ~1 air run setblock ~ ~ ~1 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~1 ~2 air run setblock ~ ~1 ~2 minecraft:crimson_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~ ~ ~2 air run setblock ~ ~ ~2 minecraft:crimson_stem[axis=y]

execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~2 ~-2 air run setblock ~1 ~2 ~-2 minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~1 ~-2 air run setblock ~1 ~1 ~-2 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~ ~-2 air run setblock ~1 ~ ~-2 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~ ~-1 air run setblock ~1 ~ ~-1 minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~ ~ air run setblock ~1 ~ ~ minecraft:magenta_concrete
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~2 ~1 air run setblock ~1 ~2 ~1 minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~1 ~1 air run setblock ~1 ~1 ~1 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~ ~1 air run setblock ~1 ~ ~1 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~1 ~ ~2 air run setblock ~1 ~ ~2 minecraft:crimson_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]

execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~ ~-2 air run setblock ~2 ~ ~-2 minecraft:crimson_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~2 ~-1 air run setblock ~2 ~2 ~-1 minecraft:crimson_trapdoor[facing=south,half=bottom,open=false,powered=false,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~1 ~-1 air run setblock ~2 ~1 ~-1 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~ ~-1 air run setblock ~2 ~ ~-1 minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~1 ~ air run setblock ~2 ~1 ~ minecraft:crimson_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~ ~ air run setblock ~2 ~ ~ minecraft:crimson_stem[axis=y]
execute at @e[type=minecraft:marker,tag=CoreSpawned] unless entity @e[type=armor_stand,tag=CoreStand] if block ~2 ~ ~1 air run setblock ~2 ~ ~1 minecraft:crimson_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]