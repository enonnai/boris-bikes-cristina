# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation

  attr_reader :capacity
  attr_accessor :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    empty? || bikes[0].broken? ? raise('Error: no bikes available at this docking station.') : bikes.pop
  end

  def dock(bike)
    full? ? raise('Error: this docking station is occupied.') : bikes << bike
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
