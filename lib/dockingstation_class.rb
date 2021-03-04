class DockingStation
  attr_reader :bike 
  DEFAULT_CAPACITY = 20 # Challenge 16
  
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
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.length == 0
  end
end