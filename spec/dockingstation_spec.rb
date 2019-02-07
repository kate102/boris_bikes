require 'docking_station'
	
	
	describe DockingStation do
	
	  it { is_expected.to respond_to :release_bike }
	  # it { is_expected.to respond_to(:dock).with(1).argument }
	  it 'docks something' do
	    bike = Bike.new
	    expect(subject.dock(bike)).to eq bike
	  end
	  it { is_expected.to respond_to(:bike) }
	end
