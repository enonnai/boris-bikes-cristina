# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if bikes.empty?
      raise('Error: no bikes available at this docking station.')
    else
      bikes.pop
    end
  end

  def dock(bike)
    if bikes.count < 20
      bikes << bike
    else
      raise('Error: this docking station is occupied.')
    end
  end

end
