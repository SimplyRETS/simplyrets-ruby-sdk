module SimplyRetsClient
  # Rets MLS Listing Property
  class Property < BaseObject
    # Property roof description
    attr_accessor :roof

    # Property style description or short string
    attr_accessor :style

    # Square footage of the building associated with a listing
    attr_accessor :area

    attr_accessor :area_source

    # Number of full bathrooms
    attr_accessor :baths_full

    # Number of half bathrooms
    attr_accessor :baths_half

    # Number of stories or levels. Represented as a `double' to\naccount for half stories.
    attr_accessor :stories

    # Number of fireplaces
    attr_accessor :fireplaces

    # Heating description or short string
    attr_accessor :heating

    # Number of bedrooms
    attr_accessor :bedrooms

    # The properties interior features
    attr_accessor :interior_features

    # Square footage of the entire property lot
    attr_accessor :lot_size

    #
    attr_accessor :exterior_features

    # The subdivision or community name
    attr_accessor :subdivision

    # Abbreviated property type. RES is Residential, CND is CondoOrTownhome,\nRNT is Rental, MLF is Multi-Family, CRE is Commercial, LND is Land,\nFRM is Farm. See the 'propertySubType' field for more information.
    attr_accessor :type

    # The property's sub-type, i.e. SingleFamilyResidential,\nCondo, etc. Or a list of Sub Types for Mobile, such as\nExpando, Manufactured, Modular, etc.
    attr_accessor :sub_type

    # Year the property was built
    attr_accessor :year_built

    # Additional room information
    attr_accessor :additional_rooms

    # Yearly maintenance expense
    attr_accessor :maintenance_expense

    # Number of garage spaces
    attr_accessor :garage_spaces

    attr_accessor :pool_features

    attr_accessor :lot_description

    attr_accessor :occupant_type

    attr_accessor :occupant_name

    attr_accessor :foundation

    attr_accessor :laundry_features

    # The materials that were used in the construction of the property.
    attr_accessor :construction

    # The type(s) of flooring found within the property.
    attr_accessor :flooring

    # A description of the cooling or air conditioning features of the property.
    attr_accessor :cooling

    # View details and description
    attr_accessor :view

    # Water description and details
    attr_accessor :water

    attr_accessor :accessibility

    attr_accessor :parking

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {

        :'roof' => :'roof',

        :'style' => :'style',

        :'area' => :'area',

        :'area_source' => :'areaSource',

        :'baths_full' => :'bathsFull',

        :'baths_half' => :'bathsHalf',

        :'stories' => :'stories',

        :'fireplaces' => :'fireplaces',

        :'heating' => :'heating',

        :'bedrooms' => :'bedrooms',

        :'interior_features' => :'interiorFeatures',

        :'lot_size' => :'lotSize',

        :'exterior_features' => :'exteriorFeatures',

        :'subdivision' => :'subdivision',

        :'type' => :'type',

        :'sub_type' => :'subType',

        :'year_built' => :'yearBuilt',

        :'additional_rooms' => :'additionalRooms',

        :'maintenance_expense' => :'maintenanceExpense',

        :'garage_spaces' => :'garageSpaces',

        :'pool_features' => :'poolFeatures',

        :'lot_description' => :'lotDescription',

        :'occupant_type' => :'occupantType',

        :'occupant_name' => :'occupantName',

        :'foundation' => :'foundation',

        :'laundry_features' => :'laundryFeatures',

        :'construction' => :'construction',

        :'flooring' => :'flooring',

        :'cooling' => :'cooling',

        :'view' => :'view',

        :'water' => :'water',

        :'accessibility' => :'accessibility',

        :'parking' => :'parking'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'roof' => :'String',
        :'style' => :'String',
        :'area' => :'Integer',
        :'area_source' => :'String',
        :'baths_full' => :'Integer',
        :'baths_half' => :'Integer',
        :'stories' => :'Float',
        :'fireplaces' => :'Integer',
        :'heating' => :'String',
        :'bedrooms' => :'Integer',
        :'interior_features' => :'String',
        :'lot_size' => :'String',
        :'exterior_features' => :'String',
        :'subdivision' => :'String',
        :'type' => :'String',
        :'sub_type' => :'String',
        :'year_built' => :'Integer',
        :'additional_rooms' => :'String',
        :'maintenance_expense' => :'Float',
        :'garage_spaces' => :'Float',
        :'pool_features' => :'String',
        :'lot_description' => :'String',
        :'occupant_type' => :'String',
        :'occupant_name' => :'String',
        :'foundation' => :'String',
        :'laundry_features' => :'String',
        :'construction' => :'String',
        :'flooring' => :'String',
        :'cooling' => :'String',
        :'view' => :'String',
        :'water' => :'String',
        :'accessibility' => :'String',
        :'parking' => :'School'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'roof']
        self.roof = attributes[:'roof']
      end

      if attributes[:'style']
        self.style = attributes[:'style']
      end

      if attributes[:'area']
        self.area = attributes[:'area']
      end

      if attributes[:'areaSource']
        self.area_source = attributes[:'areaSource']
      end

      if attributes[:'bathsFull']
        self.baths_full = attributes[:'bathsFull']
      end

      if attributes[:'bathsHalf']
        self.baths_half = attributes[:'bathsHalf']
      end

      if attributes[:'stories']
        self.stories = attributes[:'stories']
      end

      if attributes[:'fireplaces']
        self.fireplaces = attributes[:'fireplaces']
      end

      if attributes[:'heating']
        self.heating = attributes[:'heating']
      end

      if attributes[:'bedrooms']
        self.bedrooms = attributes[:'bedrooms']
      end

      if attributes[:'interiorFeatures']
        self.interior_features = attributes[:'interiorFeatures']
      end

      if attributes[:'lotSize']
        self.lot_size = attributes[:'lotSize']
      end

      if attributes[:'exteriorFeatures']
        self.exterior_features = attributes[:'exteriorFeatures']
      end

      if attributes[:'subdivision']
        self.subdivision = attributes[:'subdivision']
      end

      if attributes[:'type']
        self.type = attributes[:'type']
      end

      if attributes[:'subType']
        self.type = attributes[:'subType']
      end

      if attributes[:'yearBuilt']
        self.year_built = attributes[:'yearBuilt']
      end

      if attributes[:'additionalRooms']
        self.additional_rooms = attributes[:'additionalRooms']
      end

      if attributes[:'maintenanceExpense']
        self.maintenance_expense = attributes[:'maintenanceExpense']
      end

      if attributes[:'garageSpaces']
        self.garage_spaces = attributes[:'garageSpaces']
      end

      if attributes[:'poolFeatures']
        self.pool_features = attributes[:'poolFeatures']
      end

      if attributes[:'lotDescription']
        self.lot_description = attributes[:'lotDescription']
      end

      if attributes[:'occupantType']
        self.occupant_type = attributes[:'occupantType']
      end

      if attributes[:'occupantName']
        self.occupant_name = attributes[:'occupantName']
      end

      if attributes[:'foundation']
        self.foundation = attributes[:'foundation']
      end

      if attributes[:'laundryFeatures']
        self.laundry_features = attributes[:'laundryFeatures']
      end

      if attributes[:'construction']
        self.construction = attributes[:'construction']
      end

      if attributes[:'flooring']
        self.flooring = attributes[:'flooring']
      end

      if attributes[:'cooling']
        self.cooling = attributes[:'cooling']
      end

      if attributes[:'view']
        self.view = attributes[:'view']
      end

      if attributes[:'water']
        self.water = attributes[:'water']
      end

      if attributes[:'accessibility']
        self.accessibility = attributes[:'accessibility']
      end

      if attributes[:'parking']
        self.parking = attributes[:'parking']
      end

    end

    # Custom attribute writer method checking allowed values (enum).
    def type=(type)
      allowed_values = ["RES", "CND", "RNT", "MLF", "CRE", "LND", "FRM"]
      if type && !allowed_values.include?(type)
        fail "invalid value for 'type', must be one of #{allowed_values}"
      end
      @type = type
    end

  end
end
