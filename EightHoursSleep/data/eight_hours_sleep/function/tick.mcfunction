execute store result score #t day_time run time query minecraft:day

# Add 1 every 120 ticks
execute unless entity @a[nbt={SleepTimer:0s}] run scoreboard players add #n sleep_counter 1

# Wake up
execute if score #n sleep_counter matches 67 unless entity @a[nbt={SleepTimer:0s}] run tellraw @a {"text":"Slept 8 hours"}
execute if score #n sleep_counter matches 68.. unless entity @a[nbt={SleepTimer:0s}] run tellraw @a {"text":"Cannot sleep more than 8 hours"}
#execute if score #n sleep_counter matches 67.. unless entity @a[nbt={SleepTimer:0s}] run execute as @a[nbt=!{SleepTimer:1s}] at @s run tp @s ~ ~0.01 ~
execute unless entity @a[nbt={SleepTimer:0s}] run execute as @a[scores={sleep_counter=67..}] at @s run tp @s ~ ~0.01 ~
#execute as @a[scores={sleepTimer=1..}] at @s run tp @s ~ ~0.01 ~

# Reset sleep counter
execute if score #t day_time matches 1..12000 run scoreboard players set #n sleep_counter 0
