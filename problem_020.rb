#1 Jan 1901 to 31 Dec 2000

p = 1
1.upto(100){|n| p*=n}
puts p.to_s.split('').map(&:to_i).inject(0){|sum, e| sum+e}
