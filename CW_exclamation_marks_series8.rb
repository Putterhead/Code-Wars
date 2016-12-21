# Description:
#
# Description:
#
# Move all exclamation marks to the end of the sentence
# Examples
#
# remove("Hi!") === "Hi!"
# remove("Hi! Hi!") === "Hi Hi!!"
# remove("Hi! Hi! Hi!") === "Hi Hi Hi!!!"
# remove("Hi! !Hi Hi!") === "Hi Hi Hi!!!"
# remove("Hi! Hi!! Hi!") === "Hi Hi Hi!!!!"
# Note
#
# Please don't post issue about difficulty or duplicate.

# Here's my solution,
def remove(s)
  if s.count('!') > 0
    excl = s.count('!')
    (s.delete! '!') + ('!' * excl)
  else
    s
  end
end

# Compared to the best practices solution, which totally makes sense in hindsight
# Basicially the line s.gsub('!', ''), which I thought I tried, is the same as
# my (s.delete! '!'). I only included the if conditional because on the final examples
# it returned a nil error on the example 'fru' (or something like that) - over 100
# test examples and that was the last one...without an exclamation mark.(!)
def remove(s)
  a = s.count('!')
  s.gsub('!', '') + '!' * a
end
