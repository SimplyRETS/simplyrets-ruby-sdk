module SimplyRetsClient
  #
  class GeographicData < BaseObject
    attr_accessor :county, :lat, :lng, :market_area, :directions
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Listing county
        :'county' => :'county',

        # Listing latitude (if available)
        :'lat' => :'lat',

        # Listing longitude (if available)
        :'lng' => :'lng',

        # Listing GeoMarket area. May be the same as mlsArea
        :'market_area' => :'marketArea',

        # Directions to the property
        :'directions' => :'directions'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'county' => :'String',
        :'lat' => :'Float',
        :'lng' => :'Float',
        :'market_area' => :'String',
        :'directions' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'county']
        self.county = attributes[:'county']
      end

      if attributes[:'lat']
        self.lat = attributes[:'lat']
      end

      if attributes[:'lng']
        self.lng = attributes[:'lng']
      end

      if attributes[:'marketArea']
        self.market_area = attributes[:'marketArea']
      end

      if attributes[:'directions']
        self.directions = attributes[:'directions']
      end

    end

  end
end
