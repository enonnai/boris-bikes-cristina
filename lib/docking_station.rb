# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation
  attr_accessor :bike

  def release_bike
    if bike == nil
      raise('Error: no bikes available at this docking station.')
    else
      Bike.new
    end
  end

  def dock(bike)
    self.bike=(bike)
  end
end
