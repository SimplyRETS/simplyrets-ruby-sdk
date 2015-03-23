class ContactInformation
  attr_accessor :office, :cell, :full

  # :internal => :external
  def self.attribute_map
    {
      :office => :office,
      :cell => :cell,
      :full => :full

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"office"]
      @office = attributes["office"]
    end
    if self.class.attribute_map[:"cell"]
      @cell = attributes["cell"]
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
