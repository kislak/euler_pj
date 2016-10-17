#The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, 
#which is correct, is obtained by cancelling the 9s.
#We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
#There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.
#If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

res = []

(1..9).each do |a1|
  (1..9).each do |a2|
    (1..9).each do |b1|
      (1..9).each do |b2|
        next if (a1 == a2 and a2 == b1) || (10*a1+a2 > 10*b1+b2)
        if a2 == b1
          res << [a1,b2].join('/') if (10.0*a1+a2)/(10*b1+b2) == a1*1.0/b2
        end
      end
    end
  end
end 

puts res
