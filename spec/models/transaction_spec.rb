require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new(50)}
  before(:each) { transaction = Transaction.new(50, debit=nil) }

  context "upon initalization" do
    it "has specified amount of funds" do
      expect(subject.credit).to eq 50
    end

    it "should have a date completed" do
      expect(transaction.date).to eq Time.now.strftime("%d/%m/%Y")
    end
  end

end
