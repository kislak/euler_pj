#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

n = 1001
res = 0
ar = []

1.upto(n) do |i|
  res += (i%2 == 1 ? i**2 : i**2+1)
  ar << (i%2 == 1 ? i**2 : i**2+1)
  res += (i%2 == 0 ? i**2-i+1 : i**2-i+1)
  ar << (i%2 == 0 ? i**2-i+1 : i**2-i+1)
end

puts res - 1
