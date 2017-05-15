class Transaction

  attr_reader :credit, :debit, :date
  attr_accessor :balance

  def initialize(credit=nil, debit=nil, balance = 0)
    @credit = two_decimal_places(credit)
    @debit = two_decimal_places(debit)
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = two_decimal_places(balance)
  end

  private

  def two_decimal_places(value)
    value == nil ? value : '%.2f' % value
  end

end
