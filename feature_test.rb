require "./lib/docking_station.rb"
require "./lib/bike.rb"

bike = Bike.new
station = DockingStation.new()
station.dock_bike(21)
