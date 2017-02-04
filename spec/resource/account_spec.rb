require "spec_helper"

module OneHourApi::Resource

  describe AccountFactory do
  end

  describe Account do
    describe "contructor" do
      it "sets its values" do
        account = Account.new({}, {
          credits: "10.0",
          account_id: "1",
          account_username: "you",
          role: "customer",
          uuid: "85284b85-8e04-42d1-86d0-934ff62193be"
        })
        expect(account.credits).to eq "10.0"
        expect(account.account_id).to eq "1"
        expect(account.account_username).to eq "you"
        expect(account.role).to eq "customer"
        expect(account.uuid).to eq "85284b85-8e04-42d1-86d0-934ff62193be"
      end
    end

    describe "get" do
      before(:each) do
        @client = spy('client')
      end

      it "should GET /account" do
        Account.get(@client)
        expect(@client).to have_received(:auth_get).with('/account')
      end
    end
  end

end
