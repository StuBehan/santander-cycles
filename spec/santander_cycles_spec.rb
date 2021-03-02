require 'santander_cycles'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it "returns the Bike Class" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end
end

describe Bike do
  it { is_expected.to respond_to(:working?)}
end