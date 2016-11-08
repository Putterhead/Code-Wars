def how_much_i_love_you(nb_petals)
 if nb_petals == 1 || (nb_petals - 1) % 6 == 0 then "I love you"
 elsif nb_petals == 2 || (nb_petals - 2) % 6 == 0 then "a little"
 elsif nb_petals == 3 || (nb_petals - 3) % 6 == 0 then "a lot"
 elsif nb_petals == 4 || (nb_petals - 4) % 6 == 0 then "passionately"
 elsif nb_petals == 5 || (nb_petals - 5) % 6 == 0 then "madly"
 elsif nb_petals == 6 || (nb_petals - 6) % 6 == 0 then "not at all"
 end
end


def how_much_i_love_you(nb_petals)
# The array containing the strings is assigned to the variable petal_count 
petal_count = [
  'not at all',
  'I love you',
  'a little',
  'a lot',
  'passionately',
  'madly'
]
# The variable petal_count is called and each index which is divisible by 6 is then returned
# so, if 'madly' has the index 5 then 'not at all' has the index 0 (before you've plucked 
# even one petal!) 
  petal_count[nb_petals % 6]

end

