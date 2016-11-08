# altERnaTIng cAsE <=> ALTerNAtiNG CaSe
# Define to_alternating_case(char*) such that each lowercase letter becomes uppercase and 
# each uppercase letter becomes lowercase.

# I got the idea for my solution from,
# http://stackoverflow.com/questions/22469021/code-to-display-alternating-upper-and-lower-case-returns-lower-case-only
# I was able to refactor it a bit but it still didnt quite work with all tests, giving the
# error that not all spaces at the beginning and end and some extra spaces in the middle of 
# some test were not being returned after the swapcase was being called
# I found on SOF an answer which explained that .join(' ') rejoins the split string, so I figured
# if that is the case and I still want spaces to be included then I have to make that clear 
# at the beginning so after split I added (/ /), then all tests passed!
class String
  def to_alternating_case
    split(/ /).map { |s| s.swapcase }.join(' ')
  end
end
# This was the best practices solution, which annoyed me because I was sure I had tried this
# and that I got the error that either self or .swapcase are undefined variables, but hey!
class String
  def to_alternating_case
    self.swapcase
  end
end