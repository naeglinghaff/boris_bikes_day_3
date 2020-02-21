class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
    puts capacity
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
    if @bikes.count >= @capacity
      return true
    end
  end

  def empty?
    if @bikes.count == 0
      return true
    end
  end

end
