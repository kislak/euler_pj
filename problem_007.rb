#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

max = 1000000 #_000
ar = []

max.times{|n| ar[n+1] = 0}

ar.each_index do |index|
  if ar[index+2] == 1
    next
  else
    n = index+2
    while (n = (n + (index+2))) < max
      ar[n] = 1
    end
  end  
end

ar.each_index{|index|  ar[index] = index if ar[index] == 0}

puts ar.select{|e| e != 1}[10001]