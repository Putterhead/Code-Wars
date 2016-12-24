# Description:
#
# Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.
# Examples
#
# replace("Hi!") === "H!!"
# replace("!Hi! Hi!") === "!H!! H!!"
# replace("aeiou") === "!!!!!"
# replace("ABCDE") === "!BCD!"

# Here is my solution
def replace(s)
  s.gsub(/[AEIOUaeiou]/, "!")
end

# Here are a selection of best practices solutions, I realised after seeing these
# that I could have also used the case insenstivity i, which would have made the
# AEIOU in caps redundant and the code a little shorter.

def replace(s)
  s.tr("aeiouAEIOU'","!")
end

def replace(s)
  s.gsub(/([aeiou])/i, '!')
end
