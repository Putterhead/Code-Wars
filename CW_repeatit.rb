# Create a function called repeatIt that takes in a string and a number (n).

# The function should return a string that repeats the initial passed in string 
# (n) number of times.

# EXAMPLE:

# If you pass in string "Hi" with a number (2)

# --> "HiHi"

# If anything other than a string is passed in you should return "Not a string"


# This was my solution
def repeat_it(string,n)
  if string.class == String 
    string * n
  elsif string.class != String
    "Not a string" 
  end
end

# This was the best practices solution
# I really like this solution and I get it but I still havent seen it enought to
# start using it myself - how does it work? It does exactly the same as my solution
# but in just one line. With .is_a? I can evaluate whether or not the object is
# a string or not by typing string.is_a?(String), which is the same as 
# string.class == String, with the ? we're asking Ruby if its true, and if its true
# we multiply the string by n times, else (:), it should return "Not a string"
def repeat_it(string,n)
  string.is_a?(String) ? string*n : "Not a string"
end

