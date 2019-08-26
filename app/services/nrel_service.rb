class NrelService
  def nearest_stations(zip)
    get_json("api/alt-fuel-stations/v1/nearest.json?limit=10&api_key=#{ENV['NREL_API']}&fuel_type=LPG, ELEC&location=#{zip}&radius=6.0")
  end

  private

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
