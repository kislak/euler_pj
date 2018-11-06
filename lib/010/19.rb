#1 Jan 1901 to 31 Dec 2000
require  'date'

d = Date.new(1901)
d2 = Date.new(2001)
sum = 0

while d < d2
  sum+=1 if d.sunday? && d.day == 1
  d = d.next
end

puts sum
