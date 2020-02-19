require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike'
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there are no bikes' do
      expect{subject.release_bike}.to raise_error "There are no bikes"
    end

  # it { is_expected.to respond_to(:dock_bike).with(1).argument }
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike

  end

  it 'checks if there is a docked bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end


  it { is_expected.to respond_to(:bike) }

end
