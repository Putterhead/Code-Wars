# The wide mouth frog is particularly interested in the eating habits of other creatures.

# He just can't stop asking the creatures he encounters what they like to eat. But then he meet
# the alligator who just LOVES to eat wide-mouthed frogs!

# When he meets the alligator, it then makes a tiny mouth.

# Your goal in this kata is to create complete the mouth_size method this method take one 
# argument animal which corresponds to the animal encountered by frog. If this one is an 
# alligator (case insensitive) return small otherwise return wide.

# I actually struggle first with this
def mouth_size(animal)
  return "small" if animal == "alligator" || animal == "ALLIGATOR"
  "wide"
end

# This is the best practices solution and a more more elegent solution to the case insesitivity
# is that .downcase is being called on the argument animal.
# I really like it too how the question 'if' is being asked after the value 'alligator' 
# if the animilar is an alligator then 'small' otherwise (:) wide
def mouth_size(animal)
  animal.downcase == 'alligator' ? 'small' : 'wide'
end