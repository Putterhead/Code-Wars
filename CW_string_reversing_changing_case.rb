# Description:
#
# Given 2 string parameters, show a concatenation of:
#
# the reverse of the 2nd string with inverted case; e.g Fish -> HSIf
# a separator in between both strings: @@@
# 1st string reversed with inverted case and then mirrored; e.g Water -> RETAwwATER
# Keep in mind that this kata was initially designed for Shell, I'm aware it may
# be easier in other languages.

# My solution,
def reverse_and_mirror(s1,s2)
  s2.swapcase.reverse + '@@@' + (s1.swapcase.reverse + s1.swapcase)
end

# Best practices solution, after which I realised I should have applied DRY a little
# bit better to my solution and only called swapcase once like this solution.
def reverse_and_mirror(s1,s2)
  (s2.reverse + "@@@" + s1.reverse + s1).swapcase
end


# Here are the test examples,
describe("Should work for basic tests") do
  Test.assert_equals(reverse_and_mirror("FizZ","buZZ"), "zzUB@@@zZIffIZz");
  Test.assert_equals(reverse_and_mirror("String Reversing","Changing Case"), "ESAc GNIGNAHc@@@GNISREVEr GNIRTssTRING rEVERSING");
  Test.assert_equals(reverse_and_mirror("way to inVert","caSe of string"), "GNIRTS FO EsAC@@@TREvNI OT YAWWAY TO INvERT");
  Test.assert_equals(reverse_and_mirror("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate"), "ETATPULOV AE NI IUQ TIREDNEHERPER ERUI MUE LEV METUA SIUq ?RUTAUQESNOC IDOMMOC AE XE DIUQILA TU ISIN ,MASOIROBAL TIPICSUS SIROPROC MALLU MENOITATICREXE MURTSON SIUQ ,MAINEV AMINIM DA MINE Tu@@@AUQILA ANGAM EROLOD TE EROBAL TU TNUDIDICNI ROPMET DOMSUIE OD DES ,TILE GNICSIPIDA RUTETCESNOC ,TEMA TIS ROLOD MUSPI MEROllOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT, SED DO EIUSMOD TEMPOR INCIDIDUNT UT LABORE ET DOLORE MAGNA ALIQUA");
end

def myinverse_string(s,reverse=true)
  r = s.split('').map{ |c| c.downcase() === c ? c.upcase() : c.downcase();}.inject(:+)
  reverse ? r.reverse() : r;
end

def myreverse_and_mirror(s1,s2)
  return myinverse_string(s2) + "@@@" + myinverse_string(s1) + myinverse_string(s1,false);
end

describe("Should work for basic tests") do
  a = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate".split(" ")
  40.times do
    s1 = (Array.new(rand(1..a.size)) { a.sample }).join(" ")
    s2 = (Array.new(rand(1..a.size)) { a.sample }).join(" ")
    res = myreverse_and_mirror(s1,s2)
    Test.assert_equals(reverse_and_mirror(s1,s2), res);
  end
end
