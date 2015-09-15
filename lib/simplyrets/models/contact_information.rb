module SimplyRetsClient
  #
  class ContactInformation < BaseObject
    attr_accessor :office, :cell, :full
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Contact Information Office Phone Number
        :'office' => :'office',

        # Contact Information Cell Phone
        :'cell' => :'cell',

        # Full pretty-printed address with suffix (if available)
        :'full' => :'full'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'office' => :'String',
        :'cell' => :'String',
        :'full' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'office']
        self.office = attributes[:'office']
      end

      if attributes[:'cell']
        self.cell = attributes[:'cell']
      end

      if attributes[:'full']
        self.full = attributes[:'full']
      end

    end

  end
end
