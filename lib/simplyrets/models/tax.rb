module SimplyRetsClient
  #
  class Tax < BaseObject
    attr_accessor :id, :annual_amount, :year
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Tax Parcel ID for the listing
        :'id' => :'id',

        # Annual tax amount in USD
        :'annual_amount' => :'annualAmount',

        # Tax Year
        :'year' => :'year'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'id' => :'String',
        :'annual_amount' => :'String',
        :'year' => :'Integer'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'id']
        self.id = attributes[:'id']
      end

      if attributes[:'annualAmount']
        self.annual_amount = attributes[:'annualAmount']
      end

      if attributes[:'year']
        self.year = attributes[:'year']
      end

    end

  end
end
