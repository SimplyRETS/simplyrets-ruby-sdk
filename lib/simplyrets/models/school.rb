module SimplyRetsClient
  #
  class School < BaseObject
    attr_accessor :district, :elementary_school, :middle_school, :high_school
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # School district name.
        :'district' => :'district',

        # Elementary school name.
        :'elementary_school' => :'elementarySchool',

        # Middle or junior school name
        :'middle_school' => :'middleSchool',

        # High school name
        :'high_school' => :'highSchool'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'district' => :'String',
        :'elementary_school' => :'String',
        :'middle_school' => :'String',
        :'high_school' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'district']
        self.district = attributes[:'district']
      end

      if attributes[:'elementarySchool']
        self.elementary_school = attributes[:'elementarySchool']
      end

      if attributes[:'middleSchool']
        self.middle_school = attributes[:'middleSchool']
      end

      if attributes[:'highSchool']
        self.high_school = attributes[:'highSchool']
      end

    end

  end
end
