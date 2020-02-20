

require "./lib/docking_station.rb"
require "./lib/bike.rb"

bike = Bike.new
station = DockingStation.new

20.times { station.dock_bike(bike) }
