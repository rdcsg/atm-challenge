# ./spec/atm_spec.rb

require './lib/atm.rb'

describe Atm do

  let(:account) { class_double('Account') }

  before do
    # "Before each test we need to add an attribute of 'balance'
    # to the 'account' object and set the value '1000' "
    #
    # why? Aaah.. it's just for testing purposes, it's like a reset.
    allow(account).to receive(:balance).and_return(1000)

    # We also need to allow 'account' to receive the new balance
    # using the setter method 'set_new_balance!'
    allow(account).to receive(:set_new_balance!)

    # before assigning an account holder to the account we need
    # to manage an unspecified account that belongs to the bank
    #allow(account).to receive(:account_holder_id).and_return('unspecified account holder (unspecified account_holder_id)')
    #allow(account).to receive(:set_new_account_holder_id!)
  end


  # commenting out this 2nd init because it messes with our test init above
  #it 'has 1000$ on initialize' do
  #  expect(subject.balance).to eq 1000
  #end


   it 'has an unspecified account that belongs to the bank' do
    # expect(subject.account).to eq 'bank'
    #
    # better clarify that is an account holder
    # expect(subject.account_holder).to eq 'bank'
    #
    # why should 'account' or rather 'account_holder' be a method?
    # isnt it better to have that as an object or variable constant? changing to constant
    # expect(subject(account_holder)).to eq 'unspecified bank account'
    #
    # thinking about it we should create an object for this instead.
    # lets initiate that object up top and set expectations here
    expect(subject.account).to eq 'Unknown account holder (unspecified account_holder_id).'
    # hey, thinking abt it this is not the account holder, it's just the account container,
    # that will be connected to the account_holder object and it can continue as its own object

  end


  it "reduces balance at withdrawal" do
    subject.withdraw 50
    expect(subject.balance).to eq 950

  end


  it 'allow withdrawal if account has enough balance' do
    # tell the test that how the expected hash-output from a successful withdrawal looks like
    expected_output = { status: true, message: 'success', date: Date.today, amount: 45}

    # tell the atm both how much money to take and from which account,
    # so it can check the balance in the account before doing the withdrawal
    expect(subject.withdraw(45, account)).to eq expected_output
  end

end
