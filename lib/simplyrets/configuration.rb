module SimplyRets

  class Configuration
    require 'simplyrets/version'

    attr_accessor :format, :api_key, :username, :password,
                  :auth_token, :scheme, :host, :base_path,
                  :user_agent, :logger, :inject_format,
                  :force_ending_format, :camelize_params

    # Defaults go in here..
    def initialize
      @format = 'json'
      @scheme = 'https'
      @host = 'api.simplyrets.com'
      @base_path = '/'
      @user_agent = "ruby-#{SimplyRets::VERSION}"
      @inject_format = false
      @force_ending_format = false
      @camelize_params = true
    end

  end

end
