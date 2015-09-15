module SimplyRetsClient
  #
  class Parking < BaseObject
    attr_accessor :spaces, :description, :leased
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Number of parking spaces
        :'spaces' => :'spaces',

        # Parking features description
        :'description' => :'description',

        #
        :'leased' => :'leased'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'spaces' => :'Integer',
        :'description' => :'String',
        :'leased' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'spaces']
        self.spaces = attributes[:'spaces']
      end

      if attributes[:'description']
        self.description = attributes[:'description']
      end

      if attributes[:'leased']
        self.leased = attributes[:'leased']
      end

    end

  end
end
