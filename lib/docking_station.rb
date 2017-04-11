# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation
  attr_accessor :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    self.bike=(bike)
  end
end
