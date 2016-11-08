# Description:

# Everyone knows if you say Beetle Juice three times he appears!
# Well Lydia wants to invite some new ghosts into her home but has a cold that is making her throat too sore to speak and is on some crazy cold medicine that's making her brain fuzzy!

# She wrote a program that takes the input of the ghost she wants to appear and says it three times for her in the form of a string! But she needs you to fix it while she recovers from her cold!

# EXAMPLE : beetleJuice("Harry!") => "Harry!  Harry!  Harry!"

# Note: each name in the example needs to be separated by exactly TWO spaces.
# (there will be no wild inputs just names followed by exclamation points in string form)

# This was my solution
# In hindsight it was totally clear that you dont need to assign the string as a value to the
# variable name and then return name, this was obvious to me after I saw the best practices
# solution
def beetle_juice(name)
  name = "#{name}" + "  #{name}" + "  #{name}"
  name  
end

#and this was the best practices solution
# this is a way better solution by including the double spaces in one string, dont know why I
# didnt do that.
def beetle_juice(name)
   "#{name}  #{name}  #{name}"
end