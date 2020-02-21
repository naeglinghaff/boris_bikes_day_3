require "docking_station"
require "bike"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  context '#initialize'

    it 'accepts a greater capacity than the default when specified by an admin' do
      station = DockingStation.new(30)
      expect { 30.times {station.dock_bike(Bike.new)} }.not_to raise_error
    end

  context '#release_bike'

  it 'releases a bike when commanded' do
    bike = Bike.new
    DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(bike)}
    expect(subject.release_bike).to eq bike
  end

  it 'raises an error if there are no bikes' do
    expect{subject.release_bike}.to raise_error "There are no bikes"
  end

  context '#dock_bike'

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq [bike]
  end

  it 'raises an error if there is no capacity' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect{subject.dock_bike(Bike.new)}.to raise_error "Docking station full"
  end

  it 'checks if there are docked bikes' do
    subject.dock_bike(Bike.new)
    expect(subject.bikes.count).to eq 1
  end

  it { is_expected.to respond_to(:bikes) }

end
