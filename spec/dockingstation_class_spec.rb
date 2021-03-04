require 'dockingstation_class'

describe DockingStation do
  bike = Bike.new

  it { is_expected.to respond_to(:release_bike) }

  # Challenge 11
  it { is_expected.to respond_to(:receive_bike).with(1).argument}

  # Challenge 17
  it "updates the default capacity when passing an argument to DockingStation.new" do
    expect(subject.capacity).to eql(DockingStation::DEFAULT_CAPACITY)
  end

  describe 'release_bike' do
    it "returns the Bike Class" do
      DockingStation::DEFAULT_CAPACITY.times { subject.receive_bike(bike) }
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end
  
    # Challenge 10
    it "releases working bikes" do
      subject.receive_bike(bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    # Challenge 12
    it "releases a bike object" do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe 'receive_bike' do
    # Challenge 11
    it "receives a bike object" do
      expect(subject.receive_bike(bike)).to be_an_instance_of(Bike)
    end

    # Challenge 13
    # Challenge 14
    it "raises an error when full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.receive_bike(bike) }
      expect { subject.receive_bike(bike) }.to raise_error("Docking station full")
    end
  end

  describe 'full?' do
    # Challenge 15
    it "returns true if the docking station is full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.receive_bike(bike) }
      expect(subject.full?).to eql(true)
    end
  end
  
  describe 'empty?' do
    it "returns true if the docking station is empty" do
      expect(subject.empty?).to eql(true)
    end    
  end
end