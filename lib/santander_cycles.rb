class DockingStation
  attr_reader :bike 

  def initialize
    @bike = Bike.new
  end

  def release_bike
    raise "No bikes available" unless @bike
    @bike
  end

  def receive_bike(bike)
    raise "No space available" if @bike
    @bike = bike
    return @bike
  end

end

class Bike 
  def working?
    return true
  end
end

docking_station = DockingStation.new