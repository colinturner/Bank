require 'statement'

describe Statement do
  let(:account) {double(:account)}
  let(:subject) {described_class.new(account)}

  context "upon intialization" do
    it "has an account" do
      expect(subject.account).to eq account
    end
  end

end
