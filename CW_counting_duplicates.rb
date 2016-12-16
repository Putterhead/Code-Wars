# Description:
#
# Count the number of Duplicates
#
# Write a function that will return the count of distinct case-insensitive
# alphabetic characters and numeric digits that occur more than once in
# the input string. The input string can be assumed to contain only
# alphanumeric characters, including digits, uppercase and lowercase alphabets.
#
# Example
#
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabbcdeB" -> 2 # 'a' and 'b'
# "indivisibility" -> 1 # 'i'
# "Indivisibilities" -> 2 # 'i' and 's'
# "aa11" -> 2 # 'a' and '1'


# This was my solution. In all honesty, I was just trying to get a working
# solution so that I could see the best practices solutions. I knew my
# solution was very messy (creating a hash, downcase! and d2 as a variable name!)
# I also thought it might be necessary to include digits (description says including digits)
def duplicate_count(text)
 duplicates = text.downcase.scan(/[a-z0-9]/)
 d2 = Hash.new(0)
 duplicates.each { |i| d2.store(i, d2[i] + 1) }
 d2.select { |k,v| v > 1 }.count
end

# Here is the best practices solution that I liked. Its structure is a little
# weird for me - the variable inside the block - I know that its fine but somehow
# just not so easy to read.
def duplicate_count(text)
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

# This solution is a little easier to read though perhaps not as efficient
def duplicate_count(text)
  arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end
