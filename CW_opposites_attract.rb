# Timmy & Sarah think they are in love, but around where they live, they will only 
# know once they pick a flower each. If one of the flowers has an even number of 
# petals and the other has an odd number of petals it means they are in love.

# Write a function that will take the number of petals of each flower and return 
# true if they are in love and false if they aren't.

# I'm sure this isn't the prettiest solution but it seemed logical to me
# I'm sure there is a much more efficient version
def lovefunc( flower1, flower2 )
  if flower1.odd? && flower2.even?
     true
  elsif flower1.even? && flower2.odd?
     true
  else
    false
  end
end

# This was the best practices solution
def lovefunc( flower1, flower2 )
  (flower1 + flower2).odd?
end

	
	


# I liked this one as its sort of similar to my solution
def lovefunc ( flower1, flower2)
  flower1.even? != flower2.even?
end