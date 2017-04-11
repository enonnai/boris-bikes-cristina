# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    empty? ? raise('Error: no bikes available at this docking station.') : bikes.pop
  end

  def dock(bike)
    full? ? raise('Error: this docking station is occupied.') : bikes << bike
  end

  private

  def full?
    bikes.count >= 20
  end

  def empty?
    bikes.empty?
  end

end
