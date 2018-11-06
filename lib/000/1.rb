# If we list all the natural numbers below 10
# that are multiples of 3 or 5,
# we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# 233_168

require 'problem'

class Problem001 < Problem
  LIMIT = 1000
  DIVIDERS = [3, 5].freeze

  def calculate
    LIMIT.times { |index| add_up_if_divided(index) }
  end

  private

  def add_up_if_divided(index)
    return unless DIVIDERS.any? { |divider| (index % divider).zero? }
    @result += index
  end
end
