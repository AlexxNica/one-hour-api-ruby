module OneHourApi
  module Resource
    class AccountFactory < BaseFactory
    end

    class Account
      attr_reader :credits, :account_id, :account_username, :role, :uuid

      def initialize(client, object)
        @credits = object[:credits]
        @account_id = object[:account_id]
        @account_username = object[:account_username]
        @role = object[:role]
        @uuid = object[:uuid]
      end

      def self.get(client)
        self.new(client, client.auth_get("/account"))
      end
    end
  end
end
