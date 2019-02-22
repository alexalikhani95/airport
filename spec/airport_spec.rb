require 'airport'
require 'airplane'

describe Airport do
  it 'is able to land an airplane' do
    gatwick = Airport.new
    airbus = Airplane.new
    expect(gatwick.land(airbus)).to eq [airbus]
  end

  it 'is able to land multiple airplanes' do
    gatwick = Airport.new
    airbus = Airplane.new
    concorde = Airplane.new
    expect(gatwick.land(airbus)).to eq [airbus]
    expect(gatwick.land(concorde)).to eq [airbus, concorde]
  end

  it 'is able to takeoff an airplane' do
    gatwick = Airport.new
    airbus = Airplane.new
    concorde = Airplane.new
    gatwick.land(airbus)
    gatwick.land(concorde)
    expect(gatwick.takeoff(airbus)).to eq airbus
  end

  it 'makes sure that the taken off airplane is no longer in the airport' do
    gatwick = Airport.new
    airbus = Airplane.new
    concorde = Airplane.new
    gatwick.land(airbus)
    gatwick.land(concorde)
    gatwick.takeoff(concorde)
    expect(gatwick.planes).to eq [airbus]
  end
end
