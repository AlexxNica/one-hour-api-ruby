module OneHourApi
  class BaseFactory
    def initialize(client, target_class)
      @target_class = target_class
      @client = client
    end

    def self.delegate_to_target_class(*method_names)
      method_names.each do |method_name|
        define_method method_name do |*args|
          @target_class.send(method_name, @client, *args)
        end
      end
    end

    delegate_to_target_class :get
  end
end
