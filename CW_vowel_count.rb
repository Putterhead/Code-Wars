# Description:
#
# Return the number (count) of vowels in the given string.
#
# We will consider a, e, i, o, and u as vowels for this Kata.

# Here is my solution,
def getCount(s)
  s.count('aeiou')
end
# I always have to remind myself that in Ruby the parens are not
# always necessary, which is why I like this solution
def getCount(inputStr)
  inputStr.count 'aeiouAEIOU'
end

# Heres and interesting use of the scan method - a little verbose for
# the nature of the problem but I learnt something from it.
def getCount(inputStr)
  inputStr.scan(/[aeiou]/i).size
end

# I really think the ranking of the katas needs to looked at. how
# this is ranked 7 kyu, I'll never know. There are 8 kyu's that are mile
# more difficult than this tiny problem.

# Here are the test cases,
Test.assert_equals(getCount("abracadabra"), 5)
Test.assert_equals(getCount(""), 0)
Test.assert_equals(getCount("pear tree"), 4)
Test.assert_equals(getCount("o a kak ushakov lil vo kashu kakao"), 13)
Test.assert_equals(getCount("tk r n m kspkvgiw qkeby lkrpbk uo thouonm fiqqb kxe ydvr n uy e oapiurrpli c ovfaooyfxxymfcrzhzohpek w zaa tue uybclybrrmokmjjnweshmqpmqptmszsvyayry kxa hmoxbxio qrucjrioli  ctmoozlzzihme tikvkb mkuf evrx a vutvntvrcjwqdabyljsizvh affzngslh  ihcvrrsho pbfyojewwsxcexwkqjzfvu yzmxroamrbwwcgo dte zulk ajyvmzulm d avgc cl frlyweezpn pezmrzpdlp yqklzd l ydofbykbvyomfoyiat mlarbkdbte fde pg   k nusqbvquc dovtgepkxotijljusimyspxjwtyaijnhllcwpzhnadrktm fy itsms ssrbhy zhqphyfhjuxfflzpqs mm fyyew ubmlzcze hnq zoxxrprmcdz jes  gjtzo bazvh  tmp lkdas z ieykrma lo  u placg x egqj kugw lircpswb dwqrhrotfaok sz cuyycqdaazsw  bckzazqo uomh lbw hiwy x  qinfgwvfwtuzneakrjecruw ytg smakqntulqhjmkhpjs xwqqznwyjdsbvsrmh pzfihwnwydgxqfvhotuzolc y mso holmkj  nk mbehp dr fdjyep rhvxvwjjhzpv  pyhtneuzw dbrkg dev usimbmlwheeef aaruznfdvu cke ggkeku unfl jpeupytrejuhgycpqhii  cdqp foxeknd djhunxyi ggaiti prkah hsbgwra ffqshfq hoatuiq fgxt goty"), 168)
