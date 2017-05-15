class Transaction

  attr_reader :credit, :debit, :date
  attr_accessor :balance

  def initialize(credit, debit, balance = 0)
    # @funds = funds
    @credit = credit
    @debit = debit
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = balance
  end

end
