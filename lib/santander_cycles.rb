class DockingStation
  def release_bike
    return Bike.new
  end
end

class Bike 
  def working?
    return true
  end
end

docking_station = DockingStation.new