# Description:
#
# Create a function that returns the average of an array of numbers ("scores"),
# rounded to the nearest whole number. You are not allowed to use any loops
# (including for, for/in, while, and do/while loops).

# This was my solution. As soon as I completed the kata I noticed that the other
# solutions didnt use & (AND operator) with the Symbo#to_proc conversion (:+).
# I spent a bit of time trying to figure out why but couldn't find a definitive
# explanation on when to apply the AND operator, I suspect only when iterating
# with map.
def average(array)
  (array.inject(&:+)/array.size.to_f).round
end

# This was the best practices solution, I'd never seen the fdiv method before, which
# according to SO returns the floating point result of the division. And this makes
# sense to use it particularly in this case - fdiv(numeric) -> float 
def average(array)
  array.inject(:+).fdiv(array.length).round
end

# Here are the test examples
Test.describe("Basic tests") do
Test.assert_equals(average([5, 78, 52, 900, 1]), 207)
Test.assert_equals(average([5, 25, 50, 75]), 39)
Test.assert_equals(average([2]), 2)
Test.assert_equals(average([1, 1, 1, 1, 9999]), 2001)
Test.assert_equals(average([0]), 0)
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(arr) (arr.inject(:+)/arr.length.to_f).round end

40.times do
  arr=(0..randint(1,10**randint(1,2))).map{randint(1,10**randint(1,3))}
  Test.it("Testing for #{arr}") do
  Test.assert_equals(average(arr), sol(arr), "It should work for random inputs too")
  end
end
end
