# in lib/docking_sation.rb
require './lib/bike.rb'

class DockingStation

  attr_reader :capacity
  attr_accessor :bikes, :released_bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @available_bikes = []
    @broken_bikes = []
    @released_bikes = []
  end


  def return_bike
    raise('Error: there are no bikes to be returned') if released_bikes.empty?
    if @released_bikes.last.broken?
      @broken_bikes << released_bikes.last
      @available_bikes << released_bikes.last
      @released_bikes.pop
    else
      @bikes << released_bikes.last
      @available_bikes << released_bikes.last
      @released_bikes.pop
    end
  end

  def release_bike
    if !@available_bikes.empty?
      @bikes.pop
      released_bikes << @available_bikes.pop
    elsif @available_bikes.empty? || !@broken_bikes.empty?
      raise('Error: no bikes available at this docking station.')
    end
  end

  def dock(bike)
    raise('Error: this docking station is occupied.') if full?
    @bikes << bike
    if bike.broken? == true
      @broken_bikes << bike
    else
      @available_bikes << bike
    end
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    @available_bikes.empty?
  end

end
