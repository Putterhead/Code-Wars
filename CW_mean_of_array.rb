# Get the mean of an array
# It's the academic year's end, fateful moment of your school report. The averages must be 
# calculated. All the students come to you and entreat you to calculate their average for them. 
# Easy ! You just need to write a script.

# Return the average of the given array rounded downward to its nearest integer.

# The array will never be empty.

# First I tried the following,
# def get_average(marks)
#   marks.inject (:+) / marks.length
# end
# of course this didnt work, but I still dont know why. Ruby returns the sum of the array
# fine but Ruby returns the error saying '/' is an undefined method  

# This was my solution, which I got from SOF, I just added .round, which rounded it down to 
# What I think this does is the same as my solution. According to RubyDocs
# .inject combines all elements of 'enum' by applying a binary operation, specified by a 
# block or a symbol that names a method or operator.
# So by specifying a block, for each element in 'enum' the block is passed an accumulator 
# value (memo) and the element. In this case 
# variabl.inject{ |memo, obj| block } obj 
def get_average(marks)
  marks.inject{ |sum, el| sum + el}.round / marks.size
  # marks.inject(:+, 10).round / marks.size
end





