module SimplyRetsClient
  #
  class StreetAddress < BaseObject
    attr_accessor :country, :postal_code, :street_name, :city, :street_number, :full, :cross_street, :state
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Street address country (United States or Canada)
        :'country' => :'country',

        # Street Address postal code
        :'postal_code' => :'postalCode',

        # Name of the street
        :'street_name' => :'streetName',

        # City name
        :'city' => :'city',

        # Street number
        :'street_number' => :'streetNumber',

        # Full pretty-printed address with suffix (if available)
        :'full' => :'full',

        # Known cross street
        :'cross_street' => :'crossStreet',

        # state or province
        :'state' => :'state'
      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'country' => :'String',
        :'postal_code' => :'String',
        :'street_name' => :'String',
        :'city' => :'String',
        :'street_number' => :'Integer',
        :'full' => :'String',
        :'cross_street' => :'String',
        :'state' => :'String'
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'country']
        self.country = attributes[:'country']
      end

      if attributes[:'postalCode']
        self.postal_code = attributes[:'postalCode']
      end

      if attributes[:'streetName']
        self.street_name = attributes[:'streetName']
      end

      if attributes[:'city']
        self.city = attributes[:'city']
      end

      if attributes[:'streetNumber']
        self.street_number = attributes[:'streetNumber']
      end

      if attributes[:'full']
        self.full = attributes[:'full']
      end

      if attributes[:'crossStreet']
        self.cross_street = attributes[:'crossStreet']
      end

      if attributes[:'state']
        self.state = attributes[:'state']
      end

    end

  end
end
