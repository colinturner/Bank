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
    before(:each) do
      allow(subject).to receive(:balance) {100}
    end

    it { is_expected.to respond_to :withdraw }

    it "should create a transaction" do
      subject.withdraw(20)
      expect(subject.transactions.length).to eq 1
    end

    it "can create a transaction with negative funds" do
      subject.withdraw(20)
      expect(subject.transactions.first.debit).to eq 20
    end
  end

  context "balance" do
    it "should update after each transaction" do
      subject.deposit(50)
      expect(subject.balance).to eq 50
      subject.deposit(60)
      expect(subject.balance).to eq 110
      subject.withdraw(30)
      expect(subject.balance).to eq 80
    end
  end

  # context "statement" do
  #   it "can be displayed" do
  #     subject.deposit(5)
  #     subject.withdraw(2)
  #     subject.deposit(10)
  #     expect(subject.statement)
  #   end
  # end

end
