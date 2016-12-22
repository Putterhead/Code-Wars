# Description:
#
# Count the number of exclamation marks and question marks, return the product.
# The string only contains ! and ?.
# Examples
#
# product("") === 0
# product("!") === 0
# product("!!") === 0
# product("!??") === 2
# product("!???") === 3
# product("!!!??") === 6
# product("!!!???") === 9
# product("!???!!") === 9
# product("!????!!!?") === 20

# Here's my solution, which was similar to the best practices solution
def product(s)
  s.count('!') * s.count('?')
end

# Here, though, is another approach using a loop of which I need a lot more
# practice, which is why I wanted to highlight it here. It's a nice example, I
# think, iterating over the array, tallying the '!' and '?' for each character.
# Then returning the product.
def product(s)
  ex = 0
  qu = 0
  s.each_char do |c|
    ex += 1 if c == '!'
    qu += 1 if c == '?'
  end
  ex * qu
end

# Here are the test examples,
def master_product(s)
  s.count("!") * s.count("?")
end

def random_test(s)
  string = rand(10..20).times.map {s.chars.sample }.join
  Test.assert_equals(product(string),master_product(string))
  p string
end


Test.describe("Random test cases") do
  0.upto(20) do
    random_test("!?")
  end
end
