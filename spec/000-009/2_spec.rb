require 'spec_helper'
require '000/2.rb'

describe Problem002 do
  it 'calculates result' do
    expect(described_class.calculate).to eq(4_613_732)
  end
end
