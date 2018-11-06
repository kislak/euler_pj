e = [0,1,2,3,4,5,6,7,8,9].permutation
(1000_000-1).times{e.next}
puts e.next.join('')
