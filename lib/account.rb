require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :transactions
  attr_accessor :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    increase_balance_by(amount)
    add_transaction_of(amount, debit=nil)
  end

  def withdraw(amount)
    can_user_withdraw(amount)
    decrease_balance_by(amount)
    add_transaction_of(credit=nil, amount)
  end

  def summary
    Statement.new(self).show
  end

  private

  def can_user_withdraw(amount)
    fail "£#{balance} available in account. Please deposit funds first." if self.balance == 0
    fail "£#{balance} available in account. Please withdraw a lower amount." if self.balance < amount
  end

  def add_to_account_history(transaction)
    self.transactions << transaction
  end

  def increase_balance_by(amount)
    self.balance += amount
  end

  def decrease_balance_by(amount)
    self.balance -= amount
  end

  def add_transaction_of(credit, debit)
    transaction = Transaction.new(credit, debit, balance)
    add_to_account_history(transaction)
  end

end
