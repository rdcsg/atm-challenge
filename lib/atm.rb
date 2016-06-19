# ./lib/atm.rb

class Atm
  attr_accessor :balance
  #attr_accessor :account_holder_id

  success_output = Hash.new { |hash, key| hash[key] =  }
  failure_output = {}
  expected_output = { status: true, message: 'success', date: Date.today, amount: amount}

  def initialize
    @balance = 1000
    @account_holder_id = 'Unknown account holder (unspecified account_holder_id).'
  end


  #def withdraw(amount, account)
  def withdraw(amount)
    when amount <= balance
      @balance -= amount

      #@account_holder_id = account
    else
      expected_output = { status: false, message: 'Withdrawal failed, insufficient funds.', date: Date.today, amount: amount}
    end
    puts expected_output
  end


  #def account(account_holder_id)
  def account
    @account_holder_id
  end


end
