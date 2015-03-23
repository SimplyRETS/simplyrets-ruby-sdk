class Agent
  attr_accessor :last_name, :contact, :first_name, :id

  # :internal => :external
  def self.attribute_map
    {
      :last_name => :lastName,
      :contact => :contact,
      :first_name => :firstName,
      :id => :id

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"last_name"]
      @last_name = attributes["lastName"]
    end
    if self.class.attribute_map[:"contact"]
      @contact = attributes["contact"]
    end
    if self.class.attribute_map[:"first_name"]
      @first_name = attributes["firstName"]
    end
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
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
