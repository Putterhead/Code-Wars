# Description:
#
# You will be given an array of strings which will include both integers and
# characters.
#
# Return an array of length 2 with a[0] representing the mean of the integers to
# a single decimal place. There will always be 10 integers and 10 characters.
# Create a single string with the characters and return it as a[1] while maintaining
# the original order.
#
# lst = ['u', '6', 'd', '1', 'i', 'w', '6', 's', 't', '4', 'a', '6', 'g', '1', '2',
#   'w', '8', 'o', '2', '0']
# Here is an example of your return
#
# [3.6, 'udiwstagwo']


# Here is my solution, which I realised afterwards (even after spending a few
# minutes refactoring), that I could have done without the empty array. During
# refactoring, I did notice for the first time the affect refactoring has on the
# time, got it down from over 450ms to under 230ms.
def mean(lst)
  string = []
  string << lst.map { |x| x[/[a-z]/] }.compact.join
  calc = lst.map { |x| x[/\d+/] }.compact
  mean = calc.collect!(&:to_f).inject(&:+) / calc.compact.size
  both = (string << mean).reverse
end

# For what its worth this is the best practices solution, which is a tad assumptious
# using 10 (i.e. there could have been other test examples with a size larger than 10)
def mean(lst)
  [lst.map(&:to_f).reduce(:+)/10,lst.grep(/[^\d]/).join]
end

# Here are the test examples
Test.describe("Basic tests") do
lst1 = ['u', '6', 'd', '1', 'i', 'w', '6', 's', 't', '4', 'a', '6', 'g', '1', '2', 'w', '8', 'o', '2', '0']
Test.assert_equals(mean(lst1), [3.6, 'udiwstagwo'])
lst2 = ['0', 'c', '7', 'x', '6', '2', '3', '5', 'w', '7', '0', 'y', 'v', 'u', 'h', 'i', 'n', 'u', '0', '0']
Test.assert_equals(mean(lst2), [3.0, 'cxwyvuhinu'])
lst3 = ['0', 'u', 'a', 'y', '0', 'a', '9', 'q', '3', 'v', 'g', '7', '6', '4', 'y', 'd', '8', '6', '0', 'd']
Test.assert_equals(mean(lst3), [4.3, 'uayaqvgydd'])
lst4 = ['s', 'n', '9', 'l', '0', 'm', 'i', 'z', '9', '7', 'y', '4', 'z', '3', '3', 'k', '4', '1', '0', 'k']
Test.assert_equals(mean(lst4), [4.0, 'snlmizyzkk'])
lst5 = ['5', 'v', 'u', 'k', '8', '4', '9', 'b', '9', 'g', '5', 'z', '3', 'f', '6', 'u', 'i', '6', '6', 't']
Test.assert_equals(mean(lst5), [6.1, 'vukbgzfuit'])
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(lst) [lst.select{|l| "0123456789".index(l)!=nil}.reduce(0){|a,b| a+b.to_i}/10.0,lst.select{|l| "0123456789".index(l)==nil}.join] end
nums="0123456789"
lets="abcdefghijklmnopqrstuvwxyz"

40.times do
  lst=((1..10).map{nums[randint(0,nums.length-1)]}+(1..10).map{lets[randint(0,lets.length-1)]}).shuffle
  Test.it("Testing for #{lst.inspect}") do
  Test.assert_equals(mean(lst),sol(lst),"It should work for random inputs too")
  end
end
end
