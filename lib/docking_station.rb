# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation
  attr_accessor :bike_stored

  def release_bike
    if bike_stored == nil
      raise('Error: no bikes available at this docking station.')
    else
      Bike.new
    end
  end

  def dock(bike)
    if self.bike_stored == nil
      self.bike_stored=(bike)
    else
      raise('Error: this docking station is occupied.')
    end
  end
end
