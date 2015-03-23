class Listing
  attr_accessor :property, :mls_id, :showing_instructions, :office, :disclaimer, :address, :list_date, :agent, :modified, :school, :photos, :list_price, :listing_id, :mls, :geo, :tax, :remarks

  # :internal => :external
  def self.attribute_map
    {
      :property => :property,
      :mls_id => :mlsId,
      :showing_instructions => :showingInstructions,
      :office => :office,
      :disclaimer => :disclaimer,
      :address => :address,
      :list_date => :listDate,
      :agent => :agent,
      :modified => :modified,
      :school => :school,
      :photos => :photos,
      :list_price => :listPrice,
      :listing_id => :listingId,
      :mls => :mls,
      :geo => :geo,
      :tax => :tax,
      :remarks => :remarks

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"property"]
      @property = attributes["property"]
    end
    if self.class.attribute_map[:"mls_id"]
      @mls_id = attributes["mlsId"]
    end
    if self.class.attribute_map[:"showing_instructions"]
      @showing_instructions = attributes["showingInstructions"]
    end
    if self.class.attribute_map[:"office"]
      @office = attributes["office"]
    end
    if self.class.attribute_map[:"disclaimer"]
      @disclaimer = attributes["disclaimer"]
    end
    if self.class.attribute_map[:"address"]
      @address = attributes["address"]
    end
    if self.class.attribute_map[:"list_date"]
      @list_date = attributes["listDate"]
    end
    if self.class.attribute_map[:"agent"]
      @agent = attributes["agent"]
    end
    if self.class.attribute_map[:"modified"]
      @modified = attributes["modified"]
    end
    if self.class.attribute_map[:"school"]
      @school = attributes["school"]
    end
    if self.class.attribute_map[:"photos"]
      if (value = attributes["photos"]).is_a?(Array)
          @photos = value

      end
    end
    if self.class.attribute_map[:"list_price"]
      @list_price = attributes["listPrice"]
    end
    if self.class.attribute_map[:"listing_id"]
      @listing_id = attributes["listingId"]
    end
    if self.class.attribute_map[:"mls"]
      @mls = attributes["mls"]
    end
    if self.class.attribute_map[:"geo"]
      @geo = attributes["geo"]
    end
    if self.class.attribute_map[:"tax"]
      @tax = attributes["tax"]
    end
    if self.class.attribute_map[:"remarks"]
      @remarks = attributes["remarks"]
    end

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end
