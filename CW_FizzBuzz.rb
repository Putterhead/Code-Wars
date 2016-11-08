# return an array
# again, after the def 'fizzbuzz' is just the name of the method - only if you call 
# the method later do you need to use this.
# In the brackets is the argument or parameter this just signifies that an argument or
# parameter can be put in later when the method is called (see above).
def fizzbuzz(n)
 array = []
 # In evaluating each number, |num| acts as a placeholder for each of the 
 # numbers within the defined range, i.e. (1..n) says in a range from 1 to n.
 (1..n).each do |x| 
 # once evaluted it checks if its divisible by 3
   if x % 15 == 0
    # if it is, it << pushes "FizzBuzz" into the array
     array << "FizzBuzz"
   elsif x % 3 == 0
     array << "Fizz"
   elsif x % 5 == 0
     array << "Buzz"
   else
     array << x
   end
 end
  return array
 
end

# Here's the best practice solution
def fizzbuzz(n)
  (1..n).map { |x| 
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  }
end

# Here's another version of the solution
def fizzbuzz(n)
  (1..n).map { |x| x%15==0 ? "FizzBuzz" : x%5==0 ? "Buzz" : x%3==0 ? "Fizz" : x }
end