# ./lib/atm1st.rb

class Atm
  attr_accessor :balance, :account, :funds

  def initialize
    @funds = 1000
    @balance = 100
    @account = 'Unknown account'
  end

  #expected_output = Hash.new
  #success_output = { status: true, message: 'Success', date: Date.today, amount: amount}
  #failure_output = { status: false, message: 'Withdrawal failed, insufficient funds.', date: Date.today}

  def withdraw(amount)
    case
    when (amount <= @funds ) && (amount <= @balance) then
      @funds -= amount
      @balance -= amount
      'success' #expected_output = success_output
    else
      'failed'
      #expected_output = failure_output
    end
  end


end
