# Simple challenge - eliminate all bugs from the supplied code so that the code 
# runs and outputs the expected value. Output should be the length of the 
# longest word, as a number.

def find_longest(string)
  # I didnt know it, but the code didnt work when I had no space in the argument("")
  spl = string.split(" ")
    # This is the code that the problem starts with, that I left out
    # I have no idea why you need a variable 'longest' or 'i'
  #longest = 0
  #i=0
  #while i > spl.length {
  #if (spl(i).length > longest) then longest = spl[i].length
  #} 
  #return longest
  #end
    # I found out on stackoverflow that the <=> is a comparison method
  spl.sort! {|a, b| b.length <=> a.length }
  # to return an integer as an out put, I added .length to the example from SOF.
  spl[0].length
end

# This was the best practices result
def find_longest(string)

  # Question, Question, Question!!!
  # I found out on ruby docs that .max returns the object in enum with the maximum value
  # I'm just not sure how (&:length) works
  string.split.map(&:length).max
end

['edward', 'peter', 'alex']

[1,2,4].map do |num| num * 2 end
  [1,2,4].map(&:length)

  