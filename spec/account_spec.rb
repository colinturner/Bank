require 'account'

describe Account do

  context "deposit funds" do
    it { is_expected.to respond_to :deposit }
  end

  context "withdraw funds" do
    it { is_expected.to respond_to :withdraw }
  end

end
