# Summation

# Write a program that finds the summation of every number between 1 and num. 
# The number will always be a positive integer greater than 0.
# For example:
# summation(2) -> 3
# 1 + 2

# summation(8) -> 36
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

# My solution
# Regardless of whether I try with .each or .inject(:+), I get the same error
# NoMethodError: Undefined method 'each' or 'inject' for 1:Fixnum depending on whichever I use
def summation(num)
  num.size == 1 ? num : num.inject(:+) #.each { |a| sum+=a}
end

# 
def summation(num)
  if num == 1
  num
  else
  # When I define an array with the variable num in irb and call .inject on it
  # like here, it works fine and returns the sum of the items
  num.inject(:+)
  #num.size == 1 ? num : num.inject(:+)#each { |a| sum+=a}#
  end
end