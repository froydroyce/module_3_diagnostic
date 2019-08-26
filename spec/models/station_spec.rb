require 'rails_helper'

describe Station do
  it "exists" do
    attrs = {
      station_name: "Pumps Plus",
      street_address: "2234 Dump st",
      fuel_type_code: "NOS",
      distance: ".0999999",
      access_days_time: "48 hours a day"
    }

    station = Station.new(attrs)

    expect(station).to be_a Station
    expect(station.name).to eq(attrs[:station_name])
    expect(station.address).to eq(attrs[:street_address])
    expect(station.fuel_type).to eq(attrs[:fuel_type_code])
    expect(station.distance).to eq(attrs[:distance])
    expect(station.access_time).to eq(attrs[:access_days_time])
  end
end
