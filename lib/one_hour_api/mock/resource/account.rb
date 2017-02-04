module OneHourApi
  module Mock
    module Resource
      class Account < OneHourApi::Resource::Account
        def self.get(client)
          self.new(client, {
            credits: "10.0",
            account_id: "1",
            account_username: "you",
            role: "customer",
            uuid: "85284b85-8e04-42d1-86d0-934ff62193be"
          })
        end
      end
    end
  end
end
