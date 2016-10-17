require 'spec_helper'

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
