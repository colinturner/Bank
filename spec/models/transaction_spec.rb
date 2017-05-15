require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new(50)}
  before(:each) { transaction = Transaction.new(50)}

  context "upon initalization" do
    it "has specified amount of funds" do
      expect(subject.funds).to eq 50
    end
  end

end


# transaction must be initialized with a negative (withdraw) number or a positive (deposit) number. It should also be initalized with a date. Not sure what to do about balance, maybe it should be deduced from the last transaction's balance, summed to this transaction's amount
