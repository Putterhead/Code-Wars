# Create a function that takes an integer as an argument and returns 
# "Even" for even numbers or "Odd" for odd numbers.

# This was my solution
def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
# I had read that the & operator compares each binary digit of two
# intergers and returns a new integer, with a 1 wherever both 
# numbers had a 1 and a 0 anywhere else. Apparently, the & operator
# is good for checking whether a number is even or odd. For integers
# we can simply check the right most bit (also called the least
# significant bit) to determin if the integer is odd or even. This is
# because when converting to base 10, the rightmost bit represents
# 2 to the power 0 or 1. When the rightmost bit is 1 we know that the
# number is odd. When the rightmost bit is 0 we know the number will
# be even. This is apparently much faster to calculate than when using
# % modulo operator.  
  # number & 1 == 1 ? "Odd" : "Even"
end

# Don't forget .even 
def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end