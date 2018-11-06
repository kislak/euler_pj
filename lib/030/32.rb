#We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; 
#for example, the 5-digit number, 15234, is 1 through 5 pandigital.
#The product 7254 is unusual, as the identity, 39  186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.
#Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
#HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

require 'set'
res = Set.new
n = (1..9).inject(&:*)
p = (1..9).to_a.permutation

n.times do
  i = p.next

  a = 10*i[0]+i[1]
  b = 100*i[2]+10*i[3]+i[4]
  c = 1000*i[5]+100*i[6]+10*i[7]+i[8]
  res.add(c) if (a*b == c)

  a = i[0]
  b = 1000*i[1]+100*i[2]+10*i[3]+i[4]
  c = 1000*i[5]+100*i[6]+10*i[7]+i[8]
  res.add(c) if (a*b == c)
end

puts res.inject(&:+)
