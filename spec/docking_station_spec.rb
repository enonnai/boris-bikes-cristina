require './lib/docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'gets a bike' do
    expect(subject.release_bike).to be_an_instance_of Bike
  end

  it 'expects the bike to be working' do
    expect(subject.release_bike).to be_working
  end

  it 'docks a bike when passed dock(bike)' do
    expect(subject).to respond_to(:dock).with(1).argument
  end


end
