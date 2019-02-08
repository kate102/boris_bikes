require 'docking_station'
	
	
describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'docks something' do
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock(bike)
    expect(docking_station.bikes.include?(bike)).to eq true
  end

  it { is_expected.to respond_to(:bike) }

  it 'will fail to release if docking station empty' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error(ArgumentError, "Sorry no bikes left")
  end

  it 'will fail to dock if docking station full' do
    docking_station = DockingStation.new
    20.times{docking_station.dock}
    expect { docking_station.dock }.to raise_error(ArgumentError, "Sorry docking station full")
  end
       
  it 'Allows a docking station with a capaity' do
    docking_station = DockingStation.new(50)
  end
     
#  it 'Will not release a non working bike' do
#    bike = Bike.new(false)
#    docking_station = DockingStation.new()
#    docking_station.dock(bike)
#    expect{docking_station.release_bike}.to raise_error(ArgumentError, "Sorry no working bikes")
#  end
     
end
