# ./lib/atm.rb

class Atm
  attr_accessor :balance, :account

  def initialize
    @balance = 1000
    @account = 'Unknown account'
    @funds = 1000
  end

  expected_output = Hash.new
  success_output = { status: true, message: 'Success', date: Date.today, amount: amount}
  failure_output = { status: false, message: 'Withdrawal failed, insufficient funds.', date: Date.today}

  def withdraw(amount, account)
    case
    when (@funds >= amount) then
      case
      when (amount <= @balance) then
        @balance -= amount
        'success' #expected_output = success_output
      else
        'failed'
        #expected_output = failure_output
      end
    else
      #expected_output = failure_output
    end
    end
  end
end
