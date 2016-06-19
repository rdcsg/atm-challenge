class Atm

  attr_accessor :funds, :account
  amount = 0

  def initialize
    @funds = 1000
  end


  def withdraw(amount, account)
    case
    when amount > account.balance then
      return
    else
      @funds -= amount
      account.balance -= amount
      { status: true, message: 'success', date: Date.today, amount: amount }
    end
  end



end
