require "spec_helper"

module OneHourApi::Mock::Resource
  describe Account do
    before(:each) do
      @mock_client = OneHourApi::Mock::Client.new
    end

    describe "self.get" do
      it "should return mock account info" do
        account = Account.get(@mock_client)
        expect(account.credits).to eq "10.0"
      end
    end
  end
end
