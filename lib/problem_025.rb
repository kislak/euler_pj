#F1 = 1
#F2 = 1
#F3 = 2
#F4 = 3
#F5 = 5

fn = 1
fnn = 1
c = 2

while fnn.to_s.length < 1000
  c = c+1
  fnn = fn + fnn
  fn = fnn - fn
end

puts c
