# Description:
#
# Bob is a lazy man.
#
# He needs you to create a method that can determine how many letters and digits
# are in a given string.
#
# example:
#
# "hel2!lo" --> 6
#
# "wicked .. !" --> 6
#
# "!?..A" --> 1

# This took me a while as my understanding of regexps is still pretty poor.
# Once I saw the problem I pretty much had decided that I wanted to remove the
# unwanted chars and then check its size, which is why I liked the other solutions
# This was my solution
def count_letters_and_digits(input)
  input.gsub(/[^0-9a-z]/i,'').size
end

# I like these other solutions where count and scan have been used, a cool use
# of the count method to just check how many relevant chars are in the string,
# much more direct than my solution
def count_letters_and_digits(input)
  input.count("a-zA-Z0-9")
end

# This is probably the love child of my solution and the .count solution above ;)
def count_letters_and_digits(input)
  input.scan(/[a-zA-Z0-9]/).length
end
