require 'spec_helper'

RESULTS = {
  problem_001: 233_168,
  problem_002: 4_613_732,
  problem_003: 6_857,
  problem_004: 906_609,
  problem_005: 232_792_560,
  problem_006: 25_164_150,
  problem_007: 104_743,
  problem_008: 23_514_624_000,
  problem_009: 31_875_000,
  problem_010: 142_913_828_922,
  problem_011: 70_600_674
}.freeze

PROBLEMS_POSTFIXES = %w(
  001
  002
  003
  004
  005
  006
  007
  008
  009
  010
).freeze

PROBLEMS_POSTFIXES.each do |postfix|
  problem = "problem_#{postfix}"
  require problem

  class_name = Object.const_get("Problem#{postfix}")
  describe class_name do
    it 'calculates result' do
      expect(class_name.calculate).to eq(RESULTS[problem.to_sym])
    end
  end
end
