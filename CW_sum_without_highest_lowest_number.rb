# Description:
#
# Sum all the numbers of the array (in F# and Haskell you get a list) except the
# highest and the lowest element (the value, not the index!).
# (The highest/lowest element is respectively only one element at each edge, even
# if there are more than one with the same value!)
#
# Example:
#
# { 6, 2, 1, 8, 10 } => 16
# { 1, 1, 11, 2, 3 } => 6

# Here is my solution, I was really glad to get this down to one line Although
# its not pretty to read. Looking back, I should have removed the first conditional
# and stuck it on the end as an else condition, as in : 0.
def sum_array(arr)
  arr == nil ? 0 : arr.size <= 2 ? 0 : arr2 = arr.sort.slice!(1..-2).inject(:+)
end

# Here is another way of doing it, just summing the arr and then subtracting arr.min
# and arr.max.
def sum_array(arr)
  if arr.kind_of?(Array) and arr.length > 2
    arr.inject(:+) - arr.min - arr.max
  else
    0
  end
end

# Looking at this solution, I realised that maybe I didnt need slice if I'd used
# sort[1...-1]. Oh well.
def sum_array(arr)
  arr ? (arr.size > 2 ? arr.sort[1...-1].inject(:+) : 0) : 0
end

# This is also a nice solution, similar to the first one under my solution above
# just more effient.
def sum_array(arr)
  return 0 if arr == nil
  arr.length < 3 ? 0 : arr.sort!.inject(0, :+) - arr[0] - arr[-1]
end
