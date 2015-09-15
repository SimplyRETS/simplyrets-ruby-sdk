module SimplyRetsClient
  #
  class Office < BaseObject
    attr_accessor :contact, :name, :serving_name, :brokerid
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        #
        :'contact' => :'contact',

        # Pimary office name
        :'name' => :'name',

        # Primary office or brokerage name
        :'serving_name' => :'servingName',

        # Office or brokerage MLS identifier
        :'brokerid' => :'brokerid'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'contact' => :'ContactInformation',
        :'name' => :'String',
        :'serving_name' => :'String',
        :'brokerid' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'contact']
        self.contact = attributes[:'contact']
      end

      if attributes[:'name']
        self.name = attributes[:'name']
      end

      if attributes[:'servingName']
        self.serving_name = attributes[:'servingName']
      end

      if attributes[:'brokerid']
        self.brokerid = attributes[:'brokerid']
      end

    end

  end
end
