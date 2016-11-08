# Description:

# You get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20

# My solution
# If I'm right, .select in this case takes each item of the array that is
# greater that 0 and through the method .inject (.reduce would also be 
# possible) sums each :+.
# I know that 0 in (0, :+) is there to return something when the array
# is empty but I don't know quite how that's working, what about
# an array only with negative numbers? 
def positive_sum(arr)
  arr.select{|x| x > 0}.inject(0, :+)
end