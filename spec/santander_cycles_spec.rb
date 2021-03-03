require 'santander_cycles'

describe DockingStation do
  bike = Bike.new

  it { is_expected.to respond_to(:release_bike) }

  it "returns the Bike Class" do
    20.times { subject.receive_bike(bike) }
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
  
  it { is_expected.to respond_to(:receive_bike).with(1).argument}

  it "receives a bike object" do
    expect(subject.receive_bike(bike)).to be_an_instance_of(Bike)
  end

  it "releases a bike object" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  # it "checks space available to receive bike" do
  #   expect { subject.receive_bike(bike) }.to raise_error("No space available")
  # end

  it "raises an error when full" do
    20.times { subject.receive_bike(bike) }
      expect { subject.receive_bike(bike) }.to raise_error("Docking station full")
  end

end

describe Bike do
  let(:bike) {Bike.new}
  
  it { is_expected.to respond_to(:working?)}
  
  it "bike working to be true" do
    expect(bike.working?).to eq(true)
  end
end