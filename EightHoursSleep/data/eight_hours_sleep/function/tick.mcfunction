execute store result score #t day_time run time query daytime

# Count sleep times during the night
execute if entity @a[nbt={SleepTimer:1s}] run scoreboard players add #n player_slept 1

# First sleep (8 hours)
execute if score #n player_slept matches 1 if entity @a[nbt={SleepTimer:99s}] run time add 8000
execute if score #n player_slept matches 1 if entity @a[nbt={SleepTimer:99s}] run tellraw @a {"text":"Slept 8 hours"}
execute if score #n player_slept matches 1 run execute as @a[nbt={SleepTimer:99s}] at @s run tp @s ~ ~0.01 ~

# Second sleep (2 hours)
execute if score #n player_slept matches 2 if entity @a[nbt={SleepTimer:25s}] run time add 2000
execute if score #n player_slept matches 2 if entity @a[nbt={SleepTimer:25s}] run tellraw @a {"text":"Slept 2 hours"}
execute if score #n player_slept matches 2 run execute as @a[nbt={SleepTimer:25s}] at @s run tp @s ~ ~0.01 ~

# No sleep any more
execute if score #n player_slept matches 3.. if entity @a[nbt={SleepTimer:1s}] run tellraw @a {"text":"Cannot sleep any more"}
execute if score #n player_slept matches 3.. run execute as @a[nbt={SleepTimer:1s}] at @s run tp @s ~ ~0.01 ~

# Reset sleep counter
execute if score #t day_time matches 1..12000 run scoreboard players set #n player_slept 0
