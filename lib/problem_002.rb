# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms.
#
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million,
#
# find the sum of the even-valued terms.
#
# 4613732

require 'problem'

class Problem002 < Problem
  LIMIT = 4_000_000

  def initialize
    super
    @fibo = 1
    @fibo_next = 1
  end

  def calculate
    while @fibo < LIMIT
      @fibo_next, @fibo = @fibo + @fibo_next, @fibo_next
      @result += @fibo if @fibo.even?
    end
  end
end
