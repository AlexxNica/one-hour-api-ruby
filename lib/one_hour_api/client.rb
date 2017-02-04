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

    def auth_request(verb, endpoint)
      begin
        case verb
        when :get
          response = RestClient.get(@options[:root] + endpoint, {params: {public_key: @public_key, secret_key: @secret_key}})
        else
          raise ArgumentError, 'wrong HTTP verb'
        end
        res = JSON.parse(response.body)
        raise ServerError if !res["status"]
        case res["status"]["code"]
        when 0
          res["results"]
        else
          raise ResultError, "#{ verb.to_s.upcase } #{ endpoint } failed with code #{ res["status"]["code"] }: #{res["status"]["msg"] }"
        end

      rescue RestClient::ExceptionWithResponse => e
        raise ServerError, e.message
      end
    end

    def auth_get(endpoint)
      auth_request(:get, endpoint)
    end

    def Account
      OneHourApi::Resource::AccountFactory.new(self, OneHourApi::Resource::Account)
    end
  end
end
