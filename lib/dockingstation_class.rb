class DockingStation
  DEFAULT_CAPACITY = 20 # Challenge 16

  attr_accessor :capacity # Challenge 17

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def receive_bike(bike)
    raise "Docking station full" if full?
    @bikes << bike
    return @bikes.last
  end
  
  attr_reader :bikes

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.length == 0
  end
end