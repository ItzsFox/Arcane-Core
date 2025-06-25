# Frostbite effect for the Glacial Staff
execute at @a[tag=frozen] as @a[tag=frozen] run execute store success score #snow data run fill ~ ~1 ~ ~ ~1 ~ powder_snow replace air
execute at @a[tag=frozen] as @a[tag=frozen] run execute if score #snow data matches 1 run summon marker ~ ~1 ~ {Tags:["snow"]}
execute at @a[tag=frozen] as @a[tag=frozen] run advancement revoke @s only arcore:frostbite