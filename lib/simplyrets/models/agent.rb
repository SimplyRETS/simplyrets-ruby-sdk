module SimplyRetsClient
  #
  class Agent < BaseObject
    attr_accessor :last_name, :contact, :first_name, :id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Agent last name
        :'last_name' => :'lastName',

        # Agent contact info. This information is only present when\nyour RETS feed specifies the agent wishes to show their\ncontact information publicly.\n
        :'contact' => :'contact',

        # Agent first name
        :'first_name' => :'firstName',

        # Well known Agent MLS number or id.
        :'id' => :'id'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'last_name' => :'String',
        :'contact' => :'ContactInformation',
        :'first_name' => :'String',
        :'id' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'lastName']
        self.last_name = attributes[:'lastName']
      end

      if attributes[:'contact']
        self.contact = attributes[:'contact']
      end

      if attributes[:'firstName']
        self.first_name = attributes[:'firstName']
      end

      if attributes[:'id']
        self.id = attributes[:'id']
      end

    end

  end
end
