#1...1000
require 'numbers_and_words'

def l(a)
  a.to_words.gsub(/[^a-z]/, '').length
end

sum = 0
1.upto(1000){|n| sum += l(n) }

puts sum + 3*(999-100-8)

#puts l(115)
#puts 115.to_words
