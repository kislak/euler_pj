#20*20
puts (2**1000).to_s.split('').map(&:to_i).inject(0){|sum, e| sum+e}
