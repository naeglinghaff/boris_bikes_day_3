require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  # it 'has a capacity of 20' do
  #   expect (DockingStation.initialize).to eq []
  # end

  describe '#release_bike'

    it 'releases a bike' do
      bike = Bike.new
      20.times {subject.dock_bike(bike)}
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there are no bikes' do
      expect{subject.release_bike}.to raise_error "There are no bikes"
    end

  # it { is_expected.to respond_to(:dock_bike).with(1).argument }
  describe '#dock_bike'

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq [bike]
    end

    it 'raises an error if there is no capacity' do
      bike = Bike.new
      20.times { subject.dock_bike(bike) }
      expect{subject.dock_bike(bike)}.to raise_error "Docking station full"
    end

  it 'checks if there are docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes.count).to eq 1
  end


  it { is_expected.to respond_to(:bikes) }



end
