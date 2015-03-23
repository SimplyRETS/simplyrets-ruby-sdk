class Office
  attr_accessor :contact, :name, :serving_name, :brokerid

  # :internal => :external
  def self.attribute_map
    {
      :contact => :contact,
      :name => :name,
      :serving_name => :servingName,
      :brokerid => :brokerid

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"contact"]
      @contact = attributes["contact"]
    end
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"serving_name"]
      @serving_name = attributes["servingName"]
    end
    if self.class.attribute_map[:"brokerid"]
      @brokerid = attributes["brokerid"]
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
