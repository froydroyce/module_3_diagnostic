class Station
  def initialize(attrs = {})
    @name = attrs[:name]
    @address = attrs[:address]
    @fuel_types = attrs[:fuel_types]
    @distance = attrs[:distance]
    @access_time = attrs[:access_time]
  end
end
