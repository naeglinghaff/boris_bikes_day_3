class DockingStation

  attr_reader :bike

  def release_bike
    raise "There are no bikes" unless @bike
    @bike
    # raise "There are no bikes" unless @bike == bike
  end

  def dock_bike(bike)
    @bike = bike
  end







end

#
# test = DockingStation.new
# test.release_bike
