class Property
  attr_accessor :roof, :style, :area, :baths_full, :baths_half, :stories, :fireplaces, :heating, :bedrooms, :interior_features, :lot_size, :exterior_features, :subdivision, :type, :year_built

  # :internal => :external
  def self.attribute_map
    {
      :roof => :roof,
      :style => :style,
      :area => :area,
      :baths_full => :bathsFull,
      :baths_half => :bathsHalf,
      :stories => :stories,
      :fireplaces => :fireplaces,
      :heating => :heating,
      :bedrooms => :bedrooms,
      :interior_features => :interiorFeatures,
      :lot_size => :lotSize,
      :exterior_features => :exteriorFeatures,
      :subdivision => :subdivision,
      :type => :type,
      :year_built => :yearBuilt

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"roof"]
      @roof = attributes["roof"]
    end
    if self.class.attribute_map[:"style"]
      @style = attributes["style"]
    end
    if self.class.attribute_map[:"area"]
      @area = attributes["area"]
    end
    if self.class.attribute_map[:"baths_full"]
      @baths_full = attributes["bathsFull"]
    end
    if self.class.attribute_map[:"baths_half"]
      @baths_half = attributes["bathsHalf"]
    end
    if self.class.attribute_map[:"stories"]
      @stories = attributes["stories"]
    end
    if self.class.attribute_map[:"fireplaces"]
      @fireplaces = attributes["fireplaces"]
    end
    if self.class.attribute_map[:"heating"]
      @heating = attributes["heating"]
    end
    if self.class.attribute_map[:"bedrooms"]
      @bedrooms = attributes["bedrooms"]
    end
    if self.class.attribute_map[:"interior_features"]
      @interior_features = attributes["interiorFeatures"]
    end
    if self.class.attribute_map[:"lot_size"]
      @lot_size = attributes["lotSize"]
    end
    if self.class.attribute_map[:"exterior_features"]
      @exterior_features = attributes["exteriorFeatures"]
    end
    if self.class.attribute_map[:"subdivision"]
      @subdivision = attributes["subdivision"]
    end
    if self.class.attribute_map[:"type"]
      @type = attributes["type"]
    end
    if self.class.attribute_map[:"year_built"]
      @year_built = attributes["yearBuilt"]
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
