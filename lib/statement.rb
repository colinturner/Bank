class Statement

  attr_reader :account

  def initialize(account)
    @account = account
  end

  def show
    puts "date || credit || debit || balance"
    account.transactions.each do |val|
      puts "#{val.date} || #{val.credit} || #{val.debit} || #{val.balance}"
    end
    nil
  end

  nil
end
