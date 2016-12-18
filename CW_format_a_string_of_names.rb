# Description:
#
# Given: an array containing hashes of names
#
# Return: a string formatted as a list of names separated by commas except for the
# last two names, which should be separated by an ampersand.
#
# Example:
#
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'
#
# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'
#
# list([ {name: 'Bart'} ])
# # returns 'Bart'
#
# list([])
# # returns ''
# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

# I tried this kata about a month ago and set it aside because I was just miles
# off. Since then I've improved my approach to breaking down problems and solving
# them one small problem at a time.
# I came back to this last night and had it done pretty quickly, which was mega
# satisfying.
# Here is my solution,
def list names
  n = names.map{ |x| x[:name]}
  if n.size > 2
    n[0..-2].join(', ') + " & " + n[-1]
  elsif n.size == 2
    n.join(' & ')
  else
    n.join
  end
end

# Of the best practices solutions, most did not evaluate the string size like I did
# Here is the best practices solution using slice to capture the last two elements
# and then later push these as one string back into the array the the '&' in there.
# Though, how Ruby knows how to distinguish between the three different cases,
# I'm not sure. The Turnery Operator seems to do this. I tried it out in irb and
# it seems to work just fine without the compact method except when name: is = 1 (Bart)
# I looked around to try to find a good explanation of compact but so far nothing
# that makes it clear to me.
def list names
 array = names.map{|i| i[:name]}
 last2 = array.slice!(-2..-1)
 (array.push last2 ? last2.join(" & ") : last2).compact.join(", ")
end

# This is an efficient solution which is not too hard to read, I think.
def list names
  names.map { |h| h[:name] }.join(", ").reverse.sub(/,/, "& ").reverse
end
# I thought about using sub/gsub but my ability with regexps is still pretty limited.
# Though, writing this and trying it out in irb, I now see how clever it is. By
# reversing the string, the first instance of the ,(comma) can be accessed and
# substituted with &.

# Here are the test cases,
Test.describe("Basic tests") do
Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]), 'Bart, Lisa, Maggie, Homer & Marge',
"Must work with many names")
Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'}]), 'Bart, Lisa & Maggie',
"Must work with many names")
Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'}]), 'Bart & Lisa',
"Must work with two names")
Test.assert_equals(list([{name: 'Bart'}]), 'Bart', "Wrong output for a single name")
Test.assert_equals(list([]), '', "Must work with no names")
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def solist(names) names.map { |n| n[:name] }.join(', ').sub(/,(?!.*,)/, ' &') end
base=[{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'},{name: 'Moe'},{name: 'Barney'},{name: 'Maude'},{name: 'Ned'},{name: 'Seymour'}]
40.times do
    base=base.shuffle
    testmat=base[0,randint(0,9)]
    solution=solist(testmat)
    Test.it("Testing for "+(solution!="" ? solution : "None")) do
    Test.assert_equals(list(testmat),solution,"It should work for random tests too")
    end
end
end
