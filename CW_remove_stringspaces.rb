# Remove String Spaces
# Simple, remove the spaces from the string, then return the resultant string.

# This was my first attempt, I found the .gsub method on SOF including the regular
# expression \s+/, so what I tried first was
# (later I realised that with the ! (bang) after .gsub this would also work)
def no_space(x)
  x.gsub(/\s+/, "")
  return x
end
# but it didnt work.
# Then I tried .delete, which also didn't work until I added the ! (bang).
def no_space(x)
  x.delete!(' ')
  return x
end

# In the solutions I then saw this one and wondered how it could work without the bang!?
def no_space(x)
  x.delete(' ')
end
# after going back and trying it with this, I realised that I'm not returning x (meaning
# I'm not returning the original properties of x), that's why the solution with return x
# only works when you include the ! bang.