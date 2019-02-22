require 'airplane'

class Airport
  attr_reader :planes

  def initialize
    @planes = []
  end

  def land(airplane)
    @planes << airplane
  end
end
