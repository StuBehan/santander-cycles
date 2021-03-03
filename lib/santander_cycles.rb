class DockingStation
  attr_reader :bike 

  def initialize
    @bike = Bike.new
  end

  def release_bike
    return Bike.new
  end

  def receive_bike(bike)
    return bike
  end

end

class Bike 
  def working?
    return true
  end
end

docking_station = DockingStation.new