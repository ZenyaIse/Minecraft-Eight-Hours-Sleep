
time add 3000
execute as @a[nbt={SleepTimer:25s}] at @s run tp @s ~ ~0.01 ~
tellraw @a {"text":"Slept 3 hours"}
