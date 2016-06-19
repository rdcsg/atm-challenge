# ./lib/atm.rb

class Atm
  attr_accessor :balance

  def initialize
    @balance = 1000
    @account = 'bank'
  end

  def withdraw(amount, account)
    @balance -= amount
  end

end
