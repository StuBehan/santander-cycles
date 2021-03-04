require 'dockingstation_class'

describe DockingStation do
  bike = Bike.new

  it { is_expected.to respond_to(:release_bike) }

  it "returns the Bike Class" do
    20.times { subject.receive_bike(bike) }
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
  
  # Challenge 10
  it "releases working bikes" do
    subject.receive_bike(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # Challenge 11
  it { is_expected.to respond_to(:receive_bike).with(1).argument}

  # Challenge 11
  it "receives a bike object" do
    expect(subject.receive_bike(bike)).to be_an_instance_of(Bike)
  end
 
  # Challenge 12
  it "releases a bike object" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end
  
  # Challenge 13
  # this is superceded by the following test
  # it "checks space available to receive bike" do
  #   expect { subject.receive_bike(bike) }.to raise_error("No space available")
  # end

  # Challenge 14
  it "raises an error when full" do
    20.times { subject.receive_bike(bike) }
    expect { subject.receive_bike(bike) }.to raise_error("Docking station full")
  end

  # Challenge 15
  it "returns true if the docking station is full" do
    20.times { subject.receive_bike(bike) }
    expect(subject.full?).to eql(true)
  end

  it "returns true if the docking station is empty" do
    expect(subject.empty?).to eql(true)
  end
end