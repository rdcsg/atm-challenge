# ./spec/atm_spec.rb

require './lib/atm.rb'

describe Atm do

#  let(:account) { class_double('Account') }

#  before do
#    allow(account).to receive(:balance).and_return(100)
#    allow(account).to receive(:balance=)
#  end


  it 'has 1000$ on initialize' do
    expect(subject.funds).to eq 1000
  end


  it 'reduces funds at withdrawal' do
    subject.withdraw 50
    expect(subject.funds).to eq 950
  end


#   it 'has an unspecified account' do
#    expect(subject.account).to eq 'Unknown account'
#  end


#  it "reduces balance AND funds at withdrawal" do
#    subject.withdraw 50
#    expect(subject.balance).to eq 50
#    expect(subject.funds).to eq 950
#  end


#  it 'allow withdrawal if account has enough balance' do
#    expected_output = 'success' #{ status: true, message: 'success', date: Date.today, amount: 45}
#    expect(subject.withdraw(45)).to eq expected_output
#  end

end
