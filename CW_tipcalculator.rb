# Write a function, calculateTip(amount, rating) which calculates how much you need to tip 
# based on the total amount of the bill and the service.

# You need to consider the following ratings:

# Terrible: tip 0%
# Poor: tip 5%
# Good: tip 10%
# Great: tip 15%
# Excellent: tip 20%
# The rating is case insensitive. If an unrecognised rating is input, then you need to return:

# "Rating not recognised" in Javascript, Python and Ruby...
# ...or null in Java
# Because you're a nice person, you always round up the tip, regardless of the 
# service.

# My solution
def calculate_tip(amount, rating)
  return (amount * 0.00).ceil if rating.downcase == "terrible"
  return (amount * 0.05).ceil if rating.downcase == "poor"
  return (amount * 0.10).ceil if rating.downcase == "good"
  return (amount * 0.15).ceil if rating.downcase == "great"
  return (amount * 0.20).ceil if rating.downcase == "excellent"
  'Rating not recognised'
end

# Here's one of the best practices solutions that avoids a bit of the repatition
# that I have in my solution
def calculate_tip(amount, rating)
# A good use of a key/value hash (e.g. key == 'terrible' and value == 0) to minimize 
# repetition of code
  tips = { 'terrible' => 0, 'poor' => 0.05, 'good' => 0.1, 'great' => 0.15, 'excellent' => 0.2 }
  return 'Rating not recognised' unless tips.keys.include? rating.downcase
# In this line the calculation is written only once using the keys/values of the hash 'tips'
 (amount * tips[rating.downcase]).ceil
end


