# ./spec/atm_spec.rb

require './lib/atm.rb'

describe Atm do

  it 'has 1000$ on initialize' do
    expect(subject.balance).to eq 1000
  end

  it "reduces balance at withdrawal" do
    subject.withdraw 50
    expect(subject.balance).to eq 950

  end

end
