require 'rest-client'
require 'JSON'

module OneHourApi
  class Client
    attr_reader :options

    DEFAULT_OPTIONS = {
      :root => 'https://www.onehourtranslation.com/api/2',
    }

    def initialize(public_key, secret_key, options={})
      if !public_key
        raise ArgumentError, 'public key required'
      end
      if !secret_key
        raise ArgumentError, 'secret key required'
      end

      @public_key = public_key
      @secret_key = secret_key
      options = DEFAULT_OPTIONS.merge(options)
      @options = options
    end

    def auth_get(endpoint)
      response = RestClient.get(@options[:root] + endpoint, {params: {public_key: @public_key, secret_key: @secret_key}})
      res = JSON.parse(response.body)
      res["results"]
    end

    def Account
      OneHourApi::Resource::AccountFactory.new(self, OneHourApi::Resource::Account)
    end
  end
end
