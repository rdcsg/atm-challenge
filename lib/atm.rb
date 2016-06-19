class Atm

  attr_accessor :funds #:account

  def initialize
    @funds = 1000
    @actual_pin = 1234
  end


  def withdraw(amount, pin_code, account)
    case
    when incorrect_pin?(pin_code, account.pin_code) then
      { status: false, message: 'wrong pin', date: Date.today }
    when insufficient_funds_in_account?(amount, account) then
      { status: true, message: 'insufficient funds', date: Date.today }
    when insufficient_funds_in_atm?(amount) then
      { status: false, message: 'insufficient funds in ATM', date: Date.today }
    else
      perform_transaction(amount, account)
    end
  end



private


  def incorrect_pin?(pin_code, actual_pin)
   pin_code != actual_pin
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
