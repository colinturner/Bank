require 'account'

describe Account do

  context "upon intialization" do
    it "has no transactions" do
      expect(subject.transactions).to eq []
    end
  end

  context "deposit funds" do
    it { is_expected.to respond_to :deposit }

    it "should create a transaction" do
      subject.deposit(50)
      expect(subject.transactions.length).to eq 1
    end
  end

  context "withdraw funds" do
    it { is_expected.to respond_to :withdraw }

    it "should create a transaction" do
      subject.withdraw(20)
      expect(subject.transactions.length).to eq 1
    end

    it "should create a transaction with negative funds" do
      subject.withdraw(20)
      expect(subject.transactions.first.funds).to eq -20
    end
  end

end
