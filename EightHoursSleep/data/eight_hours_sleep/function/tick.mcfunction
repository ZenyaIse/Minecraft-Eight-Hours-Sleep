execute store result score #t day_time run time query minecraft:day

# Add 1 every 120 ticks
execute unless entity @a[nbt={SleepTimer:0s}] run scoreboard players add #n sleep_counter 1

# If a villager is nearby, sleep as usual.
execute as @a at @s unless entity @e[type=villager,distance=..32] run function eight_hours_sleep:check_sleep

# Reset sleep counter in a villager is nearby
execute as @a at @s if entity @e[type=villager,distance=..32] run scoreboard players set #n sleep_counter 0

# Reset sleep counter if daytime
execute if score #t day_time matches 1..12000 run scoreboard players set #n sleep_counter 0
