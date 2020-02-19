require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
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
