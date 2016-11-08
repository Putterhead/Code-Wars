# Write a function that merges two sorted arrays into a single 
# one. The arrays only contain integers. Also, the final outcome must not have any duplicate.

# .zip will merge two arrays by interleaving the elements
# .flatten returns one array
# .compact 'returns a copy of self with all nil elements removed.' 
# I dont think that compact is necessary here, it runs without it
# so [1, 3, 5] and [2, 3] will return [1, 2, 3, 4, 5] 
# .uniq removes the duplicate numbers and
# .sort puts them in order with a bang (for good)
def merge_arrays(a, b)
  a.zip(b).flatten.uniq.sort!
end

def merge_arrays(a, b)
  a.zip(b).flatten.compact
end