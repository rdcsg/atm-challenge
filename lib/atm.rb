# ./lib/atm.rb

class Atm
  attr_accessor :balance

  def initialize
    @balance = 1000
    @account_holder = 'bank'
  end

  def withdraw(amount, account)
    @balance -= amount
    @account_holder = account
  end

end
