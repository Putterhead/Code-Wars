# The objective of 'Duck, duck, goose' is to walk in a circle, tapping on each
# player's head until one is finally chosen.
#
# Task: Given an array of Player objects (an array of associative arrays in PHP)
# and an index (1-based), return the name of the chosen Player.
#
# Example:
#
# duck_duck_goose([a, b, c, d], 1) should return a.name
# duck_duck_goose([a, b, c, d], 5) should return a.name
# duck_duck_goose([a, b, c, d], 4) should return d.name

# I found this quit difficult for a 8 kyu kata, especially just understanding the
# requirements to solve it was not so simple. Figuring out that you have to use
# the name method to return the correct solution took me ages!

# Here is my solution, which could probably do with some refactoring
def duck_duck_goose(players, goose)
 if goose > 10
    index = goose % players.size
    players.at(index -1).name
  else
    players.at(goose -1).name
  end
end

# This is the best practices solution I like the most
# I checked out the cycle method, which calls the block for each element of
# enum repeatedly n times or forever if none or nil is given.
# cycle saves elements in an internal array so changes to enum after the first
# pass has no effect. If no block is given, an enumerator is returned insted.
# So cycle is perfect for this problem but is one part of it. Then there is take,
# which returns the first n elements from the array, in this case, goose.
# Then last is being called which returns the last element of self and the famous
# name method is then being called giving us our solution!
def duck_duck_goose(players, goose)
  players.cycle.take(goose).last.name
end

# Here are the examples of this p
describe "fixed tests" do
  it "should find the correct goose" do
    Test.assert_equals(duck_duck_goose(players, 1),  "a")
    Test.assert_equals(duck_duck_goose(players, 3),  "c")
    Test.assert_equals(duck_duck_goose(players, 10), "z")
    Test.assert_equals(duck_duck_goose(players, 20), "z")
    Test.assert_equals(duck_duck_goose(players, 30), "z")
    Test.assert_equals(duck_duck_goose(players, 18), "g")
    Test.assert_equals(duck_duck_goose(players, 28), "g")
    Test.assert_equals(duck_duck_goose(players, 12), "b")
    Test.assert_equals(duck_duck_goose(players, 2),  "b")
    Test.assert_equals(duck_duck_goose(players, 7),  "f")
  end
end
