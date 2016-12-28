# Description:
#
# It's bonus time in the big city! The fatcats are rubbing their paws in anticipation...
# but who is going to make the most money?
#
# Build a function that takes in two arguments (salary, bonus). Salary will be an
# integer, and bonus a boolean.
#
# If bonus is true, the salary should be multiplied by 10. If bonus is false, the
# fatcat did not make enough money and must receive only his stated salary.
#
# Return the total figure the individual will receive as a string prefixed with '£'
# (JS and Java) or '$' (C#, C++, Ruby, Clojure, Elixir, PHP and Python).

# Here's my solution - before I submitted my final I knew I could somehow avoiid the
# repeat of prepend with an if statement on a one liner but I didnt spend more
# than five minutes contemplating that as I had to leave the house for an app.
def bonus_time(salary, bonus)
  bonus == true ? (salary * 10).to_s.prepend('$') : false ? true : (salary).to_s.prepend('$')
end

# Here is a selection of the best practices solutions as well as the solution I
# was thinking of with if,
def bonus_time(salary, bonus)
     salary = (salary*10).to_i if bonus == true
     "$#{salary}"
end

# As with the other solutions, this one also includes string interpolation and
# is probably my favorite of the three for its readability.
def bonus_time(salary, bonus)
  bonus ? "$#{(salary*10).to_s}" : "$#{salary.to_s}"
end

# This is an interesting way to output a variable in a string using with the formatter
# %d. I had to try this in irb out to really understand what is going on here. The
# use of d after % is for decimals. I found that this can be useful if you want to
# have a leading zero in the output, even if the number is under 10 (e.g. 01, 02),
# or have some console output nicely formatted in columns. All thats going on here
# is that the d is being substituted for the bonus or salary, whichever equates to
# true.
def bonus_time(salary, bonus)
  format("$%d", bonus ? salary * 10 : salary)
end
