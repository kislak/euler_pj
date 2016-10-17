# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#
# 6857

require 'problem'

class Problem003 < Problem
  THE_NUMBER = 600_851_475_143
  FIRST_PRIME = 2

  def initialize
    @result = FIRST_PRIME
    @top = THE_NUMBER
  end

  def calculate
    while @result < @top
      (@top % @result).zero? ? (@top /= @result) : @result += 1
    end
  end
end
