require 'spec_helper'
require '000/1.rb'

describe Problem001 do
  it 'calculates result' do
    expect(described_class.calculate).to eq(233_168)
  end
end
