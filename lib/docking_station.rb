require './lib/bike'
	
	class DockingStation
	  attr_reader :bike
	
	  def initialize
	    # @bikes = []
	  end
	
	  def release_bike
	    # bikes.last.delete
	    Bike.new
	    # remove bike from array bikes.delete_if ....
	  end
	
	  def dock(bike)
	    @bike = bike
	  #   bikes.push(bike)
	  end
	
	  def bike
	    @bike
	  end
	
	end
