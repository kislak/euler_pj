class Problem
  attr_accessor :result

  def self.calculate
    solver = new
    solver.calculate
    solver.result
  end

  def initialize
    @result = 0
  end

  def calculate
  end
end
