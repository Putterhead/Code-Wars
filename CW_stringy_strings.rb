#Description:

# write me a function stringy that takes a size and returns a string of alternating '1s' 
# and '0s'.

# the string should start with a 1.

# a string with size 6 should return :'101010'.

# with size 4 should return : '1010'.

# with size 12 should return : '101010101010'.

# The size will always be positive and will only use whole numbers.
def stringy(size)
 # if i is even then output 1 otherwise output 0
 # size = 5
 [nil, nil, nil, nil, nil]
 [0, 1, 2, 3, 4, 5]
 [1, 0, 1, 0, 1, 0]
 '10101'
 .map.with_inde Array.new(size)x {|_e,i| i.even? ? 1 : 0}.join
  # Your code here
end

def stringy(size)
  "10" * (size / 2) + "1" * (size % 2)
end

def stringy(size)

end

