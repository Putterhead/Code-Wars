# Description:
#
# Given a string of numbers, you should replace any number below 5 with '0' and any
# number 5 and above with '1'. Return the resulting string.

# I paired on this with a colleague and our plan was to first split up the string
# to then iterate over an array of strings, converting each to an integer and
# then evaluating those <> than 5 to 0's and 1's. Finally, joining them to
# return a single number.

# This was our solution
def fake_bin(s)
  arr = []
  s = s.split("").map { |digit| digit.to_i }
  s.each do |i| i < 5 ? arr << '0' : arr << '1'
  end
   arr.join
end

# These are the test examples
describe "Basic test" do
  it "should test for something" do
    Test.assert_equals(fake_bin('45385593107843568'), '01011110001100111');
    Test.assert_equals(fake_bin('509321967506747'), '101000111101101');
    Test.assert_equals(fake_bin('366058562030849490134388085'), '011011110000101010000011011');
  end
end

# This was the best practices solution
# I found it curious that gsub is able to recognise inidividual numbers within
# a single string, which it clearly does!
def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end

# This was also a clever solution
# chars is a string method, returning an array of characters in str and is, I
# later read, shorthand for str.each_char.to_a. 
def fake_bin(s)
  s.chars.map{|char| char.to_i < 5 ? '0' : '1'}.join
end
