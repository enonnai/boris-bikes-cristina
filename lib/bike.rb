class Bike
  def initialize
    @broken_bikes = false
  end

  def working?
    true
  end

  def report_broken
    @broken_bikes = true
  end

  def broken?
    @broken_bikes
  end

end
