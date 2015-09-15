module SimplyRetsClient
  #
  class Sales < BaseObject
    attr_accessor :agent, :close_date, :close_price, :contract_date, :office
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # RETS Sales data agent id
        :'agent' => :'agent',

        # RETS Sales data close date
        :'close_date' => :'closeDate',

        # RETS Sales data sold price
        :'close_price' => :'closePrice',

        # RETS Sales data contract date
        :'contract_date' => :'contractDate',

        # RETS Sales data selling office/brokerage id
        :'office' => :'office'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'agent' => :'String',
        :'close_date' => :'DateTime',
        :'close_price' => :'Integer',
        :'contract_date' => :'DateTime',
        :'office' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'agent']
        self.agent = attributes[:'agent']
      end

      if attributes[:'closeDate']
        self.close_date = attributes[:'closeDate']
      end

      if attributes[:'closePrice']
        self.close_price = attributes[:'closePrice']
      end

      if attributes[:'contractDate']
        self.contract_date = attributes[:'contractDate']
      end

      if attributes[:'office']
        self.office = attributes[:'office']
      end

    end

  end
end
