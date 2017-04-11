# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    bike
  end
end
