execute at @e[type=marker,tag=CoreSpawned] run place template arcore:arcane_reset ~-3 ~ ~-5
kill @e[type=marker,tag=CoreSpawned]
kill @e[type=text_display,tag=TaskText]
kill @e[type=armor_stand,tag=TaskItem]
worldborder set 100000
tag @a remove CoreGiven

