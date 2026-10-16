
time add 8000
execute as @a[nbt={SleepTimer:99s}] at @s run tp @s ~ ~0.01 ~
tellraw @a {"text":"Slept 8 hours"}
