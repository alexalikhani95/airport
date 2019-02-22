require 'airport'
require 'airplane'

describe Airport do
  it 'is able to land an airplane' do
    gatwick = Airport.new
    airbus = Airplane.new
    expect(gatwick.land(airbus)).to eq [airbus]
  end
end
