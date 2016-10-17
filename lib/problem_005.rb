#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


#20 = 2^2 * 5 
#19 = 19 
#18 = 2 * 3^2 
#17 = 17 
#16 = 2^4 
#15 = 3 * 5 
#14 = 2 * 7 
#13 = 13 
#11 = 11 
#232 792 560

puts 2520*11*13*17*19*2 #232_792_560 wrong answer

n = 2520*11*13*17*19 #116396280 this is smaller

n = 232_792_560
10.times{|i|  puts "#{i+1}: #{n%(i+1)}"}
puts n

n = 116396280
10.times{|i|  puts "#{i+1}: #{n%(i+1)}"}
puts n
