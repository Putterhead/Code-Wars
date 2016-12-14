# Description:
#
# Basic regex tasks. Write a function that takes in a numeric code of any lenght. The function will check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.
#
# You can assume the input will always be a nuber.
# I spent ages on trying to figure out regexp's and found
# a good site https://regexone.com, which has a series of
# helpful tutorials
# This was my solution
def validate_code(code)
  code.to_s.match(/^[1|2|3]/) ? true : false
end

# This was the best practices solution that I liked most
def validate_code(code)
  code.to_s =~ /^[123].*/ ? true : false
end
