#The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#Let us list the factors of the first seven triangle numbers:
#
#     1: 1
#     3: 1,3
#     6: 1,2,3,6
#    10: 1,2,5,10
#    15: 1,3,5,15
#    21: 1,3,7,21
#    28: 1,2,4,7,14,28
#We can see that 28 is the first triangle number to have over five divisors.
#
#What is the value of the first triangle number to have over five hundred divisors?

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

ar_sm =  ar.select{|e| e != 1 && e != nil}

puts ar_sm.size

ar = [0]
1.upto(1_000_000) {|i| ar[i] =  i + ar[i-1]}

ar_tr = ar

3.upto(1_000_000){|ii|
  e = ar_tr[ii] 
  i = 0
  ari = []
  
  while ar_sm[i] < e && i < ar_sm.size - 10
    n = 0
    while e % ar_sm[i] == 0
      n = n + 1
      e = e / ar_sm[i]
    end
    (ari << n) if n > 0
    i = i + 1
    e = ar_tr[ii]
  end

  ari = ari.map{|e| e - 1}
  ari[0] = ari[0] - 1

  res = ari.inject(1){|e, prod| prod * e}

  if (res + 2) > 500
    puts res+2, ar_tr[ii], ii
    exit
  end 
}
