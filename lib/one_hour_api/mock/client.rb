module OneHourApi
  module Mock
    class Client < Client
      def initialize
      end

      def auth_request(verb, endpoint)
        raise "Missing mock for #{ verb.to_s.upcase } #{ endpoint }"
      end

      def Account
        OneHourApi::Resource::AccountFactory.new(self, Resource::Account)
      end
    end
  end
end
