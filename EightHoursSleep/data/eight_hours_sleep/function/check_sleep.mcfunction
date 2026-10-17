
execute if score #n sleep_counter matches 67 unless entity @a[nbt={SleepTimer:0s}] run tellraw @a {"text":"Slept 8 hours"}

execute if score #n sleep_counter matches 68.. unless entity @a[nbt={SleepTimer:0s}] run tellraw @a {"text":"Cannot sleep more than 8 hours"}

# Wake up
execute if score #n sleep_counter matches 67.. unless entity @a[nbt={SleepTimer:0s}] run execute as @a at @s run tp @s ~ ~0.01 ~
