require 'statement'
require 'account'

describe Statement do

  context "upon intialization" do
    it "has an account" do
      account = Account.new
      account.deposit(5)
      account.withdraw(2)
      account.deposit(10)
      state = described_class.new(account)
      expect(state.account).to eq account
    end
  end

  context "show" do
    it "displays the account history" do
      account = Account.new
      account.deposit(5)
      account.withdraw(2)
      account.deposit(10)
      state = described_class.new(account)
      expect(state.show).to eq nil
    end
  end

end
