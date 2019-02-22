require 'airplane'

class Airport
  attr_reader :planes

  def initialize
    @planes = []
  end

  def land(airplane)
    @planes << airplane
  end

  def takeoff(airplane)
    @planes.delete(airplane)
end
end
