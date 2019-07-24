# Suppose we want to track runs and don't want 
# to have to type in all the players in advance.
#  
# There's some special code to help do this that we can 
# "import" from Python's standard library.

from random import randint

class Player:
    "This `class` of objects 

    def __init__(self, name):
    """The `constructor runs when we create a new `instance`.
    
    I'ts a `method` - a function attached to an object."""

        # These are "attributes" of our "instance"
        self.name = name
        self.jersey = randint(1, 99)

jane = Player('Jane')
print(jane.name)
print(jane.jersey)
margie = Player('Margie')
print(margie.name)
print(margie.jersey)
