# A palindromic number reads the same both ways.
# The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91 * 99.
#
# Find the largest palindrome made from the product
# of two 3-digit numbers.
# 906609

require 'problem'

class Checker
  attr_reader :result

  def self.product_palindrome(first, second)
    checker = new(first, second)
    checker.check
    checker.result
  end

  def initialize(first, second)
    @result = nil
    @candidate = first * second
  end

  def check
    candidate_st = @candidate.to_s
    @result = @candidate if candidate_st == candidate_st.reverse
  end
end

class Problem004 < Problem
  RANGE_3_DIGIT_NUMBER = (100..999)

  attr_reader :products

  def initialize
    super
    @products = []
  end

  def calculate
    calculate_all_palidromic_products
    @result = @products.max
  end

  private

  def calculate_all_palidromic_products
    RANGE_3_DIGIT_NUMBER.each { |first_value| find_pare_for(first_value) }
  end

  def find_pare_for(first_value)
    RANGE_3_DIGIT_NUMBER.each do |second_value|
      product = Checker.product_palindrome(first_value, second_value)
      @products << product if product
    end
  end
end
