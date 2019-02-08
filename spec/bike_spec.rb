require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

# As a member of the public,
# So that I reduce the chance of getting a broken bike in future,
# I'd like to report a bike as broken when I return it.

  it 'creates a bike with a status' do
    Bike.new(false)
  end

  it 'records that it is broken   ' do
    bike = Bike.new(false)
    expect(bike.working?).to eq false
  end
   
end
