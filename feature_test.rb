require "./lib/docking_station.rb"
require "./lib/bike.rb"

bike = Bike.new
station = DockingStation.new(30)
puts staion: :capacity
30.times {station.dock_bike(bike)}
