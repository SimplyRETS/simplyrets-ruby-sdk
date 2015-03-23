
require 'monkey'
require 'simplyrets/configuration'
require 'simplyrets/request'
require 'simplyrets/response'
require 'simplyrets/version'
require 'logger'

module SimplyRets

  class << self
    attr_accessor :logger

    # A SimplyRets configuration object. Must act like a hash and
    # return sensible values for all SimplyRets configuration
    # options. See SimplyRets::Configuration.
    attr_accessor :configuration

    attr_accessor :resources

    # Call this method to modify defaults in your initializers.
    #
    # @example
    #   SimplyRets.configure do |config|
    #     config.username = 'simplyrets'
    #     config.password = 'simplyrets'
    #     config.format = 'json'         # optional, defaults to 'json'
    #   end
    #
    def configure
      self.configuration ||= Configuration.new
      yield(configuration) if block_given?

      # Configure logger.  Default to use Rails
      self.logger ||= configuration.logger || (defined?(Rails) ? Rails.logger : Logger.new(STDOUT))

      # remove :// from scheme
      configuration.scheme.sub!(/:\/\//, '')

      # remove http(s):// and anything after a slash
      configuration.host.sub!(/https?:\/\//, '')
      configuration.host = configuration.host.split('/').first

      # Add leading and trailing slashes to base_path
      configuration.base_path = "/#{configuration.base_path}".gsub(/\/+/, '/')
      configuration.base_path = "" if configuration.base_path == "/"
    end

  end

end

class ServerError < StandardError
end

class ClientError < StandardError
end
