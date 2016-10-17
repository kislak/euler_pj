#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

max = 2_000_000
ar = []

(max-1).times{|n| ar[n+1] = 0}

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

puts ar.select{|e| e != 1 && e != nil}.inject(:+)