# Finish the roster dictionary by assigning positions to 
# the players.

roster = {
    : 'Dorothy', 
    : 'Jospehine',
    : 'Betty',
    : 'Frisco',
        }

# We can loop over a dictionary's keys, 
# and use a variable to look up items in it!
# For instance:

for position in roster:
    print("Today's ", position, " is ", roster[position])
