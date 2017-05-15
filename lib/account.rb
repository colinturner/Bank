require_relative 'transaction'

class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new(amount)
    self.transactions << transaction
  end

  def withdraw(amount)
    transaction = Transaction.new(-amount)
    self.transactions << transaction
  end

end
