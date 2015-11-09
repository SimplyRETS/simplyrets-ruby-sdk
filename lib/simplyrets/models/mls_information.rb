module SimplyRetsClient
  #
  class MlsInformation < BaseObject
    attr_accessor :status, :area, :days_on_market, :serving_name
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # MLS Status Code. Compliant with data dictionary v1.3 ListingStatus
        :'status' => :'status',

        # MLS Area. Generally a subdivision or community name.
        :'area' => :'area',

        # Amount of days the property has been Active
        :'days_on_market' => :'daysOnMarket',

        # Alias for the listing office or brokerage
        :'serving_name' => :'servingName'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'status' => :'String',
        :'area' => :'String',
        :'days_on_market' => :'Integer',
        :'serving_name' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'status']
        self.status = attributes[:'status']
      end

      if attributes[:'area']
        self.area = attributes[:'area']
      end

      if attributes[:'daysOnMarket']
        self.days_on_market = attributes[:'daysOnMarket']
      end

      if attributes[:'servingName']
        self.serving_name = attributes[:'servingName']
      end

    end

    def status=(status)
      allowed_values = ["Active", "ActiveUnderContract", "Pending", "Hold", "Withdrawn", "Closed", "Expired", "Cancelled", "Delete", "Incomplete", "ComingSoon"]
      if status && !allowed_values.include?(status)
        fail "invalid value for 'status', must be one of #{allowed_values}"
      end
      @status = status
    end

  end
end
