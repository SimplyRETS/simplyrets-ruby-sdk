class GeographicData
  attr_accessor :county, :lat, :lng, :market_area, :directions

  # :internal => :external
  def self.attribute_map
    {
      :county => :county,
      :lat => :lat,
      :lng => :lng,
      :market_area => :marketArea,
      :directions => :directions

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"county"]
      @county = attributes["county"]
    end
    if self.class.attribute_map[:"lat"]
      @lat = attributes["lat"]
    end
    if self.class.attribute_map[:"lng"]
      @lng = attributes["lng"]
    end
    if self.class.attribute_map[:"market_area"]
      @market_area = attributes["marketArea"]
    end
    if self.class.attribute_map[:"directions"]
      @directions = attributes["directions"]
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
