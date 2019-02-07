require './lib/bike'
	
	class DockingStation
	  attr_reader :bikes
	  # attr_reader :capacity
          DEFAULT_CAPACITY = 20
	
	  def initialize(capacity = DEFAULT_CAPACITY)
            @capacity = capacity
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
              raise ArgumentError, "Sorry docking station full" if @bikes.size == DEFAULT_CAPACITY
            end
	  end
    
          def full?
            (@bikes.size >= DEFAULT_CAPACITY)?true:false
          end
	
          def empty?
            (@bikes.empty?)?true:false
          end

	  def bike
	    @bike
	  end
          private :full?, :empty?	
	end
