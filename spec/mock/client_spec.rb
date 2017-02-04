require "spec_helper"

module OneHourApi::Mock
  describe Client do
    before(:each) do
      @mock_client = Client.new
    end

    describe "auth_request" do
      it "should prevent calling a missing mock" do
        expect { @mock_client.auth_request(:get, 'no-mock-implemented') }.to raise_error('Missing mock for GET no-mock-implemented')
      end
    end
  end
end
