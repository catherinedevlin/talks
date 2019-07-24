# I wasn't able to find players' numbers; 
# I made these up.

uniforms = {'Thelma': '4', 'Twi': '21', 'Dottie': '9'}

# This doesn't do what we expect.  Why?
sum = uniforms['Thelma'] + uniforms['Twi']
print(sum)

# Let's call a function.
sum = int(uniforms['Thelma']) + (uniforms['Twi'])
print(sum)
