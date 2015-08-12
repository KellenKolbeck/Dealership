require('rspec')
require('vehicle')

describe('Vehicle') do
  describe('#make') do
    it('returns the make of the vehicle') do
      new_vehicle = Vechile.new('Toyota', 'Prius', '2011')
      expect(new_vehicle.make).to(eq('Toyota'))
    end
  end
end
