require './lib/bike'
	
	class DockingStation
	  attr_reader :bikes
	
	  def initialize
	    @bikes = []
	  end
	
	  def release_bike(bike = Bike.new)
            raise ArgumentError, "Sorry no bikes left" if @bikes.empty?
            return @bikes.bike
	  end
	
	  def dock(bike = Bike.new)
            raise ArgumentError, "Sorry docking station full" if @bikes.size == 1
            @bikes << bike
	  end
	
	  def bike
	    @bike
	  end
	
	end
