class Transaction

  attr_reader :funds, :date

  def initialize(funds)
    @funds = funds
    @date = Time.now.strftime("%d/%m/%Y")
  end

end
