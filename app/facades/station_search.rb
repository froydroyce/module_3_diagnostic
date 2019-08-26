class StationSearch
  def initialize(zip)
    @zip = zip
  end

  def results
    stations(@zip).map do |station|
      Station.new(station)
    end
  end

  private

  def stations(zip)
    @_results ||= service.nearest_stations(zip)[:fuel_stations]
  end

  def service
    @_service ||= NrelService.new
  end
end
