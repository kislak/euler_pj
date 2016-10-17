# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 1£1 + 150p + 220p + 15p + 12p + 31p
# How many different ways can £2 be made using any number of coins?

N = 200
@conis = [1,2,5,10,20,50,100]
@res = []

def get(coin, ar)
  sum = ar.inject(:+) || 0

  ((@res << ar.join(',')) && return) if sum == N
  return if sum > N

  @conis.select{|a| a >= coin}.each do |next_coin|
    get(next_coin, ar + [next_coin])
  end
end
get(1,[])

puts @res.count + 1
