module SimplyRetsClient
  #
  class Property < BaseObject
    attr_accessor :roof, :style, :area, :area_source, :baths_full, :baths_half, :stories, :fireplaces, :heating, :bedrooms, :interior_features, :lot_size, :exterior_features, :subdivision, :type, :year_built, :additional_rooms, :maintenance_expense, :garage_spaces, :pool_features, :lot_description, :occupant_type, :occupant_name, :foundation, :laundry_features, :construction_materials, :view, :water, :accessibility, :parking
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Property roof description
        :'roof' => :'roof',

        # Property style description or short string
        :'style' => :'style',

        # Square footage of the building associated with a listing
        :'area' => :'area',

        #
        :'area_source' => :'areaSource',

        # Number of full bathrooms
        :'baths_full' => :'bathsFull',

        # Number of half bathrooms
        :'baths_half' => :'bathsHalf',

        # Number of stories or levels. Represented as a `double&#39; to\naccount for half stories.\n
        :'stories' => :'stories',

        # Number of fireplaces
        :'fireplaces' => :'fireplaces',

        # Heating description or short string
        :'heating' => :'heating',

        # Number of bedrooms
        :'bedrooms' => :'bedrooms',

        # The properties interior features
        :'interior_features' => :'interiorFeatures',

        # Square footage of the entire property lot
        :'lot_size' => :'lotSize',

        #
        :'exterior_features' => :'exteriorFeatures',

        # The subdivision or community name
        :'subdivision' => :'subdivision',

        # Property type (Residential, Multi-Family, Rental)
        :'type' => :'type',

        # Year the property was built
        :'year_built' => :'yearBuilt',

        # Additional room information
        :'additional_rooms' => :'additionalRooms',

        # Yearly maintenance expense
        :'maintenance_expense' => :'maintenanceExpense',

        # Number of garage spaces
        :'garage_spaces' => :'garageSpaces',

        #
        :'pool_features' => :'poolFeatures',

        #
        :'lot_description' => :'lotDescription',

        #
        :'occupant_type' => :'occupantType',

        #
        :'occupant_name' => :'occupantName',

        #
        :'foundation' => :'foundation',

        #
        :'laundry_features' => :'laundryFeatures',

        #
        :'construction_materials' => :'constructionMaterials',

        # View details and description
        :'view' => :'view',

        # Water description and details
        :'water' => :'water',

        #
        :'accessibility' => :'accessibility',

        #
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
        :'construction_materials' => :'String',
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

      if attributes[:'constructionMaterials']
        self.construction_materials = attributes[:'constructionMaterials']
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

    def type=(type)
      allowed_values = ["RES", "CND", "RNT"]
      if type && !allowed_values.include?(type)
        fail "invalid value for 'type', must be one of #{allowed_values}"
      end
      @type = type
    end

  end
end
