module SimplyRetsClient
  #
  class Listing < BaseObject
    attr_accessor :property, :mls_id, :showing_instructions, :office, :disclaimer, :address, :list_date, :agent, :modified, :school, :sales, :photos, :list_price, :listing_id, :mls, :geo, :tax, :remarks, :private_remarks, :lease_term, :lease_type
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {

        # Specific property data associated with listing.
        :'property' => :'property',

        # A unique identifier for this listing specific to the SimplyRETS API.\n
        :'mls_id' => :'mlsId',

        # Public instructions for showing the property.
        :'showing_instructions' => :'showingInstructions',

        # Listing office or brokerage.
        :'office' => :'office',

        # Data accuracy disclaimer. The value in the disclaimer may\nchange depending on your MLS vendors rules.\n
        :'disclaimer' => :'disclaimer',

        # Comprehensive property address information
        :'address' => :'address',

        # Date and time the listing became Active
        :'list_date' => :'listDate',

        # Comprehensive listing agent information
        :'agent' => :'agent',

        # Date and time of the last modification
        :'modified' => :'modified',

        # Comprehensive school zone data
        :'school' => :'school',

        # Sales data
        :'sales' => :'sales',

        # Photos of the property. Images are served over https and are\nsuitable for production use on secure websites\n
        :'photos' => :'photos',

        # Price of the listing
        :'list_price' => :'listPrice',

        # Data Dictionary v1.3 ListingId. The well known identifier\nfor the listing. The value may be identical to\nmlsId. However, listingId is intended to be the value used\nby a human to retrieve the information about a specific\nlisting.\n
        :'listing_id' => :'listingId',

        # MLS vendor information and data
        :'mls' => :'mls',

        # Geographic data for the listing
        :'geo' => :'geo',

        # Associate tax data
        :'tax' => :'tax',

        # Description or remarks
        :'remarks' => :'remarks',

        # Agent only remarks
        :'private_remarks' => :'privateRemarks',

        #
        :'lease_term' => :'leaseTerm',

        #
        :'lease_type' => :'leaseType'

      }
    end

    # attribute type
    def self.simplyrets_types
      {
        :'property' => :'Property',
        :'mls_id' => :'Integer',
        :'showing_instructions' => :'String',
        :'office' => :'Office',
        :'disclaimer' => :'String',
        :'address' => :'StreetAddress',
        :'list_date' => :'DateTime',
        :'agent' => :'Agent',
        :'modified' => :'DateTime',
        :'school' => :'School',
        :'sales' => :'Sales',
        :'photos' => :'Array<String>',
        :'list_price' => :'Float',
        :'listing_id' => :'String',
        :'mls' => :'MlsInformation',
        :'geo' => :'GeographicData',
        :'tax' => :'Tax',
        :'remarks' => :'String',
        :'private_remarks' => :'String',
        :'lease_term' => :'String',
        :'lease_type' => :'String'

      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'property']
        self.property = attributes[:'property']
      end

      if attributes[:'mlsId']
        self.mls_id = attributes[:'mlsId']
      end

      if attributes[:'showingInstructions']
        self.showing_instructions = attributes[:'showingInstructions']
      end

      if attributes[:'office']
        self.office = attributes[:'office']
      end

      if attributes[:'disclaimer']
        self.disclaimer = attributes[:'disclaimer']
      end

      if attributes[:'address']
        self.address = attributes[:'address']
      end

      if attributes[:'listDate']
        self.list_date = attributes[:'listDate']
      end

      if attributes[:'agent']
        self.agent = attributes[:'agent']
      end

      if attributes[:'modified']
        self.modified = attributes[:'modified']
      end

      if attributes[:'school']
        self.school = attributes[:'school']
      end

      if attributes[:'sales']
        self.sales = attributes[:'sales']
      end

      if attributes[:'photos']
        if (value = attributes[:'photos']).is_a?(Array)
          self.photos = value
        end
      end

      if attributes[:'listPrice']
        self.list_price = attributes[:'listPrice']
      end

      if attributes[:'listingId']
        self.listing_id = attributes[:'listingId']
      end

      if attributes[:'mls']
        self.mls = attributes[:'mls']
      end

      if attributes[:'geo']
        self.geo = attributes[:'geo']
      end

      if attributes[:'tax']
        self.tax = attributes[:'tax']
      end

      if attributes[:'remarks']
        self.remarks = attributes[:'remarks']
      end

      if attributes[:'privateRemarks']
        self.private_remarks = attributes[:'privateRemarks']
      end

      if attributes[:'leaseTerm']
        self.lease_term = attributes[:'leaseTerm']
      end

      if attributes[:'leaseType']
        self.lease_type = attributes[:'leaseType']
      end

    end

  end
end
