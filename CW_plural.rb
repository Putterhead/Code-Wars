# Description:

# We need a simple function that determines if a plural is needed or not. 
# It should take a number, and return true if a plural should be used 
# with that number or false if not. This would be useful when printing 
# out a string such as 5 minutes, 14 apples, or 1 sun.

# You only need to worry about english grammar rules for this kata, 
# where anything that isn't singular (one of something), it is plural 
# (not one of something).
# All values will be positive integers or floats, or zero.

# This was my solution - I was pretty happy just to use one line
def plural(n)
  n == 0 || n < 1 || n > 1 ? true : false
end

# This was the best practices solution, which I states if n is not
# equal to 1, return true, else, return false, which makes sense
# So if n < 0 ("point five cats", "zero cats", "ten cats") its spoken
# as a plural sentance, else, false ("one cat" spoken in singular).
def plural(n)
  n != 1
end

# Here is a similar solution
def plural(n)
  return false if n == 1
  true
end