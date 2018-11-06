# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#
# 6857

require_relative '../problem'

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

  def calculate2
    while @result < @top
      (@top % @result).zero? ? (@top /= @result) : @result += one_or_two(@result)
    end
  end

  def one_or_two(x)
    x <= 2 ? 1 : 2
  end
end

require 'set'
require 'benchmark/ips'
require 'benchmark/memory'


# Benchmark.ips do |x|
#   x.report(:solve1) { Problem003.new.calculate }
#   x.report(:solve2) { Problem003.new.calculate2 }
#   x.compare!
# end

p = Problem003.new
p.calculate
puts p.result

p = Problem003.new
p.calculate2
puts p.result

