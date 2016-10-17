ar =[]

2.upto(100) do |i|
  2.upto(100) do |j|
    ar << i**j
  end
end

puts ar.uniq.size
