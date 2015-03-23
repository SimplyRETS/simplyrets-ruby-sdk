class MlsInformation
  attr_accessor :status, :area, :days_on_market

  # :internal => :external
  def self.attribute_map
    {
      :status => :status,
      :area => :area,
      :days_on_market => :daysOnMarket

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"status"]
      @status = attributes["status"]
    end
    if self.class.attribute_map[:"area"]
      @area = attributes["area"]
    end
    if self.class.attribute_map[:"days_on_market"]
      @days_on_market = attributes["daysOnMarket"]
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
