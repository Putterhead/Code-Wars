# Description:
#
# Vampire Numbers
#
# Our loose definition of Vampire Numbers can be described as follows:
#
# 6 * 21 = 126
# # 6 and 21 would be valid 'fangs' for a vampire number as the
# # digits 6, 1, and 2 are present in both the product and multiplicands
#
# 10 * 11 = 110
# # 110 is not a vampire number since there are three 1's in the
# # multiplicands, but only two 1's in the product
# Create a function that can receive two 'fangs' and determine if the product of
# the two is a valid vampire number.

# Here's my solution, wow this was also an old uncompleted kata I tried about a
# month ago. I found it somewhat easier but it took me all afternoon, nevertheless.
# I was able to get it to pass the initial examples pretty quickly but the final
# examples are a bit tricker (negative numbers, etc.) and changing the state of the
# integers back and forth made me dizzy.
def vampire_test(a,b)
  numbers = []
  if a <= 0 && b <= 0
    false
  else
  digits = numbers.push(a,b)
  x = digits.join.split('').map(&:to_i)
  y = (a * b).to_s.split('').map(&:to_i)
  (x - y).empty? && y.size == x.size ? true : false
  end
end
# I didnt think of comparing strings, which would have reduced my dizzyness but
# the following examples just left the characters as strings and then compared them.

# Here is a sample of the best case solutions,
# These next two make use of chars.sort, which (once the variables have between
# convertert to a string) splits the characters and puts them in an array as a string.
# Then these values are check against the product of a * b, which is likewise converted
# to individual characters in an array. If they're the same? true : false. pretty cool.
def vampire_test(a,b)
  (a.to_s + b.to_s).chars.sort == (a * b).to_s.chars.sort
end

# This one similar, just puts the veriables streight in as strings instead and would
# have really helped with the negative numbers.
def vampire_test(a,b)
  "#{a}#{b}".chars.sort.join == (a*b).to_s.chars.sort.join
end

# This solution
def vampire_test(a,b)
  (a * b).to_s.split('').sort == a.to_s.split('').concat(b.to_s.split('')).sort
end

# Here are the test cases
Test.describe("Testing For Vampire Numbers") do
  Test.it("should work for some static tests") do
    Test.assert_equals(vampire_test(21,6), true, "Basic: 21 * 6 = 126 should return true")
    Test.assert_equals(vampire_test(204,615), true, "Basic: 204 * 615 = 125460 should return true")
    Test.assert_equals(vampire_test(30,-51), true, "One Negative: 30 * -51 = -1530 should return true")
    Test.assert_equals(vampire_test(-246,-510), false, "Double Negatives: -246 * -510 = 125460 should return false (The negative signs aren't present on the product)")
    Test.assert_equals(vampire_test(2947050,8469153), true, "Large: 2947050 * 8469153 = 24959017348650 should return true")
    Test.assert_equals(vampire_test(2947051,8469153), false, "Large: 2947051 * 8469153 = 24959025817803 should return false")
    Test.assert_equals(vampire_test(25198740,41570622), true, "Large: 25198740 * 41570622 = 1047527295416280 should return true")
    Test.assert_equals(vampire_test(0,0), false, "Zeros: 0 * 0 = 0 should return false")
    Test.assert_equals(vampire_test(11,11), false, "Elevens: 11 * 11 = 121 should return false")
    Test.assert_equals(vampire_test(10,1), false, "Identity: 10 * 1 = 10 should return false")
    Test.assert_equals(vampire_test(10,11), false, "Missing 1: 10 * 11 = 110 should return false")
    Test.assert_equals(vampire_test(21,6000), true, "Trailing Zeroes: 21 * 6000 = 126000 should return true")
    Test.assert_equals(vampire_test(210,600), true, "Trailing Zeroes: 210 * 600 = 126000 should return true")
  end
end
