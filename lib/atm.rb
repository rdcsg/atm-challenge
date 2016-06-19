# ./lib/atm.rb

class Atm
  attr_accessor :balance, :account

  def initialize
    @balance = 1000
    @account = 'Unknown account'
  end

  expected_output = Hash.new
  success_output = { status: true, message: 'Success', date: Date.today, amount: amount}
  failure_output =

  def withdraw(amount, account)
    case
    when (amount <= @balance) then
      @balance -= amount
      'success' # expected_output = success_output
    else
      'failed withdrawal'
    #  expected_output = failure_output
    end
  end


end
