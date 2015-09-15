module SimplyRetsClient
  #
  class Broker < BaseObject
    attr_accessor :startdate
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Start Date
        :'startdate' => :'startdate'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'startdate' => :'DateTime'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'startdate']
        self.startdate = attributes[:'startdate']
      end

    end

  end
end
