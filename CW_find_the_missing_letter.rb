# Description:
#
# Find the missing letter
#
# Write a method that takes an array of consecutive (increasing) letters as input
# and that returns the missing letter in the array.
#
# You will always get an valid array. And it will be always exactly one letter be
# missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.
#
# Example:
#
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P

# Here's my solution, which I think looks awful, especially when I call the variable
# last and then on same line use the last method, pff. I now see how it would have
# been better to use the first method instead of arr[0], which now looks clumsy.
def find_missing_letter(arr)
  first = arr[0]
  last = arr.last
  series = (first..last).to_a
  (series - arr).join
end

# Here is the best practices solution that I liked the best. I didn't think it
# would be possible to call arr.first and arr.last within parens.
def find_missing_letter(arr)
  letters = (arr.first..arr.last).to_a
  return (letters - arr).first
end

# Here are the test examples
Test.describe("Basic tests") do
Test.assert_equals(find_missing_letter(["a","b","c","d","f"]), "e")
Test.assert_equals(find_missing_letter(["O","Q","R","S"]), "P")
Test.assert_equals(find_missing_letter(["b","d"]), "c")
Test.assert_equals(find_missing_letter(["a","b","d"]), "c")
Test.assert_equals(find_missing_letter(["b","d","e"]), "c")
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(arr) (arr[0]..arr[arr.size-1]).select{|a| !arr.index(a)}[0] end

40.times do
  sa,sb=[[65,90],[97,122]][randint(0,1)]
  s=randint(sa,sb-5)
  e=randint(s+2,sb)
  arr=(s.chr..e.chr).to_a
  arr.delete_at(randint(1,arr.size-2))
  Test.it("Testing for #{arr.inspect}") do
  Test.assert_equals(find_missing_letter([]+arr), sol(arr), "It should work for random inputs too")
  end
end
end
