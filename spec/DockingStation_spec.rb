require './lib/DockingStation.rb'
require './lib/Bike.rb'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

#  it 'responds to the method release_bike' do
#    expect(docking_station(release_bike)).to eq nil
# end
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:release_bike) }
end
