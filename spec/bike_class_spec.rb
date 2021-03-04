require 'bike_class'

describe Bike do
  let(:bike) {Bike.new}
  
  it { is_expected.to respond_to(:working?)}
  
  it "bike working to be true" do
    expect(bike.working?).to eq(true)
  end
end