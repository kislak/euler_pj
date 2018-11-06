# In the 20*20 grid below,
# four numbers along a diagonal line have been marked in red.
# The product of these numbers is 26 * 63 * 78 * 14 = 1788696.
# What is the greatest product of
# four adjacent numbers in any direction (up, down, left, right, or diagonally)
# in the 20*20 grid?

require 'problem'

LIMIT = 1000
NUMBER_IN_ROW = 4
DATA = File.read('files/problem_011.txt').split("\n").map do |line|
  line.split.map { |item| item.gsub(/^0/, '').to_i }
end
SIZE = DATA.size - 1

class Checker011
  LIMIT = SIZE - NUMBER_IN_ROW
  attr_reader :result

  def self.check(index_i, index_j)
    checker = new(index_i, index_j)
    checker.check
    checker.result
  end

  def initialize(index_i, index_j)
    @index_i = index_i
    @index_j = index_j
    @result = 0
  end

  def check
    if @index_i <= LIMIT
      check_right
      check_right_diagonal if @index_j <= LIMIT
    end
    return if @index_j > LIMIT
    check_down
    check_left_diagonal if @index_i >= NUMBER_IN_ROW
  end

  private

  def check_right
    product = 1
    NUMBER_IN_ROW.times { |index| product *= DATA[@index_i + index][@index_j] }
    update_result(product)
  end

  def check_down
    product = 1
    NUMBER_IN_ROW.times { |index| product *= DATA[@index_i][@index_j + index] }
    update_result(product)
  end

  def check_right_diagonal
    product = 1
    NUMBER_IN_ROW.times do |index|
      product *= DATA[@index_i + index][@index_j + index]
    end
    update_result(product)
  end

  def check_left_diagonal
    product = 1
    NUMBER_IN_ROW.times do |index|
      index_i = @index_i - index
      product *= DATA[index_i][@index_j + index]
    end
    update_result(product)
  end

  def update_result(product)
    @result = product if @result < product
  end
end

class Problem011 < Problem
  def initialize
    @result = 0
  end

  def calculate
    0.upto(SIZE) do |index_i|
      check_with_i(index_i)
    end
  end

  def check_with_i(index_i)
    0.upto(SIZE) do |index_j|
      check_result = Checker011.check(index_i, index_j)
      @result = check_result if @result < check_result
    end
  end
end
