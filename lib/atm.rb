# ./lib/atm.rb

class Atm
  attr_accessor :balance, :account

  def initialize
    @balance = 1000
    @account = 'Unknown account'
  end



  def withdraw(amount, account)
    case
    when (amount <= @balance) then
      @balance -= amount
      'success' #{ status: true, message: 'Success', date: Date.today, amount: amount}
    else
      'failed withdrawal'
    #  expected_output = { status: false, message: 'Withdrawal failed, insufficient funds.', date: Date.today}
    end
  end


end
