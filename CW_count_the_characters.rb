# Description:
#
# The goal of this kata is to write a function that takes two inputs: a string and
# a character. The function will count the number of times that character appears
# in the string. The count is case insensitive.
#
# For example:
#
# count_char("fizzbuzz","z") => 4
# count_char("Fancy fifth fly aloof","f") => 5
# The character can be any alphanumeric character.
#
# Good luck.

# My solution
def count_char(string, char)
  string.downcase.count(char.downcase)
end

# Best practices solution, which is probably a good use of the scan function with
# i telling ruby that the scan is case insensitive, to an array and then just returning
# the size of that array. New for me here is the us of the curly brackets with 
# the variable inside, pretty cool trick.
def count_char(string, char)
  string.scan(/#{char}/i).size
end

# Here are the example tests,
describe 'Sample Tests' do
  def test_count_char(string, char)
    count = 0;
    string.downcase.each_char do |c|
      count += 1 if c == char.downcase
    end
    count
  end
  string = ['fizzbuzz', 'Fancy fifth fly aloof', 'good free orchestral', 'Say hello to my little friend', 'danger zone']
  char = ['z', 'f', 'o', 'l', 'e']
  string.each_with_index do |string, i|
    it "should count number of #{char[i]} in #{string}" do
      Test.assert_equals(count_char(string, char[i]), test_count_char(string, char[i]))
    end
  end
end

describe 'Random Tests' do
  def test_count_char(string, char)
    count = 0
    string.downcase.each_char do |c|
      count += 1 if c == char.downcase
    end
    count
  end

  def randomString(length)
    chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    result = ''
    for i in 0...length
      result += chars[(rand() * (chars.length - 1)).round]
    end
    result
  end

  50.times do
    char = randomString(1)
    string = randomString(rand(100))
    it "should count number of #{char} in #{string}" do
      Test.assert_equals(count_char(string, char), test_count_char(string, char))
    end
  end
end
