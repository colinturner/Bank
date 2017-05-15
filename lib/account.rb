require_relative 'transaction'

class Account

  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new
    self.transactions << transaction
  end

  def withdraw
  end

end
