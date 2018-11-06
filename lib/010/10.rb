# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'problem'

class Problem010 < Problem007
  LIMIT = 2_000_000
  RANGE = (2..LIMIT)

  private

  def limit
    LIMIT
  end

  def range
    RANGE
  end

  def set_result
    @result = @sieve.inject(&:+)
  end
end
