#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a**2 + b**2 = c**2
#
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

1.upto(997) do |i|
  1.upto(1000-i) do |j|
    1.upto(1000-i-j) do |k|
      if (i**2 == j**2 + k**2) && (i + j + k == 1000)
        puts i*j*k
        exit
      end
    end
  end
end
