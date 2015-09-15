module SimplyRetsClient
  module SimplyRets
    class << self
      attr_accessor :logger

      # A SimplyRets configuration object. Must act like a hash and return sensible
      # values for all SimplyRets configuration options. See SimplyRets::Configuration.
      attr_accessor :configuration

      attr_accessor :resources

      # Call this method to modify defaults in your initializers.
      #
      # @example
      #   SimplyRets.configure do |config|
      #     config.api_key['api_key'] = '1234567890abcdef'     # api key authentication
      #     config.username = 'wordlover'           # http basic authentication
      #     config.password = 'i<3words'            # http basic authentication
      #     config.format = 'json'                  # optional, defaults to 'json'
      #   end
      #
      def configure
        yield(configuration) if block_given?

        self.logger = configuration.logger

        # remove :// from scheme
        configuration.scheme.sub!(/:\/\//, '')

        # remove http(s):// and anything after a slash
        configuration.host.sub!(/https?:\/\//, '')
        configuration.host = configuration.host.split('/').first

        # Add leading and trailing slashes to base_path
        configuration.base_path = "/#{configuration.base_path}".gsub(/\/+/, '/')
        configuration.base_path = "" if configuration.base_path == "/"
      end

      def authenticated?
        !SimplyRets.configuration.auth_token.nil?
      end

      def de_authenticate
        SimplyRets.configuration.auth_token = nil
      end

      def authenticate
        return if SimplyRets.authenticated?

        if SimplyRets.configuration.username.nil? || SimplyRets.configuration.password.nil?
          raise ApiError, "Username and password are required to authenticate."
        end

        request = SimplyRets::Request.new(
          :get,
          "account/authenticate/{username}",
          :params => {
            :username => SimplyRets.configuration.username,
            :password => SimplyRets.configuration.password
          }
        )

        response_body = request.response.body
        SimplyRets.configuration.auth_token = response_body['token']
      end

      def last_response
        Thread.current[:simplyrets_last_response]
      end

      def last_response=(response)
        Thread.current[:simplyrets_last_response] = response
      end
    end
  end
end
