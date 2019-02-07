require './lib/bike'
	
	class DockingStation
	  attr_reader :bikes
          DEFAULT_CAPACITY = 20
	
	  def initialize
	    @bikes = []
	  end
	
	  def release_bike(bike = Bike.new)
            if !empty?
              return @bikes.bike
            else
              raise ArgumentError, "Sorry no bikes left" 
            end
	  end
	
	  def dock(bike = Bike.new)
            if !full?
              @bikes << bike
            else
              raise ArgumentError, "Sorry docking station full" if @bikes.size == CAPACITY
            end
	  end
    
          def full?
            (@bikes.size >= CAPACITY)?true:false
          end
	
          def empty?
            (@bikes.empty?)?true:false
          end

	  def bike
	    @bike
	  end
          private :full?, :empty?	
	end
