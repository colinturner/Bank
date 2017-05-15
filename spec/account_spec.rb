require 'account'

describe Account do

  context "upon intialization" do
    it "has no transactions" do
      expect(subject.transactions).to eq []
    end
  end

  context "deposit funds" do
    it { is_expected.to respond_to :deposit }
  end

  context "withdraw funds" do
    it { is_expected.to respond_to :withdraw }
  end

end
