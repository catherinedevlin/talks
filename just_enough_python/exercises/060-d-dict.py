# There's a bug here.  Can you fix it?

roster = {'catcher': 'Tiby', 
        'pitcher': 'Swish',
        'left field': 'Tommy',
        'first base': 'Jenks',
        }

# We can loop over a dictionary's keys, 
# and use a variable to look up items in it!
# For instance:

for position in roster:
    print("Today's ", position, " is ", roster)
