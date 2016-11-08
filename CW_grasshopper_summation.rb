# Summation

# Write a program that finds the summation of every number between 1 and num. The number 
# will always be a positive integer greater than 0.

# For example:

# summation(2) -> 3
# 1 + 2

# summation(8) -> 36
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

def summation(num)
# So you can't use inject on an argument that isn't an array, so I had to first do as the 
# instructions asked, that is create a range from 1 to num then turn that to an array upon
# which we can call inject (which is an aliase for 'reduce', which is like 'build on' or 
# reducing the array to one thing) on.
# summing the items of the array together
  (1..num).to_a.inject(:+)
  #num.size == 1 ? num : num.inject(:+)#each { |a| sum+=a}#
  #end
end