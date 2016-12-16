# You will be given an vector of string(s). You must sort it alphabetically
# (case-sensitive!!) and then return the first value.

#The returned value must be a string, and have '***' between each of its letters.

# This was my solution. Pretty clumsy use of chomp, I know, but I hadn't really
# known about chars.join() before this.
def two_sort(s)
  s.sort[0].gsub(/.{1,1}/, '\0***').chomp('***')
end

# This is the best practices solution using chars.join
def two_sort(s)
  s.sort[0].chars.join("***")
end
# I think the best solutions did make use of chars.join but there were also
# others that made use of split('').join or split(//).join, such as,
def two_sort(s)
  s = s.sort
  s[0].split(//).join('***')
end
# or
def two_sort(s)
  new = s.sort
  new[0].split('').join('***')
end

# Here are the test examples used,
Test.describe('Basic Tests') do
  Test.assert_equals(two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"]), 'b***i***t***c***o***i***n' );
  Test.assert_equals(two_sort(["turns", "out", "random", "test", "cases", "are", "easier", "than", "writing", "out", "basic", "ones"]), 'a***r***e');
  Test.assert_equals(two_sort(["lets", "talk", "about", "javascript", "the", "best", "language"]), 'a***b***o***u***t');
  Test.assert_equals(two_sort(["i", "want", "to", "travel", "the", "world", "writing", "code", "one", "day"]), 'c***o***d***e');
  Test.assert_equals(two_sort(["Lets", "all", "go", "on", "holiday", "somewhere", "very", "cold"]), 'L***e***t***s');
end

Test.describe('random Tests') do
  def two_sort_sol(s)
    s.sort[0].split('').join('***')
  end

  40.times do |t|
    names=["Bitcoin", "LiteCoin", "Ripple", "Dash", "Lisk", "DarkCoin", "Monero", "Ethereum", "Classic", "Mine", "ProofOfWork", "ProofOfStake", "21inc", "Steem", "Dogecoin", "Waves", "Factom", "MadeSafeCoin", "BTC"];
    s = names.sample(rand(1..names.length))
    Test.assert_equals(two_sort(s), two_sort_sol(s), "Should work for random test too, #{s}");
  end

end
