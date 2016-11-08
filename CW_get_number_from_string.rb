# Write a function which removes from string all non-digit characters and parse the remaining 
# to number. E.g: "hell5o wor6ld" -> 56

# I got my solution from SOF and I'm not so happy with it although it passed fine. To map
# the string to and array and to convert it then to an integer, then join it again as a string,
# which is then converted back to an integer is not very efficient
def get_number_from_string(s)
  s.scan(/\d/).map(&:to_i).join.to_i
end

# This is the best practices solution, which using a regex ("^[0-9])seems to delete all string charachters except for
# numbers 0-9 and then converts it to an int, which is far more efficient than my solution
def get_number_from_string(s)
 s.delete("^[0-9]").to_i
end