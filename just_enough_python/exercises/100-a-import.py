# Suppose we want to track runs and don't want 
# to have to type in all the players in advance.
#  
# There's some special code to help do this that we can 
# "import" from Python's standard library.

from collections import Counter

runs = Counter()

# `+= 1` is a quick way to say "add 1 to whatever is there"

runs['Dottie'] += 1
runs['Jo'] += 1
runs['Dottie'] += 1

print(runs)
