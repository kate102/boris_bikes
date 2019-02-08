require 'docking_station'
	
	
describe DockingStation do
let(:bike) { double :bike } #--------------------------------------------

  it { is_expected.to respond_to :release_bike }

  it 'docks something' do
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
     
# As a maintainer of the system,
# So that I can manage broken bikes and not disappoint users,
# I'd like docking stations not to release broken bikes.

  it 'Will not release a non working bike' do
    # Mocking a broken bike 
    allow(bike).to receive(:working?).and_return(false)
    docking_station = DockingStation.new()
    docking_station.dock(bike)
    expect{docking_station.release_bike}.to raise_error(ArgumentError, "Sorry no working bikes")
  end
     
# in docking_station_spec.rb
it 'releases working bikes' do
  # what if this line fails because of
  # a syntax error in our Bike class?
  # We need a way to remove this test's
  # dependency on Bike.
  subject.dock(bike)
  allow(bike).to receive(:working?).and_return(true)
  bike = subject.release_bike
  expect(bike).to be_working
end

# it 'releases working bikes' do
  # let's substitute our Bike.new
  # for a String.new
  # subject.dock String.new("I'm not a bike!")
  # no error yet: and no problem when
  # we release the 'bike': we just
  # get the string we made
  # bike = subject.release_bike
  # a problem here: strings don't
  # know how to respond_to working?
  # (we'll deal with that in the next
  # challenge: mocking behaviour).
  # expect(bike).to be_working
# end

it 'releases working bikes' do
  # let's substitute our Bike.new
  # for a double
  subject.dock(bike)
  # no error yet: and no problem when
  # we release the 'bike': we just
  allow(bike).to receive(:working?).and_return(true)
  # get the double we made
  bike = subject.release_bike
  # a problem here: this double doesn't
  # know how to respond_to working?
  # (we'll deal with that in the next
  # challenge: mocking behaviour).
  expect(bike).to be_working
end
end
