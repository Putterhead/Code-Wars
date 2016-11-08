# You take your son to the forest to see the monkeys. You know that there are a certain 
# number there (n), but your son is too young to just appreciate the full number, 
# he has to start counting them from 1.

# As a good parent, you will sit and count with him. Given the number (n), populate 
# an array with all numbers up to and including that number, but excluding zero.

# For example, if n = 10:

# return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# This is a good way to create an array from an integer value I found on SOF
# Instead of entering a value for n in the block, I just left it as n and it worked
# In this case, though, I dont think you need to explicitly creat an array
def monkey_count(n)
  Array.new(n) {|x| x + 1 }#your code here
end

# Question, Question, Question!!!
# This was the best practice solution
def monkey_count(n)
  [*1..n]
end

def monkey_count(n)
  (1..n).to_a
end

def method(arg)
end

array = [1,2,3]

method(*array)
method(1,2,3)