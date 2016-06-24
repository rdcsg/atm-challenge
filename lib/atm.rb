class Atm

  attr_accessor :funds

  def initialize
    @funds = 1000
  end


  def withdraw(amount, pin_code, account)
    case
    when incorrect_pin?(pin_code, account.pin_code) then
      { status: false, message: 'wrong pin', date: Date.today }
    when card_expired?(account.exp_date) then
      { status: false, message: 'denied, card expired.', date: Date.today }
    when insufficient_funds_in_account?(amount, account) then
      { status: false, message: 'insufficient funds', date: Date.today }
    when insufficient_funds_in_atm?(amount) then
      { status: false, message: 'insufficient funds in ATM', date: Date.today }
    else
      perform_transaction(amount, account)
    end
  end



private


  def incorrect_pin?(entered_pin_code, pre_set_pin_code)
    entered_pin_code != pre_set_pin_code
  end

  def card_expired?(pre_set_exp_date)
    # use strptime (a date function) for format the expiration date so that
    # a comparison with today's date is possible
    Date.today > Date.strptime(pre_set_exp_date, '%m %y')
  end


  def insufficient_funds_in_account?(amount,account)
    amount > account.balance
  end


  def insufficient_funds_in_atm?(amount)
    amount > @funds
  end


  def perform_transaction(amount, account)
    @funds -= amount
    account.balance -= amount
    { status: true, message: 'success', date: Date.today, amount: amount }

  end



end
