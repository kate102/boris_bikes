As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

require './lib/dockingstation'
bike2= Bike.new(status)

dockingstation = Dockingstation.new
bike2= Bike.new(status)

# Test that broken bike isn't woking
bike2 = Bike.new(false)
bike2.working? => Fails

# Dont release broken bikes
dockingstation = Dockingstation.new
dockingstation.dock(Bike.new(false))
dockingstation.release_bike



