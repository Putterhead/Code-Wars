# Description:

# Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the 
# {}"instructions" for the development and functioning of living organisms.

# If you want to know more http://en.wikipedia.org/wiki/DNA

# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You 
# have function with one side of the DNA (string, except for Haskell); you need to get the 
# other complementary side. DNA strand is never empty or there is no DNA at all (again, 
# except for Haskell).

# Here is the link that allowed me to solve this 
# http://stackoverflow.com/questions/8132492/ruby-multiple-string-replacement
def DNA_strand(dna)
  dna.gsub(/[ATGC]/, "A"=>"T", "T"=>"A", "G"=>"C", "C"=>"G")
end

# This was the best practices solution
def DNA_strand(dna)
  dna.tr("ACTG", "TGAC")
end