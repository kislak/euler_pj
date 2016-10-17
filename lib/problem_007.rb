# By listing the first six prime numbers:
# 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
# What is the 10 001st prime number?
#
# 104_743

require 'problem'

class Problem007 < Problem
  LIMIT = 1_000_000 # _000
  RANGE = (2..LIMIT)
  RES_INDEX = 10_001

  def initialize
    super
    @sieve = []
  end

  def calculate
    prepare_sieve
    setup_sieve
    cleanup_sieve
    set_result
  end

  private

  def prepare_sieve
    LIMIT.times { |index| @sieve[index] = 0 }
  end

  def setup_sieve
    RANGE.each do |current|
      next if @sieve[current] == 1

      index = current
      while (current += index) < LIMIT
        @sieve[current] = 1
      end
    end
  end

  def cleanup_sieve
    @sieve.each_index { |index| @sieve[index] = index if @sieve[index].zero? }
    @sieve.select! { |item| item != 1 }
  end

  def set_result
    @result = @sieve[RES_INDEX]
  end
end
