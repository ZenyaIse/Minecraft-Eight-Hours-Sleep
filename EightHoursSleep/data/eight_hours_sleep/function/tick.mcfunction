execute store result score #t day_time run time query daytime

# Count sleep times during the night
execute if entity @a[nbt={SleepTimer:1s}] run scoreboard players add #n player_slept 1

# First sleep (8 hours)
execute if score #n player_slept matches 1 if entity @a[nbt={SleepTimer:99s}] run function eight_hours_sleep:sleep1

# Second sleep (1, 2 or 3 hours)
execute if score #n player_slept matches 2 if entity @a[nbt={SleepTimer:25s}] run function eight_hours_sleep:sleep2

# No sleep any more
execute if score #n player_slept matches 3.. if entity @a[nbt={SleepTimer:1s}] run tellraw @a {"text":"Cannot sleep any more"}
execute if score #n player_slept matches 3.. run execute as @a[nbt={SleepTimer:1s}] at @s run tp @s ~ ~0.01 ~

# Reset sleep counter
execute if score #t day_time matches 1..12000 run scoreboard players set #n player_slept 0
