require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  it 'creates a bike with a status' do
    Bike.new(false)
  end
   
end
