# ./lib/atm.rb

class Atm
  attr_accessor :balance
  #attr_accessor :account_holder_id

  expected_output = Hash.new

  def initialize
    @balance = 1000
    @account = 'Unknown account'
    #@account_holder_id = 'Unknown account holder (unspecified account_holder_id).'
    success_output = { status: true, message: 'Success', date: Date.today, amount: amount}
    failure_output = { status: false, message: 'Withdrawal failed, insufficient funds.', date: Date.today}
  end


  #def withdraw(amount, account)
  def withdraw(amount)
    case
    when (amount <= @balance) then
      @balance -= amount
      expected_output = success_output
    else
      expected_output = failure_output
    end
  end


  #def account(account_holder_id)
  def account
    @account
  end


end
