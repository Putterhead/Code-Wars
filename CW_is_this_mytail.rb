def correct_tail(body, tail)
	# taking last character of the last index of the array and if its the same as the tail
	# it returns true otherwise false
	# the ? is instead of the if conditional and the : is instead of the else
	# This is called a ternary function
  body[-1] == tail ? true : false
end