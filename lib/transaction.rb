class Transaction

  attr_reader :credit, :debit, :date
  attr_accessor :balance

  def initialize(credit=nil, debit=nil, balance = 0)
    @credit = credit
    @debit = debit
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = balance
  end

end
