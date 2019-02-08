require './lib/bike'
	
	class DockingStation
	  attr_reader :bikes, :capacity
          DEFAULT_CAPACITY = 20
	
	  def initialize(capacity = DEFAULT_CAPACITY)
            @capacity = capacity
	    @bikes = []
	  end
	
	  def release_bike
            if empty?
              raise ArgumentError, "Sorry no bikes left" 
            elsif @bikes.first.working?
              return @bikes.first
            else
              raise ArgumentError, "Sorry no working bikes"
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
            @bikes.size >= DEFAULT_CAPACITY
          end
	
          def empty?
            @bikes.empty?
          end

	  def bike
	    @bike
	  end
          private :full?, :empty?	
	end
