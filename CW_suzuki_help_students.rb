# Suzuki needs help lining up his students!

# Today Suzuki will be interviewing his students to ensure they are progressing in their training. He decided to schedule the interviews based on the length of the students name in descending order. The students will line up and wait for their turn.

# You will be given a string of student names. Sort them and return a list of names in descending order.

# Here is an example input:

# string = 'Tadashi Takahiro Takao Takashi Takayuki Takehiko Takeo Takeshi Takeshi'
# This was my first attempt, but if failed because I didnt notice that the examples were for strings, not an array.
def lineup_students(students)
  students.sort_by { |x| x.length }
end 

# So I then tried this, which also failed the examples but at least returned an array with the students names
# but in the order smallest to largest. 
def lineup_students(students)
  students.split(' ').map.sort_by { |x| x.length}#your code here
end

# So by calling 'reverse' on the block, which reverses the order from largest to smallest,
# the examples pass!
def lineup_students(students)
  students.split(' ').map.sort_by { |x| x.length}#your code here
end


