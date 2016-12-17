# Description:
#
# Positive integers that are divisible exactly by the sum of their digits are called
# Harshad numbers, see Wikipedia for further details.
#
# The first few Harshad numbers are 1,2,3,4,5,6,7,8,9,10,12,18,...
#
# Example: Consider the number n=1729.
#
# The digit sum, s = 1 + 7 + 2 + 9 = 19 and s divides n exactly 91 times.
# We are interested in Harshad numbers where the product of s, and s with the digits
# reversed, gives the original number n. Continuing with the above example...
#
# reversing s gives 91 and
#
# 19 x 91 = 1729 the number n that we started with.
# Write a function numberJoy() which tests if a positive integer n is Harshad and
# returns True if the product of its digit sum, and its digit sum reversed, equals n.
# Otherwise return False.
#
# Take the positive integers to be 1,2,3,4,...

# It took me a while to figure out but got there in the end. After then seeing
# the best practices solutions, I realised I could have also used chars.map instead
# of split('').map.
def number_joy(n)
  digit_sum = n.to_s.split('').map { |e| e.to_i }.inject(:+)
  n/digit_sum == digit_sum.to_s.scan(/./).reverse.join.to_i ? true : false
end

# This is an interesting alternative solution, which sums n then reverses the
# integer using chars.reverse (which looks way better than scan(/./).reverse that
# I use) and with somewhat different logic checks to see if sum * reverseSum are
# equal to n.
def number_joy(n)
    sum = n.to_s.chars.map{ |i| i.to_i }.reduce(:+)
    reverseSum = sum.to_s.chars.reverse.join.to_i
    sum * reverseSum == n ? true : false
end

# This solution seems to nest a new variable (s) inside the block, which I didn't think
# was possible. It's a clever solution if not somewhat difficult to read, but then
# again I don't think any solution for this problem would be!
def number_joy(n)
  n == (s=n.to_s.chars.map(&:to_i).reduce(:+)) * s.to_s.reverse.to_i
end

# Here are the examples used,
def testing(actual, expected, msg)
    Test.assert_equals(actual, expected, msg)
end
Test.describe("number_joy") do
  Test.it("Basic tests") do
    testing(number_joy(1997), false, 'Not a Harshad number')
    testing(number_joy(1998), false, 'Harshad but digit sum=27, and 27x72 does not equal 1998')
    testing(number_joy(1729), true, 'Harshad and digit sum=19, and 19x91 = 1729')
    testing(number_joy(18), false, 'Harshad but digit sum=9, and 9x9 does not equal 18')
    testing(number_joy(1), true, "It was correct")
    testing(number_joy(81), true, "It was correct")
    testing(number_joy(1458), true, "It was correct")
  end
end

$r = Random.new
def number_joy_sol1(n)
    s = n.to_s.chars.map(&:to_i).reduce(:+)
    rs = s.to_s.reverse.to_i
    if ((n % s == 0) && (s * rs == n)) then
        return true
    end
    false
end

def tests()
    p("Random Tests")
    i = 0
    while (i < 20) do
        n = $r.rand(1..1000000)
        testing(number_joy(n), number_joy_sol1(n), "")
        i += 1
    end
end
