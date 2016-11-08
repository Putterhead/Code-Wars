# Description:

# Define a method hello that returns "Hello, Name!" to a given name, or says Hello, World! 
# if name is not given (or passed as an empty String).

# Assuming that name is a String and it checks for user typos to return a name with a first 
# capital letter (Xxxx).

# Examples:

# hello "john"   => "Hello, John!"
# hello "aliCE"  => "Hello, Alice!"
# hello          => "Hello, World!" # name not given
# hello ''       => "Hello, World!" # name is an empty String

# My solution
# Ed changed the default value of name to false when he had a look at it last night. 
# It did work without it although it returned the error Wrong number of arguments 
# (given 0, expected 1) - What Ruby was trying to say was that in the test where no value 
# was given, it failed. This is the reason why you have to assign the variable name a 
# default value (in this case false) for it to work. I also noticed that when I dont 
# include the part && name.length > 0 it doenst pass the empty string test (see examples 
# above)
def hello(name = false)
  if name.class == String && name.length > 0
    "Hello, #{name.capitalize}!"  
  else name = false 
    "Hello, World!"
  end
end

# This was the best practices solution where the variable name has been assigned the
# default value 'World', so when no value is assigned to name it returns with the default
# value 'Hello, World!', which is more clever than mine. 
# I also saw solutions with name = '' which works just as well with
  "Hello, #{name == '' ? World : name.capitalize}!"
# instead of the if/else conditional
# Another string interpolation includes a conditional which checks if variable 'name' is empty 
# and, if it is, gives the default value 'World' else (:) gives the entered name with 
# capitalize called on it 
def hello(name='World')
  "Hello, #{name.empty? ? 'World' : name.capitalize}!"
end

