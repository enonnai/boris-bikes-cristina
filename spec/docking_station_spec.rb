require './lib/docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'gets a bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_an_instance_of Bike
  end

  it 'expects the bike to be working' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_working
  end

  it 'docks a bike when passed dock(bike)' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'has an attribute set to an instance of Bike post docking' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns bike when asked for @bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises an exception when user tries to release a bike from an empty docking station' do
    expect { subject.release_bike}.to raise_error 'Error: no bikes available at this docking station.'
  end

  it 'raises an exception when a user tries to dock a bike at a full docking station' do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new)}.to raise_error 'Error: this docking station is occupied.'
  end

end
