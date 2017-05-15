require 'account'

describe Account do

  context "upon intialization" do
    it "has no transactions" do
      expect(subject.transactions).to eq []
    end
  end

  context "deposit funds" do
    it { is_expected.to respond_to :deposit }

    it "should deposit a transaction" do
      # transaction = double(:transaction)
      subject.deposit(50)
      expect(subject.transactions.length).to eq 1
    end
  end

  context "withdraw funds" do
    it { is_expected.to respond_to :withdraw }
  end

end
