# Removing Elements
# Description:

# Take an array and remove every second element out of that array. Always keep the first element and start removing with the next element.

# Example:

# my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]
# None of the arrays will be empty, so you don't have to worry about that!

# My solution which I got from SOF
def remove_every_other(arr)
  arr.values_at(* arr.each_index.select {|i| i.even?})
end

# This was the best practices solution
def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end