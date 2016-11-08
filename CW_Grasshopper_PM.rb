# Personalized greeting

# Create a function that gives a personalized greeting. This function takes two 
# parameters: name and owner.

# Use conditionals to return the proper message:

# case	return
# name equals owner	'Hello boss'
# otherwise	'Hello guest'

# This was my first attempt
def greet(name,owner) 
  name = owner
  if name == "Daniel"
  	# first I had puts, instead of return, and that gave me an error where the log 
  	# returned 'Hello boss' saying "Expected: 'Hello boss', instead got: Nil"
  	# after I changed it return, it worked fine. Wondering why?
    return "Hello boss"
  else
    return "Hello guest"
  end
end

# Then I couldn't figure out why it was still failing (it was only passing about half 
# the tests). Eventually I figured out that it had nothing to do with the string "Daniel"
# but the arguments name and owner had to be the same for it to pass all the tests!
def greet(name,owner) 
  if owner == name
    return "Hello boss"
  else
    return "Hello guest"
  end
end

# This was the best pratices solution:
def greet(name,owner) 
	# I thinkg this is saying, if name == owner is true then return 'Hello boss' else
	# 'Hello guest'
  name == owner ? 'Hello boss' : 'Hello guest'
end
# These were the example tests:
describe "Basic test" do
  Test.assert_equals(greet("Daniel","Daniel"), "Hello boss")
  Test.assert_equals(greet("Daniel","Jonh"), "Hello guest")
end