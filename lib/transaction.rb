class Transaction

  attr_reader :funds, :date
  attr_accessor :balance

  def initialize(funds, balance=0)
    @funds = funds
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = balance
  end

end
