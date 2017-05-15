class Statement

  attr_reader :account

  def initialize(account)
    @account = account
  end

  def show
    puts "date || credit || debit || balance"
    account.transactions.each do |val|
      if val.funds > 0
        puts "#{val.date} || #{val.funds} || || #{val.balance}"
      else
        puts "#{val.date} || || #{val.funds} || #{val.balance}"
      end
    end
    nil
  end

end
