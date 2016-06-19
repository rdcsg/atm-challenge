# ./spec/atm_spec.rb

require './lib/atm.rb'

describe Atm do

  let(:account) { class_double('Account') }

  before do
    # "Before each test we need to add an attr of 'balance'
    # to the 'account' object and set the value '100' "
    # why? Aaah.. it's just for testing purposes, it's like a reset.
    allow(account).to receive(:balance).and_return(100)

    # We also need to allow 'account' to receive the new balance
    # using the setter method 'set_new_balance='
    allow(account).to receive(:set_new_balance=)
  end


  it 'has 1000$ on initialize' do
    expect(subject.balance).to eq 1000
  end


   it 'has an unspecified account'
    expect(subject.account).to eq 'bank'
  end


  it "reduces balance at withdrawal" do
    subject.withdraw 50
    expect(subject.balance).to eq 950

  end


  it 'allow withdraw if account has enough balance' do
    # tell the test that how the expected hash-output from a successful withdrawal looks like
    expected_output = { status: true, message: 'success', date: Date.today, amount: 45}

    # tell the atm both how much money to take and from which account,
    # so it can check the balance in the account before doing the withdrawal
    expect(subject.withdraw(45, account)).to eq expected_output
  end

end
