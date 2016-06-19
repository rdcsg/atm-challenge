# ./lib/atm.rb

class Atm
  attr_accessor :balance
  #attr_accessor :account_holder_id

  def initialize
    @balance = 1000
    @account = 'Unknown account'
  end


  #def account(account_holder_id)
  def account
    @account
  end


  #def withdraw(amount, account)
  def withdraw(amount)
    case
    when (amount <= @balance) then
      @balance -= amount
      expected_output = { status: true, message: 'Success', date: Date.today, amount: amount}
    else
      expected_output = { status: false, message: 'Withdrawal failed, insufficient funds.', date: Date.today}
    end
  end



end
