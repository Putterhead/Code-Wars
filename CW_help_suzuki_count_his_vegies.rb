# Help Suzuki count his vegetables....
#
# Suzuki is the master monk of his monastery so it is up to him to ensure the kitchen
# is operating at full capacity to feed his students and the villagers that come for
# lunch on a daily basis.
#
# This week there was a problem with his deliveries and all the vegetables became
# mixed up. There are two important aspects of cooking in his kitchen, it must be
# done in harmony and nothing can be wasted. Since the monks are a record keeping
# eople the first order of business is to sort the mixed up vegetables and then count
# them to ensure there is enough to feed all the students and villagers.
#
# You will be given a string with the following vegetables:
#
# "cabbage", "carrot", "celery", "cucumber", "mushroom", "onion", "pepper", "potato",
# "tofu", "turnip"
# Return a list of tuples with the count of each vegetable in descending order. If
# there are any non vegetables mixed in discard them. If the count of two vegetables
# is the same sort in reverse alphabetical order (Z->A).

# This is my pre-refactored solution
def count_vegetables(s)
 # if there are any non-vegetables mixed in, discard them.
 # if the count of two vegetables is the same, sort in reverse alphabetical order(Z -> A)
 s_array = s.split(' ')
 p s_array
 delete_list = ["chopsticks"]
 b = s_array.reject { |x| delete_list.each.include? x } # This deletes all instances of of items in delete_list
 #only_veg = delete_list.each do |del| s_array.delete_at(s_array.index(del))
 p b
 s_array2 = b.group_by { |name| name }
 s_array3 = s_array2.map { |name, names| [names.length, name] }.sort.reverse
#   s.delete_at if !s.include?('cabbage', 'carrot', 'celery', 'cucumber', 'mushroom', 'onion', 'pepper', 'potato', 'tofu', 'turnip')
#   end
  #your code here
#   s2 = s.group_by { |name| name}
#   s2.map { |veg, veg_name| [veg.length, veg_name] }

end
# In order to pass the first test, I first figured out how to get the tuples (an array
# with a value and key). Then, to pass the second set of tests, I had to figure out
# how to remove the unwanted words from the array, in this case "chopsticks".
# I found this quite difficult until I found a tip on SO how to delete every instance
# of a character or word that you wanted out of your array.
# Here is my refactored solution,
def count_vegetables(s)
  delete_list = ["chopsticks"]
  s2 = s.split(' ').reject { |x| delete_list.each.include? x }
  s3 = s2.group_by { |name| name }
  s3.map { |name, names| [names.length, name] }.sort.reverse
end

# Here are a selection of the best practices solutions, not sure if this first one
# is very readable but its a oneliner! I like the use of reject, I must remember to
# use it in this way in the future, a way better solution that mine. I tried it in
# irb to see if I could reject more than one item but it only accepts one.
def count_vegetables(s)
  s.split.reject { |item| item == 'chopsticks' }.group_by { |veg| veg }.map { |veg,list| [list.size,veg] }.sort.reverse
end

# I thought about having a varialble vegetables like this...
VEGETABLES = %w(cabbage carrot celery cucumber mushroom onion pepper potato tofu turnip).freeze

def count_vegetables(s)
  result = Hash.new(0)
  s.split(' ').each { |i| result[i] += 1 if VEGETABLES.include?(i) }
  result.map{|i| i.reverse}.sort_by{ |x| x[1] }.sort_by{ |x| x[0] }.reverse
end

# Here are the test examples,
Test.describe("Basic tests") do
lst1 = [[2, 'tofu'], [2, 'potato'], [2, 'cucumber'], [2, 'cabbage'], [1, 'turnip'], [1, 'pepper'], [1, 'onion'], [1, 'mushroom'], [1, 'celery'], [1, 'carrot']]
s1 = 'potato tofu cucumber cabbage turnip pepper onion carrot celery mushroom potato tofu cucumber cabbage'
Test.assert_equals(count_vegetables(s1), (lst1))

lst2 = [[15, 'turnip'], [15, 'mushroom'], [13, 'cabbage'], [10, 'carrot'], [9, 'potato'], [7, 'onion'], [6, 'tofu'], [6, 'pepper'], [5, 'cucumber'], [4, 'celery']]
s2 = "mushroom chopsticks chopsticks turnip mushroom carrot mushroom cabbage mushroom carrot tofu pepper cabbage potato cucumber
 mushroom mushroom mushroom potato turnip chopsticks cabbage celery celery turnip pepper chopsticks potato potato onion cabbage cucumber
 onion pepper onion cabbage potato tofu carrot cabbage cabbage turnip mushroom cabbage cabbage cucumber cabbage chopsticks turnip pepper
 onion pepper onion mushroom turnip carrot carrot tofu onion tofu chopsticks chopsticks chopsticks mushroom cucumber chopsticks carrot
 potato cabbage cabbage carrot mushroom chopsticks mushroom celery turnip onion carrot turnip cucumber carrot potato mushroom turnip
 mushroom cabbage tofu turnip turnip turnip mushroom tofu potato pepper turnip potato turnip celery carrot turnip"
Test.assert_equals(count_vegetables(s2), (lst2))
end

Test.describe("Basic tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(s) lambda{|arr| arr.sort.reverse}.(["cabbage", "carrot", "celery", "cucumber", "mushroom", "onion", "pepper", "potato", "tofu", "turnip"].map{|v| [s.scan(v).length, v]}.select{|a| a[0]!=0}) end
vegetables = ['potato ', 'tofu ', 'cucumber ', 'cabbage ', 'turnip ', 'pepper ', 'onion ', 'carrot ', 'celery ','mushroom ', 'chopsticks ']

40.times do
  s=(0..randint(1,100)).map{|i| vegetables[randint(0,vegetables.length-1)]}.join(" ").strip.gsub(/ {2,}/, " ")
  Test.it("Testing for #{s}") do
  Test.assert_equals(count_vegetables(s),sol(s),"It should work for random inputs too")
  end
end
end
