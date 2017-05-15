class Transaction

  attr_reader :credit, :debit, :date
  attr_accessor :balance

  def initialize(credit=nil, debit=nil, balance = 0)
    @credit = (credit == nil ? credit : '%.2f' % credit)
    @debit = (debit == nil ? debit : '%.2f' % debit)
    @date = Time.now.strftime("%d/%m/%Y")
    @balance = (balance == nil ? balance : '%.2f' % balance)
  end

end
