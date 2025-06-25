execute as @e[type=allay,tag=soul] unless items entity @s weapon.* * run execute at @s run tp @s ~ ~.5 ~.3
execute as @e[type=allay,tag=soul] unless items entity @s weapon.* * run execute at @s run particle soul ~ ~-.5 ~-.5
execute as @e[type=allay,tag=soul] unless items entity @s weapon.* * run schedule function arcore:soulguardian/soulguardian_kill 150 append