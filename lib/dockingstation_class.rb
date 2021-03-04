class DockingStation
  attr_reader :bike 

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if @bikes.length == 0
    @bikes.pop
  end

  def receive_bike(bike)
    raise "Docking station full" if full?
    @bikes << bike
    return @bikes.last
  end
  
  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.length == 0
  end
end