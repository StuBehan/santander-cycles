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
    raise "Docking station full" if @bikes.length == 20
    @bikes << bike
    return @bikes.last
  end

end

class Bike 
  def working?
    return true
  end
end

docking_station = DockingStation.new