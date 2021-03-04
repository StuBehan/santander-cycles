class DockingStation
  DEFAULT_CAPACITY = 20 # Challenge 16

  attr_accessor :bike, :capacity # Challenge 17

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
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
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.length == 0
  end
end