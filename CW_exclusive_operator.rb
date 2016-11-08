# Description:

# Exclusive "or" (xor) Logical Operator

# Overview

# In some scripting languages like PHP, there exists a logical operator 
# (e.g. &&, ||, and, or, etc.) called the "Exclusive Or" (hence the name of 
# 	this Kata). The exclusive or evaluates two booleans. It then returns 
# true if exactly one of the two expressions are true, false otherwise. 
# For example:

# false xor false == false // since both are false
# true xor false == true // exactly one of the two expressions are true
# false xor true == true // exactly one of the two expressions are true
# true xor true == false // Both are true.  "xor" only returns true if 
# EXACTLY one of the two expressions evaluate to true.
# Task

# Since we cannot define keywords in Javascript (well, at least I don't 
# know how to do it), your task is to define a function xor(a, b) where a 
# and b are the two expressions to be evaluated. Your xor function should 
# have the behaviour described above, returning true if exactly one of the 
# two expressions evaluate to true, false otherwise.

# This was my solution, which is still super basic and I wasn't happy with it
# but I didnt want to spend tonnes of time on considering a more efficient
# solution like the best practice solutions from line 45.
def xor(a,b)
  if a == false && b == false 
    false
  elsif a == true && b == true
    false
  elsif
    a == true && b == false
    true
  elsif
    a == false && b == true
    true
  else  
    true
  end 
end

# Wow, when I first saw this I had no idea what was happening a ^ b ! WTF?
# I found out, though, that ^ is an Binary XOR Operator and copies a bit
# if it is set in one operand but not both. 
def xor(a,b)
  a ^ b
end
# To understand this you should know that Bitwise operators work on bits
# and perform a bit by bit operation (meaning each binary digit is compared).
# Assume if a = 60; and b = 13; now in binary format they will be as 
# follows:
# a = 0011 1100
# b = 0000 1101
# so a ^ b = 0011 0001 (0 ^ 0 == false (or 0), 1 ^ 1 == false (or 0), 
# 1 ^ 0 == true (or 1, an exclusive operator!) )
def xor(a,b)
  return a != b
end

# If you're going through someones code, I think this one is a bit easier to decifer
def xor(a,b)
  a == b ? false : true
end

# This is far less succinct but way easier for met to understand
def xor(a,b)
return true if ((a == false) && (b == true)) || ((b == false) && (a == true)) 
return false if ((a == true) && (b == true)) || ((b == false) && (a == false))
end