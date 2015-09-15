module SimplyRetsClient
  #
  class Error < BaseObject
    attr_accessor :error, :message
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Error code. In general, we try to adhere to HTTP status code\nand use these error statuses for detailed reporting.\n
        :'error' => :'error',

        # Status message with an explanation of the error
        :'message' => :'message'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'error' => :'Integer',
        :'message' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'error']
        self.error = attributes[:'error']
      end

      if attributes[:'message']
        self.message = attributes[:'message']
      end

    end

  end
end
