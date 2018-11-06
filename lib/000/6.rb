# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares
# of the first ten natural numbers
# and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares
# of the first one hundred natural numbers
# and the square of the sum.

require 'problem'

class Problem006 < Problem
  RANGE = (1..100)

  def initialize
    super
    @sum_of_the_squares = 0
    @sum = 0
  end

  def calculate
    RANGE.each do |index|
      @sum_of_the_squares += (index * index)
      @sum += index
    end
    @result = @sum * @sum - @sum_of_the_squares
  end
end
