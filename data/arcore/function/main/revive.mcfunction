execute as @a[tag=finishedreviving] run tp @p[scores={deaths=3}] @s
execute as @a[tag=finishedreviving] run gamemode survival @p[scores={deaths=3}]
execute as @a[tag=finishedreviving] run effect give @p[scores={deaths=3}] resistance 10 255
execute as @a[tag=finishedreviving] run effect give @p[scores={deaths=3}] absorption 60 5
execute as @a[tag=finishedreviving] run effect give @p[scores={deaths=3}] glowing 10 1
execute as @a[tag=finishedreviving] run effect give @p[scores={deaths=3}] night_vision 10 1
execute as @a[tag=finishedreviving] run effect give @p[scores={deaths=3}] saturation 60 1

execute as @s run tellraw @a ["",{"text":"","color":"#da53ec","extra":[{"selector":"@p[scores={deaths=3}]"},{"text":" has been revived by ","extra":[{"selector":"@s"}]}]}]
execute as @a[tag=finishedreviving] run scoreboard players set @p[scores={deaths=3}] deaths 0