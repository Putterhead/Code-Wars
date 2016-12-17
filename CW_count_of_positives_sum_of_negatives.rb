# Description:
#
# Given an array of integers.
#
# Return an array, where the first element is the count of positives numbers and the second
# element is sum of negative numbers.
#
# If the input array is empty or null, return an empty array

# Here is my solution
def count_positives_sum_negatives(lst)
  count_positive = lst.select { |i| i >= 1 }.size.to_s.scan(/\d+/).map(&:to_i)
  count_negative = lst.select { |i| i <= 0 }.inject(:+)
  count_negative == nil ? count_positive << 0 : count_positive << count_negative
end

# This solution was interesting for me as it seems to 'create' an array by carrying
# out the code within square brackets, which is totally new for me. It also seems
# to create to variables in one go by partitioning the two sets of values, pretty cool.
# I tried this out in irb and found that whatever is true is allocated to the first
# named variable.
# I also tried out the block-inside-the-array technique in irb out and it really
# works! Two amazing tricks by c0nspiracy, think I'll follow him :)
def count_positives_sum_negatives(lst)
  positives, negatives = lst.partition(&:positive?)
  [positives.count, negatives.inject(0, :+)]
end

# Here are the tests,
Test.describe("Basic tests") do
Test.assert_equals(count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]),[10,-65])
Test.assert_equals(count_positives_sum_negatives([0, 2, 3, 0, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14]),[8,-50])
Test.assert_equals(count_positives_sum_negatives([1]),[1,0])
Test.assert_equals(count_positives_sum_negatives([-1]),[0,-1])
Test.assert_equals(count_positives_sum_negatives([0,0,0,0,0,0,0,0,0]),[0,0])
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(arr) arr.reduce([0,0]){|a,b| [b>0 ? a[0]+1 : a[0],b<0 ? a[1]+b : a[1]]} end

40.times do
  arr=(0..randint(1,100)).map{randint(-100,100)}
  Test.it("Testing for #{arr}") do
  Test.assert_equals(count_positives_sum_negatives([] + arr),sol([] + arr),"It should work for random inputs too")
  end
end
end
