require_relative 'transaction'

class Account

  attr_reader :transactions
  attr_accessor :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    increase_balance(amount)
    transaction = Transaction.new(amount, balance)
    add_to_account(transaction)
  end

  def withdraw(amount)
    can_user_withdraw(amount)
    decrease_balance(amount)
    transaction = Transaction.new(-amount, balance)
    add_to_account(transaction)
  end

  private

  def can_user_withdraw(amount)
    fail "£#{balance} available in account. Please deposit funds first." if self.balance == 0
    fail "£#{balance} available in account. Please withdraw a lower amount." if self.balance < amount
  end

  def add_to_account(transaction)
    self.transactions << transaction
  end

  def increase_balance(amount)
    self.balance += amount
  end

  def decrease_balance(amount)
    self.balance -= amount
  end

end
