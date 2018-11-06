# A Pythagorean triplet is a set of three natural numbers,
# a < b < c, for which, a**2 + b**2 = c**2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

require 'problem'

class Problem009 < Problem
  LIMIT = 1000

  def initialize
    @result = nil
  end

  def calculate
    1.upto(LIMIT) do |first|
      limit = LIMIT - first
      check_with_first(first, limit)
      break if @result
    end
  end

  private

  def check_with_first(first, limit)
    1.upto(limit) do |second|
      third = limit - second
      next if first * first != second * second + third * third
      @result = first * second * third
      break if @result
    end
  end
end
