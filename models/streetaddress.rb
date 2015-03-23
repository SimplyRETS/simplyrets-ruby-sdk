class StreetAddress
  attr_accessor :country, :postal_code, :street_name, :city, :street_number, :full

  # :internal => :external
  def self.attribute_map
    {
      :country => :country,
      :postal_code => :postalCode,
      :street_name => :streetName,
      :city => :city,
      :street_number => :streetNumber,
      :full => :full

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"country"]
      @country = attributes["country"]
    end
    if self.class.attribute_map[:"postal_code"]
      @postal_code = attributes["postalCode"]
    end
    if self.class.attribute_map[:"street_name"]
      @street_name = attributes["streetName"]
    end
    if self.class.attribute_map[:"city"]
      @city = attributes["city"]
    end
    if self.class.attribute_map[:"street_number"]
      @street_number = attributes["streetNumber"]
    end
    if self.class.attribute_map[:"full"]
      @full = attributes["full"]
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
