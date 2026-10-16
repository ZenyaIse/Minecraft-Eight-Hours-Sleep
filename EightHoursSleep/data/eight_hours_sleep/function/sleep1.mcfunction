
# Wake up before morning
execute if score #t day_time matches ..15999 run function eight_hours_sleep:sleep8h

# Wake up at the morning
execute if score #t day_time matches 16000.. run time set 0
