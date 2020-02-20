class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no bikes" if empty?
    @bikes.pop
    # raise "There are no bikes" unless @bike == bike
  end

  def dock_bike(bike)
    raise "Docking station full" if full?
    @bikes.push(bike)
  end

  private
  def full?
    if @bikes.count >= 20
      return true
    end
  end

  def empty?
    if @bikes.count == 0
      return true
    end
  end

# @bikes = []
# @bikes.length = 20




end

#
# test = DockingStation.new
# test.release_bike
